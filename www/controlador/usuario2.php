<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/usuarios

*/
    include("../modelo/usuario.php");

    $nombre=$_GET['nombre']; 
    $id_tipo_documento=$_GET['id_tipo_documento']; 
    $documento=$_GET['documento']; 
    $id_rol=$_GET['id_rol']; 
    $id_estado=$_GET['id_estado']; 
    $id_curso=$_GET['id_curso'];

   echo  agregar_usuario($nombre, $id_tipo_documento, $documento, $id_rol, $id_estado, $id_curso);