<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/log_clientes

*/
    include('../modelo/log_cliente.php');

    $id_cliente=$_GET['id_cliente']; 
    $fecha=$_GET['fecha']; 
    $novedad=$_GET['novedad'];

    echo agregar_acciones_cliente($id_cliente, $fecha, $novedad);