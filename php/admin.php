<?php

include_once "conexion.php";
 
$conexion = Conexion::getInstance();
$var = $conexion->get_data("SELECT * FROM usuarios");

var_dump($var);

?>