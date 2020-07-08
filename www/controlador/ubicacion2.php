<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/ubicacion

*/
 include('../modelo/ubicacion.php');

 $ubicacion=$_GET['ubicacion']; 
 $descripcion=$_GET['descripcion']; 
 $id_sede=$_GET['id_sede'];
 echo agregar_ubicacion($ubicacion, $descripcion, $id_sede);
