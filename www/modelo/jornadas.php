<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/jornadas

*/
/*
* Esta función es para agregar estados en los que puede encontrar un usuario
    * @param   Texto   Jornadas de los cursos
    * @return  número  1 para éxito, 0 para error 
    */

    function agregar_jornadas($jornada_curso){
        $salida='NO';

        $conexion=mysqli_connect('localhost', 'root', '', 'control');

        $sql="INSERT INTO jornadas_cursos(jornada_curso ) ";
        $sql.="VALUES ('$jornada_curso'); ";
        $conexion->query($sql);

        if(mysqli_affected_rows($conexion)){
            $salida='SI'; 
        }

        return $salida;
    }
