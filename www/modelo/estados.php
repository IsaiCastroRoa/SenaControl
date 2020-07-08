<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/estados

*/

    /*
        * Esta función es para agregar estados en los que puede encontrar un usuario
    * @param   Texto   estados en los que puede estar el usuario
    * @return   número  1 para éxito, 0 para error 
    */

    function agregar_estados($estado){
        $salida='NO';

        $conexion=mysqli_connect('localhost', 'root', '', 'control');

        $sql="INSERT INTO estados_usuarios( estado ) VALUES ('$estado'); ";
        $conexion->query($sql);

        if(mysqli_affected_rows($conexion)){
            $salida='SI'; 
        }
        return $salida;

    }
