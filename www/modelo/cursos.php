<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/curso

*/

    /*
    * Esta función es para agregar los cursos a la base de datos
    * @param    Número  Ficha identificadora del curso
    * @param    Texto   Nombre del curso
    * @param    Número  id del nivel del curso
    * @param    Número  id de la jornada del curso
    * @return   número  1 para éxito, 0 para error 
    */
  
    function agregar_curso($numero_curso, $curso, $id_nivel_curso, $id_jornada_curso){

        $salida='NO';

        $conexion=mysqli_connect('localhost', 'root', '', 'control');

        $sql="INSERT INTO cursos(numero_curso, curso, id_nivel_curso, id_jornada_curso) ";
        $sql.=" VALUES('$numero_curso', '$curso', '$id_nivel_curso', '$id_jornada_curso');";
        $conexion->query($sql);

        if(mysqli_affected_rows($conexion)){
            $salida='SI ';
        }

        return $salida;
    }