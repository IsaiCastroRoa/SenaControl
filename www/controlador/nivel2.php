<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/niveles

*/
include('../modelo/nivel.php');

$nivel=$_GET['nivel'];

echo agregar_niveles($nivel);