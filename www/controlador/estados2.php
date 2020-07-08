<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/estados

*/
    include('../modelo/estados.php');

    $estado=$_GET['estado'];

    echo agregar_estados($estado);
