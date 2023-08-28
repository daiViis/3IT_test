<?php

    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "test_3it";

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
      die("Připojení k databázi selhalo: " . $conn->connect_error);
    }
    echo "Pripojeno k databázi úspěšně";

?>