<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/roles

*/
    include('../modelo/roles.php');

    $rol=$_GET['rol'];

    echo agregar_jornadas($rol);