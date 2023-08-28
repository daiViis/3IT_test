<?php 

    class File {
        
        //nastavení private vlastností třídy
        
        private $fileName = null;
        private $result = null;
        private $itemsPerLine = null;
        
        //konstruktor třídy
        
        public function __construct($fileName, $itemsPerLine) {
            $this->setFileName($fileName);
            $this->setItemsPerLine($itemsPerLine);
        }
        
        //čtení souboru, výsledek je uložen do vlastnosti Result, dále se pracuje s touto vlastnosti
        
        public function readFile() {
            $ret = [];
            
            if (($handle = fopen($this->getFileName(), "r")) != false) {
                
                while (($data = fgetcsv($handle, 1000, ",")) != false) {
                    
                    $num = count($data);
                    
                    for ($i = 0; $i < $num; $i++) {
                        array_push($ret, $data[$i]);
                    }
                    
                }
                
                fclose($handle);
                
            }
            
            $this->result = $ret;
        }
        
        //Výsledek čtení, který musí být uložen ve vlastnosti Result je převeden do čitelnné tabulky
        
        public function printFile($heading) {
            
            echo "<table><tr>";
            
            for ($i = 0; $i < count($heading); $i++) {
                echo "<th>".$heading[$i]."</th>";
            }
            
            echo '</tr><tr class="not_active" id="tr_table_data_0" onclick="highlighted_change(this);">';
            
            $count = 1;
            if ($this->result != null) {
                for ($i = 0; $i < count($this->result); $i++) {
                    
                    echo "<td>" . $this->result[$i] . "</td>";
                    
                    if ($count == $this->getItemsPerLine()) {
                        $count = 0;
                        echo '</tr><tr class="not_active" id="tr_table_data_'.($i + 1).'" onclick="highlighted_change(this);">';
                    }
                    $count++;
                }
            }
            
            echo "</table>";
        }
        
        //Výsledek čtení, který musí být uložen ve vlastnosti Result je převeden do databáze
        
        public function fileToDatabase($conn) {
            $count = 1;
            $lineData = [];
            if ($this->result != null) {
                for ($i = 0; $i < count($this->result); $i++) {
                    
                    array_push($lineData, $this->result[$i]);
                    
                    if ($count == $this->getItemsPerLine()) {
                        $count = 0;
                        $sql = "INSERT INTO lidi (id, jmeno, prijmeni, registrace) VALUES ('".$lineData[0]."', '".$lineData[1]."', '".$lineData[2]."', '".$lineData[3]."')";
                        $lineData = [];
                        
                        try {
                            $conn->query($sql);
                            echo "<br/>Záznam byl přidán";
                        } catch (Exception $e) {
                            echo "<br/>Databáze nejspíš už obsahuje stejný záznam, ten se tak nepovedlo vložit.";
                        }
                    }
                    $count++;
                }
            }
        }
        
        //Nastavování a získávání private vlastností třídy
        
        public function getFileName() {
            if ($this->fileName != null) return $this->fileName;
        }
        
        public function setFileName($fileName) {
            $this->fileName = $fileName;
        }
        
        public function getItemsPerLine() {
            if ($this->fileName != null) return $this->itemsPerLine;
        }
        
        public function setItemsPerLine($itemsPerLine) {
            $this->itemsPerLine = $itemsPerLine;
        }
    }

?>