<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/bitacora

*/
include('../modelo/bitacora.php');

$id_usuario=$_GET['id_usuario']; 
$id_ubicacion=$_GET['id_ubicacion'];
$id_estado=$_GET['id_estado']; 
$fecha=$_GET['fecha'];

echo bitacora($id_usuario, $id_ubicacion, $id_estado, $fecha);
