<?php
include ("settings.php");
//include ("common.php");
//error_reporting(0);

if(isset($_REQUEST['enviar']))
{ 
    $nombre = $_POST['nombre'];
    $Apellidos = $_POST['apellidos'];
    $email = $_POST['email'];
    $cedula = $_POST['cedula'];
    $telefono = $_POST['telefono'];
    $tipoPersona = $_POST['tipoPersona'];////0
    $telefono = $_POST['telefono'];
    $nomUsuario = $_POST['nomUsuario'];
    $contrasenia = $_POST['contrasenia'];
    
    
    if($nombre != '' && $Apellidos != '' && $email != '' && $cedula != '' && $telefono != ''
        && $nomUsuario != '' && $contrasenia != '')
    {
            $conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);
            @mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");
            
            if($tipoPersona == 'Ornitologo')
            {
                $consultaSql = "CALL REGISTRO ('$cedula','$nombre','$Apellidos','$nomUsuario','$contrasenia','$telefono','$email',1);";
            }
            else
            {
                $consultaSql = "CALL REGISTRO ('$cedula','$nombre','$Apellidos','$nomUsuario','$contrasenia','$telefono','$email',2);";
            }
            mysql_query($consultaSql); 
            mysql_close($conexionConBaseDeDatos);
            echo "<script>alert(\"Se a registrado correctamente, puede ingresar al sistema\");</script>";
            echo "<script>setTimeout(location.href='index.php#portfolio', 5000);</script>";
    }
    else
    {
            echo "<script>alert(\"Debe llenar todos los datos intentelo de nuevo.\");</script>";
            echo "<script>javascript:history.back();</script>";
    }
    
    
}



?>