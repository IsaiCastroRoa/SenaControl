<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/log_cliente

*/

 /*
    * Esta función es para guardar todos los movimientos y acciones que hagan los clientes.
    * @param    número  id del cliente que ingresó
    * @param    Fecha   fecha en la que ingresó
    * @param    Texto   La acción que realizó
    * @return   número  1 para éxito, 0 para error 
    */
  
    function agregar_acciones_cliente($id_cliente, $fecha, $novedad){
        $salida='NO';

        $conexion=mysqli_connect('localhost', 'root', '', 'control');
        $sql="INSERT INTO log_clientes(id_cliente, fecha, novedad) ";
        $sql.=" VALUES('$id_cliente','$fecha','$novedad');";
        $conexion->query($sql);

        if(mysqli_affected_rows($conexion)){
            $salida='SI';
        }

        return $salida;
    }

