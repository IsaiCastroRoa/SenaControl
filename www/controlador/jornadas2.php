<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/jornadas

*/
include('../modelo/jornadas.php');

$jornada_curso=$_GET['jornada_curso'];

echo agregar_jornadas($jornada_curso);