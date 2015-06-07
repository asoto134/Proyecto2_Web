<?php
include ("settings.php");
include ("common.php");
//error_reporting(0);

if (isset($_POST['boton_cambiar_contrasenia']))
{
    
    $nuevoPass = $_POST['nuevoPassword'];
    $nuevoPass2 = $_POST['confirNuevoPassword'];
    $passAnterior = $_POST['passwordAnterior'];////0
    
    $conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);
    @mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");

    if($nuevoPass != $nuevoPass2)
    {
        echo "<script>alert(\"La confirmacion de la contraseña no es correcta. Intentelo de nuevo.\");</script>";
        echo "<script>setTimeout(location.href='index2.php', 5000);</script>";
    }
    
    else if(md5($passAnterior) != $_COOKIE['key'])
    {
        echo "<script>alert(\"La contraseña que inserto no es correcta. Intentelo de nuevo\");</script>";
        echo "<script>setTimeout(location.href='index2.php', 5000);</script>";
    }
    else
    {
        $consultaSql = "CALL setContrasenia ('" . $_COOKIE['key'] . "','" . md5($nuevoPass) . "','" . $_COOKIE['id'] . "');";
        echo "<script>alert(\"Se cambiaron los datos correctamente. Ingrese de nuevo\");</script>";
        echo "<script>setTimeout(location.href='index.php', 5000);</script>";
    }
    mysql_query($consultaSql); 
    mysql_close($conexionConBaseDeDatos);
}
