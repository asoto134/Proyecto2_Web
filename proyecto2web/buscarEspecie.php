<?php
$q = $_POST["q"];
include ("settings.php");
include ("common.php");

$conexion=mysql_connect(HOST, USER, PASS);
 @mysql_select_db(DB, $conexion) or die("Error en la seleccion, '$php_errormsg'");
$consulta = "CALL getEspecie($q)";
$resultado = mysql_query($consulta);
mysql_close($conexion);

?>

<select id="combo2" style="width: 120px;">
<option>Seleccione la Especie</option>
<?php
 
    while($fila=mysql_fetch_array($resultado))
    {
        echo "<option value='".$fila['idEspecie']."'>".$fila['Especie']."</option>";
    }
?>


</select>