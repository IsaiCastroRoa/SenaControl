<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/usuarios

*/
/*
    * Esta función es para agregar usuarios a la base de datos
    * @param    Texto   Nombre del usuario
    * @param    Número  id del tipo de documento del usuario
    * @param    Número  id del rol del usuario
    * @param    Texto   Documento del usuario
    * @param    Número  id del estado del usuario
    * @param    Número  id del curso del usuario
    * @return   número  1 para éxito, 0 para error 
    */
  


    function agregar_usuario($nombre, $id_tipo_documento, $documento, $id_rol, $id_estado, $id_curso){
        $salida='NO';
        
        $conexion=mysqli_connect('localhost', 'root', '', 'control');
        
        $sql="INSERT INTO `usuarios`(`nombre`, `id_tipo_documento`, `documento`, `id_rol`, `id_estado`, `id_curso`) ";
        $sql .="VALUES ('$nombre', '$id_tipo_documento', '$documento', '$id_rol', '$id_estado', '$id_curso');";
        $conexion->query($sql);

        if (mysqli_affected_rows($conexion)>0)
        { 
            $salida='SI';
        }

        return $salida;
    }


