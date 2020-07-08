<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/ubicacioes

*/
/*
* Esta función es para agregar ubicaciones a la base de datos
    * @param    Texto   Nombre de la ubicación
    * @param    Texto   Descripción de donde esta la ubicación
    * @param    Número  id de la sede
    * @return   número  1 para éxito, 0 para error 
*/

    function agregar_ubicacion($ubicacion, $descripcion, $id_sede){
        $salida='NO';

        $conexion=mysqli_connect('localhost', 'root', '', 'control');

        $sql="INSERT INTO ubicaciones(ubicacion, descripcion, id_sede) " ;
        $sql.=" VALUES('$ubicacion','$descripcion', '$id_sede');";
        $conexion->query($sql);

        if(mysqli_affected_rows($conexion)>0){
            $salida='SI';
        }

        return $salida;
    }



?>