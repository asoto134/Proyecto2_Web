<?php
include ("settings.php");
include ("common.php");
//echo $_COOKIE['admin'];
// echo "<script>alert(" . $_COOKIE['admin'] . ");</script>";
error_reporting(0);
//Al presionar el boton de login
$administrador = $_COOKIE['admin'];
$idUsuario = 0;

//Conecta con la base, prueba, hace la consulta y cierra conexión//

$conexion=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexion) or die("Error en la seleccion, '$php_errormsg'");
$consultaOrden = "CALL getOrden(1)";
$resultadoOrden = mysql_query($consultaOrden);
mysql_close($conexion);

$conexion1=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexion1) or die("Error en la seleccion, '$php_errormsg'");
$consultaOrden1 = "CALL getallOrden()";
$resultadoOrden1 = mysql_query($consultaOrden1);
mysql_close($conexion1);

//
$conexionS=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionS) or die("Error en la seleccion, '$php_errormsg'");
$consultaS = "CALL getallSuborden()";
$resultadoS = mysql_query($consultaS);
mysql_close($conexionS);


//

//$conexionC=mysql_connect(HOST, USER, PASS);
//@mysql_select_db(DB, $conexionC) or die("Error en la seleccion, '$php_errormsg'");
//$ConsultaColor="CALL getColor();";
//$resultadoColor= mysql_query($ConsultaColor);
//mysql_close($conexionC);

$conexionC2=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionC2) or die("Error en la seleccion, '$php_errormsg'");
$ConsultaColor2="CALL getColor();";
$resultadoColor2= mysql_query($ConsultaColor2);
mysql_close($conexionC2);

$conexionC3=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionC3) or die("Error en la seleccion, '$php_errormsg'");
$ConsultaColor3="CALL getColor();";
$resultadoColor3= mysql_query($ConsultaColor3);
mysql_close($conexionC3);
//
$conexionPico=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionPico) or die("Error en la seleccion, '$php_errormsg'");
$ConsultaPico="CALL getallPico();";
$resultadoPico= mysql_query($ConsultaPico);
mysql_close($conexionPico);
//
$conexionFamilia=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionFamilia) or die("Error en la seleccion, '$php_errormsg'");
$ConsultaFamilia="CALL getallFamilia();";
$resultadoFamilia= mysql_query($ConsultaFamilia);
mysql_close($conexionFamilia);

//
//$conexionZ=mysql_connect(HOST, USER, PASS);
//@mysql_select_db(DB, $conexionZ) or die("Error en la seleccion, '$php_errormsg'");
//$consultaZona = "CALL `proyecto2web`.`getZonadeVida`();";
//$resultadoZona = mysql_query($consultaZona);
//mysql_close($conexionZ);

$conexionZ2=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionZ2) or die("Error en la seleccion, '$php_errormsg'");
$consultaZona2 = "CALL `proyecto2web`.`getZonadeVida`();";
$resultadoZona2 = mysql_query($consultaZona2);
mysql_close($conexionZ2);

$conexionZ3=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionZ3) or die("Error en la seleccion, '$php_errormsg'");
$consultaZona3 = "CALL `proyecto2web`.`getZonadeVida`();";
$resultadoZona3 = mysql_query($consultaZona3);
mysql_close($conexionZ3);
//
$conexionH=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionH) or die("Error en la seleccion, '$php_errormsg'");
$consultaHuevos = "CALL `proyecto2web`.`getCantHuevos`();";
$resultadoHuevos = mysql_query($consultaHuevos);
mysql_close($conexionH);

$conexionH1=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionH1) or die("Error en la seleccion, '$php_errormsg'");
$consultaHuevos1 = "CALL `proyecto2web`.`getCantHuevos`();";
$resultadoHuevos1 = mysql_query($consultaHuevos1);
mysql_close($conexionH1);


////

$conexionE=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionE) or die("Error en la seleccion, '$php_errormsg'");
$consultaEspecie = "CALL `proyecto2web`.`getAllEspecies`();";
$resultadoEspecie = mysql_query($consultaEspecie);
mysql_close($conexionE);

$conexionE1=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionE1) or die("Error en la seleccion, '$php_errormsg'");
$consultaEspecie1 = "CALL `proyecto2web`.`getAllEspecies`();";
$resultadoEspecie1 = mysql_query($consultaEspecie1);
mysql_close($conexionE1);
//
$conexiongenero=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexiongenero) or die("Error en la seleccion, '$php_errormsg'");
$consultagenero = "CALL `proyecto2web`.`getAllGenero`();";
$resultadogenero = mysql_query($consultagenero);
mysql_close($conexiongenero);


////
$conexionP=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionP) or die("Error en la seleccion, '$php_errormsg'");
$consultaPerfil = "CALL `proyecto2web`.`getPerfil`('" . $_COOKIE['id'] . "');";
$resultadoPerfil = mysql_query($consultaPerfil);
mysql_close($conexionP);
////
$conexionPajaros=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionPajaros) or die("Error en la seleccion, '$php_errormsg'");
$consultaPajaros = "CALL `proyecto2web`.`getPajaroXPersona`('" . $_COOKIE['id'] . "');";
$resultadoPajaros = mysql_query($consultaPajaros);
mysql_close($conexionPajaros);
////
///
$conexionCantidadAves=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionCantidadAves) or die("Error en la seleccion, '$php_errormsg'");
$consultaCantidadAves = "CALL `proyecto2web`.`totalPajaros`();";
$resultadoCantidadAves = mysql_query($consultaCantidadAves);
mysql_close($conexionCantidadAves);
//
$conexionCantidadAvesXZONA=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionCantidadAvesXZONA) or die("Error en la seleccion, '$php_errormsg'");
$consultaCantidadAvesXZONA = "CALL `proyecto2web`.`Pajaros_x_ZonaVida`();";
$resultadoCantidadAvesXZONA = mysql_query($consultaCantidadAvesXZONA);
mysql_close($conexionCantidadAvesXZONA);
//


$conexionU=mysql_connect(HOST, USER, PASS);
@mysql_select_db(DB, $conexionU) or die("Error en la seleccion, '$php_errormsg'");
$consultaUsuario = "CALL getIdUsuario ('" . $_COOKIE['id'] . "');";
$resultadoUsuario = mysql_query($consultaUsuario);
mysql_close($conexionU);
while($fila=mysql_fetch_array($resultadoUsuario))
{
    $idUsuario = $fila['idUsuario'];
}



////

if (isset($_POST['boton_Editar_Perfil']))
{
    
    $nombre = $_POST['nombre'];
    $Apellidos = $_POST['apellidos'];
    $tipoPersona = $_POST['tipoPersona'];////0
    $telefono = $_POST['telefono'];
    $email = $_POST['email'];
    
    $conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);
    @mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");

    if($_POST['tipoPersona'] == 'Ornitologo')
    {
        $consultaSql = "CALL setPerfil ('" . $_POST['nombre'] . "','" . $_POST['apellidos'] . "','" . $_POST['telefono'] . "',1,'" . $_POST['email'] . "','" . $_COOKIE['id'] . "');";
    }
    else
    {
        $consultaSql = "CALL setPerfil ('" . $_POST['nombre'] . "','" . $_POST['apellidos'] . "','" . $_POST['telefono'] . "',2,'" . $_POST['email'] . "','" . $_COOKIE['id'] . "');";
    }
    mysql_query($consultaSql); 
    mysql_close($conexionConBaseDeDatos);
    echo "<script>alert(\"Se cambiaron los datos correctamente\");</script>";
    echo "<script>setTimeout(location.href='index2.php', 5000);</script>";
}

else if(isset($_POST['boton_agregar_ave']))
{
    $RPZona = $_POST['RPZona'];
    $RPColor = $_POST['RPColor'];
    $RPEspecie = $_POST['RPEspecie'];
    if($RPZona != 0 && $RPColor != 0 && $RPEspecie != 0)
    {
        $conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);
        @mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");
        $consultaSql = "CALL add_P_x_P ($idUsuario,$RPColor,$RPZona,$RPEspecie);";
        mysql_query($consultaSql); 
        mysql_close($conexionConBaseDeDatos);
        echo "<script>alert(\"Se agrego el avistamiento correctamente.\");</script>";
        echo "<script>setTimeout(location.href='index2.php', 5000);</script>";
    }
    else
    {
        echo "<script>alert(\"Debe llenar todos los datos\");</script>";
    }
}
else if(isset($_POST['boton_insertar_imagen']))
{
    
    $RIAvistamiento = $_POST['RIAvistamiento'];
    if($RIAvistamiento != 0 && $_FILES['foto_Pajaro']['error']==0)
    {
        $foto_Pajaro_name = $_FILES['foto_Pajaro']['name'];
        $foto_Pajaro_type = $_FILES['foto_Pajaro']['type'];
        $foto_Pajaro = $_FILES['foto_Pajaro']['tmp_name'];
        $path = "Pajaros/".time().$foto_Pajaro_name ;
        move_uploaded_file($foto_Pajaro, $path);
        
        $conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);
        @mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");
        $consultaSql = "CALL addFoto ($RIAvistamiento,'$foto_Pajaro_name','$foto_Pajaro_type','$path');";
        mysql_query($consultaSql); 
        mysql_close($conexionConBaseDeDatos);
        
        echo "<script>alert(\"Su imagen se ha guardado correctamente\");</script>";

    }
    else
    {
        echo "<script>alert(\"A ocurrido un error intentelo de nuevo\");</script>";
    }
    
    
    
    

    
}




////   
//
//   while ($row = mysql_fetch_array($resultadoConsulta))
//   {
//       
//      $row['Contrasenia'];
//
//   }
//    mysql_close($conexionConBaseDeDatos);


?>



<!DOCTYPE HTML>
<!--
Prologue by HTML5 UP
html5up.net | @n33co
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Ornitología Costa Rica - Inicio</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<!--[if lte IE 8]><script src="css/ie/html5shiv.js"></script><![endif]-->
<script src="js/jquery.min.js"></script>
<script src="js/jquery.scrolly.min.js"></script>
<script src="js/jquery.scrollzer.min.js"></script>
<script src="js/skel.min.js"></script>
<script src="js/skel-layers.min.js"></script>
<script src="js/init.js"></script>
<noscript>
<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-wide.css" />
</noscript>
<!--[if lte IE 9]><link rel="stylesheet" href="css/ie/v9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="css/ie/v8.css" /><![endif]-->
</head>
<body>

<!-- Header -->
<div id="header" class="skel-layers-fixed">

    <div class="top">

            <!-- Nav -->
                    <nav id="nav">
                        
<!-- etiquetas del menú izquierdo -->
                            <ul>                                

                                    <li><a href="#Inicio" id="bienvenido" class="skel-layers-ignoreHref"><span class="icon fa-home">Bienvenido a este sitio</span></a></li>
                                    <?php
                                    if($administrador == 1)
                                    {
                                        echo '<li><a href="#Administracion" id="administrador" class="skel-layers-ignoreHref"><span class="icon fa-user">Administra los datos</span></a></li>'; 

                                    }
                                    ?>
                                    <li><a href="#Perfil" id="perfil" class="skel-layers-ignoreHref"><span class="icon fa-edit">Verifica y edita perfil</span></a></li>
                                    <li><a href="#cambioContrasenia" id="cambiocontrasena" class="skel-layers-ignoreHref"><span class="icon fa-star">Cambiar contraseña</span></a></li>
                                    <li><a href="#RegistroAves" id="registroaves" class="skel-layers-ignoreHref"><span class="icon fa-camera">Registro de Aves</span></a></li>
                                    <li><a href="#portfolio" id="fotografias" class="skel-layers-ignoreHref"><span class="icon fa-photo">Mis Fotografias</span></a></li>
                                    <li><a href="#Estadisticas" id="estadisticas" class="skel-layers-ignoreHref"><span class="icon fa-line-chart">Estadisticas</span></a></li>
                                    <li><a href="#Consultas" id="consultas" class="skel-layers-ignoreHref"><span class="icon fa-question">Consultas</span></a></li>
                                    <li><a href="index.php" id="salir" class="skel-layers-ignoreHref"><span class="icon fa-close">Salir</span></a></li>

                            </ul>
                    </nav>

            <!-- Logo -->
          
    </div>

<!--    <div class="bottom">

             Social Icons 
                    <ul class="icons">
                            <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
                            <li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
                            <li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
                            <li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
                    </ul>

    </div>-->

</div>

<!-- Main -->
<div id="main">

    <!-- Intro -->
            <section id="Inicio" class="one dark cover">
                    <div class="container">

                            <header>
                                    <h2 class="alt"><strong>Bienvenido <?php echo $_COOKIE['id'] ?></strong>
    <br/>
                                    </h2>
                                    <p>La asociación costarricense de ornitología pone a su disposicion este sistema
    <br />en el cual podrá guardar todos sus descubrimientos.
                                    </p>
                            </header>

                            <footer>
                                    <a href="#portfolio" class="button scrolly">Mira tus hallazgos</a>
                            </footer>

                    </div>
            </section>

    
<!-------------------------------------Administracion----------------------------------------------->                   


<?php
if($administrador == 1)
{
    echo '


<section id="Administracion" class="three">
<div class="container">

<header>
<h2>Registro de Hallazgos</h2>
</header>

<p>Formulario para Registro de Especies
(Haga click en los menus para seleccionar la opcion)</p>

</div>

<form action="agregarEspecie.php" method="post" >

<table style="float: left; margin-left: 35px; margin-top: 50px;" >
<tr>                                        
<td width="500">
<label style="width: 200px; display: block; float: left;" >Orden:</label>
<select id="ordenpajaros" name="orden" onChange="getSubOrden(this.value);" style="width: 300px;">
    <option value="0">Seleccione el Orden</option>
'   ?>
   <?php
    while($fila=mysql_fetch_array($resultadoOrden))
    {
        echo "<option value='".$fila['idOrden']."'>".$fila['Orden']."</option>";
    }

echo '
</select>
</td>

<th colspan="1"></th>

<td width="500">
<label style="width: 200px; display: inline-block; float: left;" >Nombre Científico:</label>
<input id="campo2" name="nombrecientifico" type="text" style="width: 300px; display: block; float: left;" />
</td>
</tr>

<tr><td>&nbsp; </td></tr>

<tr>                                        

<td width="500">
<label style="width: 200px; display: block; float: left;" >Suborden:</label>
<select id="subordenpajaros" name="subOrden" onChange="getFamilia(this.value);" style="width: 300px;">
    <option value="0">Seleccione el Sub Orden</option>
</select>
</td>
<th colspan="1"></th>

<td width="500">
<label style="width: 200px; display: inline-block; float: left;" >Nombre Común:</label>
<input id="campo1" name="nombrecomun" type="text" style="width: 300px; display: block; float: left;" />
</td>

</tr>

<tr><td>&nbsp; </td></tr>

<tr>
<td width="500">
<label style="width: 200px; display: block; float: left;" >Familia:</label>
<select id="familiapajaros" name="familia" onChange="getGenero(this.value);" style="width: 300px;">
  <option value="0">Seleccione la Familia</option>
</select>
</td>

<th colspan="1"></th>

<td width="500">
<label style="width: 200px; display: block; float: left;" >Nombre Inglés:</label>
<input id="campo1" name="nombreingles" type="text" style="width: 300px; display: block; float: left;" />

</td> 
</tr>

<tr><td>&nbsp; </td></tr>

<tr>
<td width="500">
<label style="width: 200px; display: block; float: left;" >Género:</label>
<select id="generopajaros" name="genero" onChange="getEspecie(this.value);" style="width: 300px;">
  <option value="0">Seleccione el Genero</option>
</select>
</td>

<th colspan="1"></th>

<td width="500">
<label style="width: 200px; display: block; float: left;" >Tipo de Pico:</label>
<select id="tipopicopajaros" name="pico" style="width: 300px;">
   <option value="0">Seleccione el Tipo de Pico</option> 
</select>
</td>
</tr>


<tr><td>&nbsp; </td></tr>




<tr><td>&nbsp; </td></tr>

<tr>
<td width="500">
<label style="width: 200px; display: block; float: left;" >Especie:</label>
<select id="especiepajaros" name="especie" onChange="getTipoPico(this.value);"  style="width: 300px;">
      <option value="">Seleccione la Especie</option>
</select>
</td>                        
<th colspan="1"></th>
<td width="500">
<label style="width: 200px; display: block; float: left;" >Cantidad de Huevos:</label>
<select id="cantidadhuevospajaros" name="cantHuevos" style="width: 300px;">
      <option value="0">Seleccione el Color</option>
'   ?>
   <?php
    while($fila=mysql_fetch_array($resultadoHuevos))
    {
        echo "<option value='".$fila['idcantidad_Huevos']."'>".$fila['Cantidad']."</option>";
    }
echo'
</select>
</td>
</tr>

</table>

<div style="clear: both; "></div>
<input id="campo10" name="boton_agregar_especie" type="submit" value="Agregar Especie" style="margin-left:40px;"/> 

</form>

</section>          
    
'; 

}
?>



<!------------------------------------------------ Perfil -------------------------------------------------->
<?php

    $Nombre = '';
    $Apellido = '';
    $Telefono = '';
    $TipoPersona = '';
    $Correo = '';
    while($fila=mysql_fetch_array($resultadoPerfil))
    {
        $Nombre = $fila['Nombre'];
        $Apellido = $fila['Apellido'];
        $Telefono = $fila['Telefono'];
        $TipoPersona = $fila['Tipo_de_Persona_idTipo_de_Persona'];
        $Correo = $fila['Correo'];
    }
?>



            <section id="Perfil" class="two">
                    <div class="container">

                            <header>
                                    <h2 class="alt"><strong>Perfil</strong>
    <br/>
                                    </h2>
                                    <p>En esta sección podrá encontrar sus datos personales, y podrá editarlos.
                                    </p>
                            </header>
</div>

<form action="index2.php" method="post" >

<table style="float: left; margin-left:300px; margin-top:50px" >

<tr>
<td width="500">
<label style="width: 200px; display: block; float: left;" >Nombre:</label>
<input id="campo1" name="nombre" type="text" value="<?php echo $Nombre; ?>" style="width: 200px; display: block; float: left;" />
</td>

<tr><td>&nbsp; </td></tr>

<td width="500">
<label style="width: 200px; display: block; float: left;" >Apellido:</label>
<input id="campo2" name="apellidos" type="text" value="<?php echo $Apellido; ?>" style="width: 200px; display: block; float: left;" />
</td>

</tr>


<tr><td>&nbsp; </td></tr>



<tr>
<td width="500">
<label style="width: 200px; display: block; float: left;" >&nbsp;</label>
<label style="width: 200px; display: block; float: left;" >ejemplo: 22446688</label>
</td>
</tr>

<tr>
<td width="500">
<label style="width: 200px; display: block; float: left;" >Teléfono:</label>
<input id="campo7" name="telefono" type="text" value="<?php echo $Telefono; ?>" onkeypress="return justNumbers(event);"  style="width: 200px; display: block; float: left;" />
</td>
</tr>
</tr>

<tr><td>&nbsp; </td> 
    
<th colspan="2"></th></tr>

<tr>
<td width="500">
<label for="ornitologo" style="width: 200px; display: block; float: left;" >Ornitologo:</label>
<input type="radio" name="tipoPersona" id="rescatista" value="Ornitologo" <?php if ($TipoPersona == 1) echo 'checked'; ?>/>
</td>
</tr>

<tr><td>&nbsp; </td></tr>

<tr>
<td width="500">
<label for="aficionado" style="width: 200px; display: block; float: left;" >Aficionado:</label>
<input type="radio" name="tipoPersona" id="adoptante" value="Aficionado" <?php if ($TipoPersona == 2) echo 'checked'; ?> />
</td>
</tr>

<tr><td>&nbsp; </td></tr>
<tr>
<td width="500">
<label style="width: 200px; display: block; float: left;" >Email:</label>
<input id="campo4" name="email" type="text" value="<?php echo $Correo; ?>" onchange="verificarCorreo(this.value)" style="width: 200px; display: block; float: left;" />
</td>
</tr>


</table>

<div style="clear: both; "></div>
<input id="campo10" name="boton_Editar_Perfil" type="submit" value="Editar Perfil" style="margin-left:40px;"/> 

</form>



            </section>



<!------------------------------------------------ Cambio de contraseña -------------------------------------------------->

<section id="cambioContrasenia" class="three">
                    <div class="container">

                            <header>
                                    <h2 class="alt"><strong>Cambio de Contraseña</strong>
    <br/>
                                    </h2>
                                    <p>En esta sección podrá editar su contraseña.
                                    </p>
                            </header>
</div>

    <form action="cambioContrasenia.php" method="post" name ="f1" >

<table style="float: left; margin-left:300px; margin-top:50px" >

<tr>
<td width="500">
<label style="width: 200px; display: block; float: left;" >Nueva Contraseña:</label>
<input id="campo1" name="nuevoPassword" type="password" value="" style="width: 200px; display: block; float: left;" />
</td>

<tr><td>&nbsp; </td></tr>

<td width="500">
<label style="width: 200px; display: block; float: left;" >Confirme Contraseña:</label>
<input id="campo2" name="confirNuevoPassword" type="password" value="" onchange="comprobarClave"  style="width: 200px; display: block; float: left;" />
</td>


<tr><td>&nbsp; </td></tr>

<td width="500">
<label style="width: 200px; display: block; float: left;" >Contraseña Anterior:</label>
<input id="campo2" name="passwordAnterior" type="password" value="" style="width: 200px; display: block; float: left;" />
</td>



</table>

<div style="clear: both; "></div>
<input id="campo10" name="boton_cambiar_contrasenia" type="submit" value="Cambiar Contraseña" style="margin-left:40px;"/> 

</form>



            </section>





    <!----------------------------------------------- Registro de aves --------------------------------------------------->

    
<section id="RegistroAves" class="two">
<div class="container">

                            <header>
                                    <h2 class="alt"><strong>Registro de Aves</strong>
    <br/>
                                    </h2>
                                    <p>Este es un formulario para registrar las aves que ha avistado
                                    </p>
                            </header>

</div>

<br/>
<br/>

<form action="index2.php" method="post" >

<table style="float: left; margin-left:100px; margin-top:50px;" >
    

<tr>
<td width="500">
    <label style="width: 150px; display: block; float: left;" >Zona de Vida:</label>
    <select name="RPZona" style="width: 700px;">
      <option value="0">Seleccione la Zona de Vida</option>
   <?php

    while($fila=mysql_fetch_array($resultadoZona2))
    {
    echo "<option value='".$fila['idZona_de_Vida']."'>".$fila['Zona_de_Vida']."</option>";
    }
    

    ?>

</select></td>

</tr>

<tr><td>&nbsp; </td></tr>

<tr>                              
<td width="500">
    <label style="width: 150px; display: block; float: left;" >Color:</label>
    <select name="RPColor" style="width: 700px;">
        <option value="0">Seleccione el Color</option>  
  <?php
    while($fila=mysql_fetch_array($resultadoColor2))
    {
        echo "<option value='".$fila['idColor']."'>".$fila['Color']."</option>";
    }
    ?>
        


 </select></td>

</td>
</tr>

<tr><td>&nbsp; </td></tr>

<tr>                              
<td width="500">
    <label style="width: 150px; display: block; float: left;" >Especie:</label>
    <select name="RPEspecie" style="width: 700px;">
    <option value="0">Seleccione la Especie</option> 
   <?php
    while($fila=mysql_fetch_array($resultadoEspecie))
    {
        echo "<option value='".$fila['idEspecie']."'>".$fila['Especie']." (".$fila['Nombre_Cientifico'].")</option>";
    }
    ?>


</select></td>
</td>
</tr>



</table>

<div style="clear: both; "></div>
<input id="campo10" name="boton_agregar_ave" type="submit" value="Agregar Ave" style="margin-left:40px;"/> 

</form>

<br/>
<br/>
<br/>

</section>

<!--    --------------------------------------------------------------------------------------------->

<section id="agregaravistamientos" class="three">
<form action="index2.php" method="post"  enctype="multipart/form-data" >

<div>
                                <header>
                                    <h2 class="alt"><strong>Avistamientos</strong>
    <br/>
                                    </h2>
                                    <p>Agregue los avistamientos capturados de las aves
                                    </p>
                            </header>
</div>

<table style="float: left; margin-left:100px; margin-top:50px;" >

<tr>                              
<td width="500">
    <label style="width: 220px; display: block; float: left;" >Pajaro observado:</label>
    <select name="RIAvistamiento" style="width: 700px;">
    <option value="0">Seleccione su avistamiento</option> 
   <?php
    while($fila=mysql_fetch_array($resultadoPajaros))
    {
        echo "<option value='".$fila['Pajaros_X_Persona_id']."'>".$fila['Especie']." (".$fila['Nombre_Cientifico'].")</option>";
    }
    ?>


</select>
</td>
</tr>

<tr><td>&nbsp; </td></tr>

<tr>
<td width="500">
    <label style="width: 200px; display: block; float: left;" >Foto:</label>
    <input type="file" name="foto_Pajaro" style="width: 700px; display: block; float: left;">                    
</td>
</tr>  

</table>

<div style="clear: both; "></div>
<input id="campo10" name="boton_insertar_imagen" type="submit" value="Insertar Imagen" style="margin-left:40px;"/> 

</form>

    
</section>


    <!-- Portfolio -->
            <section id="portfolio" class="two">
                    <div class="container">

                            <header>
                                    <h2>Mis Fotografias</h2>
                            </header>

                            <p>En esta sección puede observar todas su album de fotos.</p>

                            <div class="row">
                                
                                <?php 
 
                            $conexionFotos=mysql_connect(HOST, USER, PASS);
                            @mysql_select_db(DB, $conexionFotos) or die("Error en la seleccion, '$php_errormsg'");
                            $consultaFotos = "CALL `proyecto2web`.`getFotos`('" . $_COOKIE['id'] . "');";
                            $resultadoFotos = mysql_query($consultaFotos);
                            mysql_close($conexionFotos);  
                            while($fila=mysql_fetch_array($resultadoFotos))
                            {
                                echo '                                
                                    <div class="4u">
                                            <article class="item">
                                                    <a href="#" class="image fit"><img src="'.$fila['URL'].'" alt="" /></a>
                                                    <header>
                                                            <h3>Especie: "'.$fila['Especie'].'"</h3>
                                                            <h3>N. Cientifico: "'.$fila['Nombre_Cientifico'].'"</h3>
                                                            <h3>N. Comun: "'.$fila['Nombre_Comun'].'"</h3>
                                                    </header>
                                            </article>
                                    </div>
                                    ';
                                
                                
                                
                            }

                                
                                ?>
                                
                                
                                
                                <!--                                <div class="4u">
                                            <article class="item">
                                                    <a href="#" class="image fit"><img src="images/pic04.jpg" alt="" /></a>
                                                    <header>
                                                            <h3>Magna Nullam</h3>
                                                    </header>
                                            </article>
                                            <article class="item">
                                                    <a href="#" class="image fit"><img src="images/pic05.jpg" alt="" /></a>
                                                    <header>
                                                            <h3>Natoque Vitae</h3>
                                                    </header>
                                            </article>
                                    </div>
                                    <div class="4u">
                                            <article class="item">
                                                    <a href="#" class="image fit"><img src="images/pic06.jpg" alt="" /></a>
                                                    <header>
                                                            <h3>Dolor Penatibus</h3>
                                                    </header>
                                            </article>
                                            <article class="item">
                                                    <a href="#" class="image fit"><img src="images/pic07.jpg" alt="" /></a>
                                                    <header>
                                                            <h3>Orci Convallis</h3>
                                                    </header>
                                            </article>
                                    </div>
-->
                            </div>

                    </div>
            </section>


<!-- --------------------------------------Estadisticas------------------------------------------------------->
     <section id="Estadisticas" class="three">
            <div class="container">

                <header>
                        <h2>Estadísticas</h2>
                </header>
            </div> 
        
        <form action="index2.php" method="post" >
        
                <table style="float: left; margin-left: 25px; vertical-align: top;">
                    <!-- Combo box -->
                    
                    <td>
                        <tr>
                            <?php
                    $contados = mysql_result($resultadoCantidadAves,0);
                    echo 'Total de Aves registradas:</label>'.$contados;?>
                        </tr>
                        
                    <td>
                       <?php
                        echo 'Cantidad de aves registradas por zona de vida';
                        if ($row = mysql_fetch_array($resultadoCantidadAvesXZONA)){ 
   echo "<table border = '1'> \n"; 
   echo "<tr><td>Cantidad</td><td>Zona de Vida</td></tr> \n"; 
   do { 
      echo "<tr><td>".$row["Cantidad"]."</td><td>".$row["Zona_de_Vida"]."</td></tr> \n"; 
   } while ($row = mysql_fetch_array($resultadoCantidadAvesXZONA)); 
   echo "</table> \n"; 
}
                       ?>
  <td width="500">
                        <label style="width: 250px; float: left;" >Inserte el top:</label>
                            <input id="campoestadistica" name="campoestadistica" type="text" value="Estadística" style="width: 200px; display: block; float: left;" />
                        </td>                            
                        </td>
                        <td>
                                    
                        </td>
                        
                     </td>
                    </table>
                            <?php 
                            

if (isset($_POST['boton_estadistica'])){
    $conexionTop=mysql_connect(HOST, USER, PASS);
    $campo=$_POST['campoestadistica'];
    @mysql_select_db(DB, $conexionTop) or die("Error en la seleccion, '$php_errormsg'");
    $ConsultaTop="CALL `proyecto2web`.`TopPajaros`($campo);";
    $resultadoTop= mysql_query($ConsultaTop);
    mysql_close($conexionTop); 
     $ok=true;
    
 if ($ok == true){
        
         echo "<table border = 1>
         <tr>
         
                 <th>nombre</th>
         <th>apellido</th>
                 </tr>";
         
         // agarramos los datos q fueron devueltos en el cursor
         while ($entry = mysql_fetch_array($resultadoTop)){
             // aca se agarran los datos obtenidos por la busqueda
             // osea los NOMBRES EXACTOS de las columnas
             // ($variable = $entry["NOMBRE EXACTO CULUMNA"])
             // por ejemplo:
             $PAIS = $entry['nombre'];
             $ID = $entry['Apellido'];
             
             
             echo "<tr>";
             echo "<td>".$PAIS."</td>";
             echo "<td>".$ID."</td>";
            
             echo "</tr>";
             
         }
         
         echo "</table>";
        
    }
        ELSE{
            
            echo "Problemas";
        }
           
     
} 
?> 
                            
                    
                
            <div style="clear: both; "></div>
            <input id="botonestadistica" name="boton_estadistica" type="submit" value="Consultar Estadísticas" style="margin-left:40px;"/> 

                    <tr><td>&nbsp; </td></tr>
    </form>  
                
    </section> 

   <!--Faltan las Consulta -->


<!--                                Consultas-->
    <section id="Consultas" class="two">
            <div class="container">

                <header>
                        <h2>CONSULTAS</h2>
                </header>
            </div>
        <form action="index2.php" method="post" >
                <table>
                
                    <tr>                                        

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Orden:</label>
                                <select name='OC' id="ordenconsultas" style="width: 240px;">
                                    <option value="0">Seleccione el Orden</option>
                                   <?php
                                    while($fila=mysql_fetch_array($resultadoOrden1))
                                    {
                                        echo "<option value='".$fila['idOrden']."'>".$fila['Orden']."</option>";
                                    }
                                    ?>
                                </select>
                        </td>
                        
                        <th colspan="1"></th>
                        
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Color:</label>
                            <select name="colorconsulta" style="width: 240px;">
                                <option value="0">Seleccione el Color</option>
                                <?php
                                while($fila=mysql_fetch_array($resultadoColor3))
                                {
                                    echo "<option value='".$fila['idColor']."'>".$fila['Color']."</option>";
                                }
                                ?>
                            </select>
                    </td>  

                    </tr>

                    <tr><td>&nbsp; </td></tr>

                    <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Suborden:</label>
                                <select name="subordenconsulta"  style="width: 240px;">
                                    
                                    <option value="0">Seleccione el Sub Orden</option>
                                    <?php
                                    while($fila=mysql_fetch_array($resultadoS))
                                    {
                                        echo "<option value='".$fila['idSuborden']."'>".$fila['Suborden']."</option>";
                                    }
                                    ?>
                                </select>
                            <th colspan="1"></th>
                        </td>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Tipo de Pico:</label>
                                <select name="tipopicoconsulta" style="width: 240px;">
                                   <option value="0">Seleccione el Tipo de Pico</option> 
                                  <?php
                                    while($fila=mysql_fetch_array($resultadoPico))
                                    {
                                        echo "<option value='".$fila['idTipo_de_Pico']."'>".$fila['Tipo_de_Pico']."</option>";
                                    }
                                    ?>
                                
                                </select>
                        </td>
                    </tr>

                    <tr><td>&nbsp; </td></tr>

                    <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Familia:</label>
                                <select name="familiaconsulta"  style="width: 240px;">
                                  <option value="0">Seleccione la Familia</option>
                                  <?php
                                    while($fila=mysql_fetch_array($resultadoFamilia))
                                    {
                                        echo "<option value='".$fila['idFamilia']."'>".$fila['Familia']."</option>";
                                    }
                                    ?>
                                </select>
                        </td>

                    <th colspan="1"></th>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Especie:</label>
                                <select name="especieconsulta"   style="width: 240px;">
                                      <option value="0">Seleccione la Especie</option>
                                      <?php
                                       while($fila=mysql_fetch_array($resultadoEspecie1))
                                    {
                                        echo "<option value='".$fila['idEspecie']."'>".$fila['Especie']."</option>";
                                    }
                                    ?>
                                </select>
                        </td>                        
                    </tr>
        
                    <tr><td>&nbsp; </td></tr>

                    <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Género:</label>
                                <select name="generoconsulta"  style="width: 240px;">
                                  <option value="0">Seleccione el Genero</option>
                                  <?php
                                   while($fila=mysql_fetch_array($resultadogenero))
                                    {
                                        echo "<option value='".$fila['idGenero']."'>".$fila['Genero']."</option>";
                                    }
                                    ?>
                                </select>
                            <th colspan="1"></th>
                        </td>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Zona de Vida:</label>
                                <select name="zonavidaconsulta" style="width: 240px;">
                                      <option value="0">Seleccione la Zona de Vida</option>
                                   <?php
                                    while($fila=mysql_fetch_array($resultadoZona3))
                                    {
                                        echo "<option value='".$fila['idZona_de_Vida']."'>".$fila['Zona_de_Vida']."</option>";
                                    }
                                    ?>
                                </select>
                        <th colspan="1"></th>
                        </td>
                    </tr>

                    <tr><td>&nbsp; </td></tr>

                    <tr>

                    <td width="500">
                    <label style="width: 200px; display: block; float: left;" >Cantidad de Huevos:</label>
                    <select name="cantidadhuevosconsultas" style="width: 240px;">
                          <option value="0">Seleccione la cantidad de huevos</option>
                        <?php
                        while($fila=mysql_fetch_array($resultadoHuevos1))
                        {
                            echo "<option value='".$fila['idcantidad_Huevos']."'>".$fila['Cantidad']."</option>";
                        }
                        ?>
                    </select>
                    </td>    
                    
                    </tr>
                            
                </table>
           <?php
           ////Código para realizar las consultas
           if (isset($_POST['bConsultas']))
               
           {
           
               
               $Orden=$_POST['OC'];
               $Suborden=$_POST['subordenconsulta'];
               $Familia=$_POST['familiaconsulta'];
               $Genero=$_POST['generoconsulta'];
               $huevos=$_POST['cantidadhuevosconsultas'];
               $Color=$_POST['colorconsulta'];
               $Pico=$_POST['tipopicoconsulta'];
               $Especie=$_POST['especieconsulta'];
               $Zona_de_Vida=$_POST['zonavidaconsulta'];
               
              
    $conexionCA=mysql_connect(HOST, USER, PASS);
    @mysql_select_db(DB, $conexionCA) or die("Error en la seleccion, '$php_errormsg'");
    $ConsultaCA="CALL CONSULTA_AVES_POR_PERSONA($Especie,$Genero,$Familia,$Suborden,$Color,$Zona_de_Vida,$huevos,0,$Pico);";
    $resultadoCA= mysql_query($ConsultaCA);
    mysql_close($conexionCA);
    
     $ok=true;
    
 if ($ok == true){
		
		 echo "
                     <table border = 1>
		 <tr>
		 
                 <th>Nombre</th>
		 <th>Apellido</th>
                 <th>Especie </th>
                 <th>Nombre Cientifico </th>
                 <th>Nombre Comun </th>
                 <th>Nombre en Ingles</th>
                 <th>Cantidad </th>
                 <th>Genero</th>
                 <th>familia</th>
                 <th>suborden</th>
                 <th>Tipo de Pico</th>
                 
                 </tr>";
		 
		 // agarramos los datos q fueron devueltos en el cursor
		 while ($entry = mysql_fetch_array($resultadoCA)){
			 // aca se agarran los datos obtenidos por la busqueda
			 // osea los NOMBRES EXACTOS de las columnas
			 // ($variable = $entry["NOMBRE EXACTO CULUMNA"])
			 // por ejemplo:
			 
			 
                         
			 echo "<tr>";
			 echo "<td>".$entry['Nombre']."</td>";
			 echo "<td>".$entry['Apellido']."</td>";
                         echo "<td>".$entry['Especie']."</td>";
                         echo "<td>".$entry['Nombre_Cientifico']."</td>";
                         echo "<td>".$entry['Nombre_Comun']."</td>";
                         echo "<td>".$entry['Nombre_en_Ingles']."</td>";
                         echo "<td>".$entry['Cantidad']."</td>";
                         echo "<td>".$entry['Genero']."</td>";
                         echo "<td>".$entry['familia']."</td>";
                         echo "<td>".$entry['suborden']."</td>";
                         echo "<td>".$entry['tipo_de_pico']."</td>";

                         
                         
			
			 echo "</tr>";
			 
		 }
		 
		 echo "</table>";
           
           }
           else{
               echo 'Problemas';
           }
                
           
                 }
           ?>

<div style="clear: both; "></div>
<input id="botonconsulta" name="bConsultas" type="submit" value="Consultar" style="margin-left:40px;"/> 
</form>
    </section>                



<!-- Footer -->
<div id="footer">

    <!-- Copyright -->
            <ul class="copyright">
                    <li>&copy; Ornitología de Costa Rica. Todos los derechos reservados.</li><li>Diseño: <a href="http://html5up.net">HTML5 UP</a></li>
            </ul>

</div>



<!-- Validaciones -->
<script src="js/misFunciones.js"></script> 
<script src="css/misTablas.css"></script> 
</body>
</html>