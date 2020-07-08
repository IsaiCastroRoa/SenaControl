<?php
/*
    * Autor: Isai Castro
    * Seccion: Controlador/documentos

*/
    include("../modelo/documento.php");

    
    $tipo_documento=$_GET['tipo_documento'];
   

        echo  tipos_de_documento($tipo_documento);
    