<?php

require_once 'constants.php';

function connect(){
    try{
        $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
        $db = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME,DB_USER,DB_PASSWORD, $pdo_options);

    }
    catch(Exception $e){
        die('Error: '. $e->getMessage());
    }

    return $db;
}
