<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "fseletro";

    //Criando conexão.
    $conn = mysqli_connect($servername, $username, $password, $database);

    // Verificando a Conexão.
    if(!$conn){
        die("A conexão ao DB falhou: " . mysqli_connect_error());
    }
       
?>