<?php

    $host = 'biblioteka_db';
    $username = 'root';
    $password = '';
    $dbname = 'biblioteka';

    $conn = new mysqli($host, $username, $password, $dbname);

    if ($conn->connect_error) {
    die("Błąd połączenia: " . $conn->connect_error);
    }
    
?>