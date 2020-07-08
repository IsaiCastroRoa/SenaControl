<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/clientes

*/

include("../modelo/cliente.php");

$nombre=$_GET['nombre']; 
$id_tipo_documento=$_GET['id_tipo_documento']; 
$documento=$_GET['documento'];
$correo=$_GET['correo']; 
$contraseña=$_GET['contraseña']; 
$id_rol=$_GET['id_rol'];
$telefono=$_GET['documento'];

echo  agregar_cliente($nombre, $id_tipo_documento, $documento, $correo, $contraseña, $id_rol, $telefono);