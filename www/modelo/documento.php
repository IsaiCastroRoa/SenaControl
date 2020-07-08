<?php
/*
    * Autor: Isai Castro
    * Seccion: Modelo/documento

*/
    /*
    * Esta función guarda los tipos de documentos
    * @param    número  id del tipo de documento
    * @param    Texto   el tipo de documento
    * @return   número  1 para éxito, 0 para error 
    */
  

    function tipos_de_documento($tipo_documento)
    {
        $salida = '¡NO se guardó!';

        $conexion= mysqli_connect('localhost','root','', 'control');
        $sql = "INSERT INTO tipos_documentos(tipo_documento) ";
        $sql .= " VALUES('$tipo_documento'); ";
        $conexion->query($sql);

        if (mysqli_affected_rows($conexion)>0)
        {
            $salida='¡SI se guardó!';
        }

        return $salida;
    }


?>