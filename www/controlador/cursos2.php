<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/cursos

*/
    include('../modelo/cursos.php');

    $numero_curso=$_GET['numero_curso'];
    $curso=$_GET['curso'];
    $id_nivel_curso=$_GET['id_nivel_curso'];
    $id_jornada_curso=$_GET['id_jornada_curso'];
    
   echo agregar_curso($numero_curso, $curso, $id_nivel_curso, $id_jornada_curso);
?>