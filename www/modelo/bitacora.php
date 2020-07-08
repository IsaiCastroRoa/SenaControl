<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/bitacora

*/
/*
    * Esta función es para añadir todos los registros de las personas que entran o salen del SENA
    * @param    Número  id del usuario
    * @param    Número  id de la ubicación a la que se dirige el usuario
    * @param    Número  id del estado del usuario
    * @param    Fecha   Fecha en la que se hizo el registro
    * @return   número  1 para éxito, 0 para error 
    */
  


    function bitacora($id_usuario, $id_ubicacion, $id_estado, $fecha){
        $salida='NO';
        
        $conexion=mysqli_connect('localhost', 'root', '', 'control');
        
        $sql="INSERT INTO bitacora_registro(id_usuario, id_ubicacion, id_estado_usuario, fecha) ";
        $sql .=" VALUES('$id_usuario', '$id_ubicacion', '$id_estado', '$fecha');";
        $conexion->query($sql);

        if (mysqli_affected_rows($conexion)>0)
        { 
            $salida='SI';
        }

        return $salida;
    }


