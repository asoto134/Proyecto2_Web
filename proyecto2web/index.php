<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php

            include ("settings.php");
            
            echo "Hola a todos este va a ser el servidor donde vamos a alojar el proyecto de bases de datos";
            echo '<br/>';

            $conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);

            @mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");

            $consultaSql = "SELECT * FROM Clase;";

            $resultadoConsulta = mysql_query($consultaSql);
            
            while ($row = mysql_fetch_array($resultadoConsulta))
            {
                echo 'Consulta de prueba, solo ara probar conexion con la base de datos';
                echo '<br/>';
                echo $row["Clase"];
            }            
            mysql_close($conexionConBaseDeDatos);        
        
        ?>
    </body>
</html>
