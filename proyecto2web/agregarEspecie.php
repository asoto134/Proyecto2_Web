<?php
include ("settings.php");
include ("common.php");
//error_reporting(0);

if (isset($_POST['boton_agregar_especie']))
{
    $porden = $_POST['orden'];
    $pnombrecientifico = $_POST['nombrecientifico'];
    $psubOrden = $_POST['subOrden'];
    $pnombrecomun = $_POST['nombrecomun'];
    $pfamilia = $_POST['familia'];
    $pnombreingles = $_POST['nombreingles'];
    $pgenero = $_POST['genero'];
    $ppico = $_POST['pico'];
    $pespecie = $_POST['especie'];
    $pcantHuevos = $_POST['cantHuevos'];
    
    $conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);
    @mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");
    
    if($porden != 0 && $psubOrden != 0 && $pfamilia != 0 && $pgenero != 0 && $pespecie != "" && $ppico != 0 && 
       $pcantHuevos != 0 && $pnombrecientifico != "" && $pnombrecomun != "" && $pnombreingles != "")
    {
        $consultaSql = "CALL addEspecie ($pgenero,'$pespecie','$pnombrecomun','$pnombreingles','$pnombrecientifico',$pcantHuevos);";
        mysql_query($consultaSql);
        echo "<script>alert(\"Se agrego la nueva especie correctamente. \");</script>";
        echo "<script>setTimeout(location.href='index2.php', 5000);</script>";
    }
    else
    {
        echo "<script>alert(\"Debe llenar todos los datos. Intentelo de nuevo\");</script>";
        echo "<script>setTimeout(location.href='index2.php', 5000);</script>";
    }
    mysql_close($conexionConBaseDeDatos);
    
}
