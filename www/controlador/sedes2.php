<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/sedes

*/

include('../modelo/sedes.php');
$sede=$_GET['sede']; 
$direccion=$_GET['direccion']; 
$telefono=$_GET['telefono'];

echo agregar_sedes($sede, $direccion, $telefono);