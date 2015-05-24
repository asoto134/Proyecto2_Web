<?php
$q = $_GET["q"];

include ("settings.php");
include ("common.php");

$conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);

@mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");

$consultaSql = "SELECT NomUsuario FROM usuario WHERE NomUsuario = '" . $q . "'";

$resultadoConsulta = mysql_query($consultaSql);
if(mysql_num_rows($resultadoConsulta) > 0)
{
	echo "1";
}

else
{
	echo "0";
}

mysql_close($conexionConBaseDeDatos);

?>