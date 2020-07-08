<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/sedes

*/

    /*
        * Esta función es para agregar las sedes a las que asisten usuarios y clientes.
    * @param   Texto   Nombre de la sede.
    * @param   Texto   Dirección de la sede.
    * @param   Texto   Teléfono de la sede.
    * @return   número  1 para éxito, 0 para error 
    */

    function agregar_sedes($sede, $direccion, $telefono){
        $salida='NO';

        $conexion=mysqli_connect('localhost', 'root', '', 'control');

        $sql="INSERT INTO sedes( sede, direccion, telefono ) ";
        $sql.="VALUES ('$sede', '$direccion', '$telefono'); ";
        $conexion->query($sql);

        if(mysqli_affected_rows($conexion)){
            $salida='SI'; 
        }
        return $salida;

    }
