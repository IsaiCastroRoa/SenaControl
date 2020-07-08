<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/cliente

*/
    /*
    * Esta función es para agregar clientes a la base de datos

    * @param    Texto   Nombre del usuario
    * @param    Número  id del tipo de documento del usuario
    * @param    Texto   Documento del usuario
    * @param    Texto   Correo electrónico del cliente
    * @param  Password  Contraseña deñ cliente
    * @param    Número  id del rol del cliente
    * @param    Texto   Teléfono del cliente
    * @return   número  1 para éxito, 0 para error 
    */


    function agregar_cliente($nombre, $id_tipo_documento, $documento, $correo, $contraseña, $id_rol, $telefono){
        $salida='NO';

        $conexion=mysqli_connect('localhost', 'root', '', 'control');

        $sql="INSERT INTO clientes(nombre, id_tipo_documento, documento, correo, contraseña, id_rol, telefono) ";
        $sql.=" VALUES('$nombre', '$id_tipo_documento', '$documento', '$correo', '$contraseña', '$id_rol', '$telefono');";
        $conexion->query($sql);

        if (mysqli_affected_rows($conexion)>0){
            $salida='SI';
        }

        return $salida;

    }