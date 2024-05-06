<?php

    $host= 'localhost';
    $user = 'root';
    $pass = '';
    $db = 'online_apartment_sales';

    $conn = mysqli_connect($host, $user, $pass, $db);

    if(mysqli_connect_error()){
        echo "Database connection failed. ".mysqli_connect_error();
    }