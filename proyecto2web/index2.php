<?php
include ("settings.php");
include ("common.php");
//echo $_COOKIE['admin'];
// echo "<script>alert(" . $_COOKIE['admin'] . ");</script>";
//error_reporting(0);
//Al presionar el boton de login
$administrador = $_COOKIE['admin'];

//Conecta con la base, prueba, hace la consulta y cierra conexión//

$conexion=mysql_connect(HOST, USER, PASS);
 @mysql_select_db(DB, $conexion) or die("Error en la seleccion, '$php_errormsg'");
$consultaOrden = "CALL getOrden(1)";
$resultadoOrden = mysql_query($consultaOrden);
mysql_close($conexion);


$conexionC=mysql_connect(HOST, USER, PASS);
 @mysql_select_db(DB, $conexionC) or die("Error en la seleccion, '$php_errormsg'");
$ConsultaColor="CALL getColor();";
$resultadoColor= \mysql_query($ConsultaColor);
mysql_close($conexionC);
//
$conexionZ=mysql_connect(HOST, USER, PASS);
 @mysql_select_db(DB, $conexionZ) or die("Error en la seleccion, '$php_errormsg'");
$consultaZona = "CALL `proyecto2web`.`getZonadeVida`();";
$resultadoZona = mysql_query($consultaZona);
mysql_close($conexionZ);
//
$conexionH=mysql_connect(HOST, USER, PASS);
 @mysql_select_db(DB, $conexionH) or die("Error en la seleccion, '$php_errormsg'");
$consultaHuevos = "CALL `proyecto2web`.`getCantHuevos`();";
$resultadoHuevos = mysql_query($consultaHuevos);
mysql_close($conexionH);
////





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

					<!-- Logo -->
						<div id="logo">
							<span class="image avatar48"><img src="images/avatar.jpg" alt="" /></span>
							<h1 id="title"><?php echo $_COOKIE['id'] ?></h1>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<!--
							
								Prologue's nav expects links in one of two formats:
								
								1. Hash link (scrolls to a different section within the page)
								
								   <li><a href="#foobar" id="foobar-link" class="icon fa-whatever-icon-you-want skel-layers-ignoreHref"><span class="label">Foobar</span></a></li>

								2. Standard link (sends the user to another page/site)

								   <li><a href="http://foobar.tld" id="foobar-link" class="icon fa-whatever-icon-you-want"><span class="label">Foobar</span></a></li>
							
							-->
                            
                            <!-- etiquetas del menú izquierdo -->
							<ul>                                
                                
								<li><a href="#Perfil" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Perfil</span></a></li>
                                                                <?php
                                                                if($administrador == 1)
                                                                {
                                                                }
                                                                ?>
                                                                <li><a href="#RegistroHallazgos" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Registro de Hallazgos</span></a></li>
                                                                <li><a href="#RegistroFotos" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Registro de Fotos</span></a></li>
								<li><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Mis Hallazgos</span></a></li>
                                                                <li><a href="#Estadisticas" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Estadisticas</span></a></li>
                                                                <li><a href="#Consultas" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Consultas</span></a></li>
                                
							</ul>
						</nav>
						
				</div>
				
				<div class="bottom">

					<!-- Social Icons -->
						<ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">Github</span></a></li>
							<li><a href="#" class="icon fa-envelope"><span class="label">Email</span></a></li>
						</ul>
				
				</div>
			
			</div>

		<!-- Main -->
			<div id="main">

				<!-- Intro -->
					<section id="Perfil" class="one dark cover">
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
                                
                                
                                
             <!--Registro de hallazgos-->                   
            <section id="RegistroHallazgos" class="three">
                <div class="container">

                    <header>
                            <h2>Registro de Hallazgos</h2>
                    </header>

                    <p>Formulario para Registro de Especies
                       (Haga click en los menus para seleccionar la opcion)</p>

                </div>

                <form action="registro.php" method="post" >

                    <table style="float: left; margin-left:80px; margin-top:50px;" >
                      <tr>                                        
                        <td width="500">
                            <label style="width: 200px; display: inline-block; float: left;" >Nombre Común:</label>
                            <input id="campo1" name="nombrecomun" type="text" style="width: 220px; display: block; float: left;" />
                        </td>

                        <th colspan="1"></th>

                        <td width="500">
                            <label style="width: 200px; display: inline-block; float: left;" >Nombre Científico:</label>
                            <input id="campo2" name="nombrecientifico" type="text" style="width: 220px; display: block; float: left;" />
                        </td>
                      </tr>

                      <tr><td>&nbsp; </td></tr>

                      <tr>                                        

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Orden:</label>
                            <select id="ordenpajaros" onChange="getSubOrden(this.value);" style="width: 220px;">
                                <option value="0">Seleccione el Orden</option>
                               <?php
                                while($fila=mysql_fetch_array($resultadoOrden))
                                {
                                    echo "<option value='".$fila['idOrden']."'>".$fila['Orden']."</option>";
                                }
                                ?>
                        </select>
                        </td>
                         <th colspan="1"></th>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Nombre Inglés:</label>
                            <input id="campo1" name="nombreingles" type="text" style="width: 220px; display: block; float: left;" />
                            <th colspan="1"></th>
                        </td>   
                        
                      </tr>

                      <tr><td>&nbsp; </td></tr>

                      <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Suborden:</label>
                            <select id="subordenpajaros" onChange="getFamilia(this.value);" style="width: 220px;">
                                <option value="0">Seleccione el Sub Orden</option>
                            </select>
                        <th colspan="1"></th>
                        </td>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Tipo de Pico:</label>
                            <select id="tipopicopajaros" style="width: 220px;">
                               <option value="0">Seleccione el Tipo de Pico</option> 
                            </select>
                        </td>
                      </tr>
                      
                      <tr><td>&nbsp; </td></tr>
                      
                      <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Familia:</label>
                            <select id="familiapajaros" onChange="getGenero(this.value);" style="width: 220px;">
                              <option value="0">Seleccione la Familia</option>
                            </select>
                        </td>
                             
                    <th colspan="1"></th>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Cantidad de Huevos:</label>
                            <select id="cantidadhuevospajaros" style="width: 220px;">
                                  <option value="0">Seleccione el Color</option>
                                <?php
                                while($fila=mysql_fetch_array($resultadoHuevos))
                                {
                                    echo "<option value='".$fila['idcantidad_Huevos']."'>".$fila['Cantidad']."</option>";
                                }
                                ?>
                            </select>
                        </td>
                      </tr>
                      <tr><td>&nbsp; </td></tr>

                      <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Género:</label>
                            <select id="generopajaros" onChange="getEspecie(this.value);" style="width: 220px;">
                              <option value="0">Seleccione el Genero</option>
                            </select>
                        <th colspan="1"></th>
                        </td>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Zona de Vida:</label>
                            <select id="zonavidapajaros" style="width: 220px;">
                                  <option value="0">Seleccione la Zona de Vida</option>
                               <?php
                                while($fila=mysql_fetch_array($resultadoZona))
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
                            <label style="width: 200px; display: block; float: left;" >Especie:</label>
                            <select id="especiepajaros" onChange="getTipoPico(this.value);"  style="width: 220px;">
                                  <option value="0">Seleccione la Especie</option>
                            </select>
                        </td>                        
                        <th colspan="1"></th>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Color:</label>
                            <select id="colorpajaros" style="width: 220px;">
                                  <option value="0">Seleccione el Color</option>
                                <?php
                                while($fila=mysql_fetch_array($resultadoColor))
                                {
                                    echo "<option value='".$fila['idColor']."'>".$fila['Color']."</option>";
                                }
                                ?>
                            </select>
                        </td>
                      </tr>

                    </table>

                    <div style="clear: both; "></div>
                    <input id="campo10" name="boton_registrar" type="submit" value="Registrar" style="margin-left:40px;"/> 

</form>

                </section>          
              
                                
                                
                                
                
                                <!-- Administracion -->
                                <?php
                                if($administrador == 1)
                                {
                                    echo '
                            <section id="Registro" class="three">
                            <div class="container">

                                <header>
                                        <h2>Registro de Aves</h2>
                                </header>

                                <p>Formulario para Registro de Aves
                                   (Haga click en los menus para seleccionar la opcion)</p>

                            </div>
                        
                        <form action="registro.php" method="post" >
                    
                        <table style="float: left; margin-left:390px; margin-top:50px;" >
                            
                          <tr>
                            <td width="500">
                                <label style="width: 150px; display: block; float: left;" >Zona de Vida:</label>
                                <select style="width: 250px;">
                         '   ?>
                               <?php
                               
                                while($fila=mysql_fetch_array($resultadoZona)){
    echo "<option value='".$fila['idZona_de_Vida']."'>".$fila['Zona_de_Vida']."</option>";
        }
                                 
                                
                          echo'      </select></td>
                          
                            </tr>
                            
                          <tr><td>&nbsp; </td></tr>
                            
                          <tr>                              
                            <td width="500">
                                <label style="width: 150px; display: block; float: left;" >Color:</label>
                                <select style="width: 250px;">
                                              '   ?>
                               <?php
                              while($fila=mysql_fetch_array($resultadoColor)){
    echo "<option value='".$fila['idColor']."'>".$fila['Color']."</option>";
                              }
                                 
                                
                          echo'      </select></td>
                          
                            </td>
                          </tr>
                            
                          <tr><td>&nbsp; </td></tr>
                            
                          <tr>                              
                            <td width="500">
                                <label style="width: 150px; display: block; float: left;" >Especie:</label>
                                <select style="width: 250px;">
                                                               '   ?>
                               <?php
                              while($fila=mysql_fetch_array($resultadoEspecie)){
    echo "<option value='".$fila['idEspecie']."'>".$fila['Especie']."</option>";
                              }
                                 
                                
                          echo'      </select></td>
                            </td>
                          </tr>
                            
                          <tr><td>&nbsp; </td></tr>
                            
                        </table>
    
                        <div style="clear: both; "></div>
                        <input id="campo10" name="boton_registrar" type="submit" value="Registrar" style="margin-left:40px;"/> 
                    
	</form>
                        
                    </section>
                                    
                                    ';
                                }
                                ?> 
                
<!--                                Registro de fotos-->
                                <section id="RegistroFotos" class="three">
                                        <div class="container">

                                            <header>
                                                    <h2>REGISTRO DE FOTOS</h2>
                                            </header>

                                        </div>
                                </section>                
                              
					
				<!-- Portfolio -->
					<section id="portfolio" class="two">
						<div class="container">
					
							<header>
								<h2>Mis Hallazgos</h2>
							</header>
							
							<p>En esta sección puede observar todos sus hallazgos.</p>
						
							<div class="row">
								<div class="4u">
									<article class="item">
										<a href="#" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
										<header>
											<h3>Ipsum Feugiat</h3>
										</header>
									</article>
									<article class="item">
										<a href="#" class="image fit"><img src="images/pic03.jpg" alt="" /></a>
										<header>
											<h3>Rhoncus Semper</h3>
										</header>
									</article>
								</div>
<!--								<div class="4u">
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

                                
<!--                                Estadisticas-->
                                <section id="Estadisticas" class="three">
                                        <div class="container">

                                            <header>
                                                    <h2>ESTADISTICAS</h2>
                                            </header>
                                           
                                            
                                            
                                        </div>
                                </section> 



<!--                                Consultas-->
                                <section id="Consultas" class="three">
                                        <div class="container">

                                            <header>
                                                    <h2>CONSULTAS</h2>
                                            </header>

                                        </div>
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

	</body>
</html>