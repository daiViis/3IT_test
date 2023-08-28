<?php

    //připojení k databázi

    include("Classes/Database.php");

?>

<!DOCTYPE html>
<html>
<head>
    <title>Čtení souborů</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Styles/main.css" />
</head>
<body>

<h1>Záznam csv.csv</h1>

        <?php 

            //zahrnuji funkce a vlastnosti třídy File

            include ("Classes/File.php");

            //načítám soubor csv.csv přes konstruktor třídy File a udávám kolik je na jednom řádku informací

            $csv = new File("Files/csv.csv", 4);

            //čtu soubor

            echo $csv->readFile();

            //výsledek čtení převádím do srozumitelné tabulky

            echo $csv->printFile(["ID", "Jméno", "Příjmení", "Datum Registrace"]);

            echo "<h1>CSV soubor do databáze</h1>";

            //výsledek čtení také převádím do databáze

            $csv->fileToDatabase($conn);

        ?>

        <p>David Cit</p>
    
    </body>
</html>