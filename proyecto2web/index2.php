<?php
include ("settings.php");
include ("common.php");
//echo $_COOKIE['admin'];
// echo "<script>alert(" . $_COOKIE['admin'] . ");</script>";
//error_reporting(0);
//Al presionar el boton de login
$administrador = $_COOKIE['admin'];

//$_COOKIE['casaculturalamon_id'];

//    $conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);
//
//    @mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");
//
//    $consultaSql = "SELECT NomUsuario, Contrasenia, permisos FROM usuario WHERE NomUsuario = '" . $_COOKIE['admin'] . "'";
//
//    $resultadoConsulta = mysql_query($consultaSql);   
//   
//   if (mysql_num_rows($resultadoConsulta) == 0) 
//   {
//       echo "<script>alert(\"El usuario no existe en la base de datos.\");</script>";
//       echo "<script>javascript:history.back();</script>";
//   }
//   
//   
//   while ($row = mysql_fetch_array($resultadoConsulta))
//   {
//      if (md5($_POST['logContrasenia']) != $row['Contrasenia']) 
//      {
//          echo "<script>alert(\"Password incorrecto.\");</script>";
//          echo "<script>javascript:history.back();</script>";
//      }
//      else
//      {
//
//            $nom_Usuario = $_POST['logNomusuario'];
//            $Ornitologo = FALSE;
//
//            $consultaSql2 = "SELECT Tipo_de_Persona_idTipo_de_Persona FROM persona INNER JOIN usuario 
//                      ON persona.Usuario_idUsuario = usuario.idUsuario
//                      WHERE usuario.NomUsuario = '$nom_Usuario'";
//            
//            $resultadoConsulta2 = mysql_query($consultaSql2);
//            While ($row2 = mysql_fetch_array($resultadoConsulta2))
//            {
//                if($row2['Tipo_de_Persona_idTipo_de_Persona'] == 1)
//                {
//                    $Ornitologo = TRUE;
//                }
//            }
//            
//            if($Ornitologo){header("Location: index2.html");}
//            else{header("Location: index.php");}
//            actualizar_cookie($_POST['logNomusuario'],md5($_POST['logContrasenia']),$row['permisos']);
//      }
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
							<h1 id="title">Jane Doe</h1>
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
                                
								<li><a href="#top" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Introduccion</span></a></li>
                                                                <?php
                                                                if($administrador == 1)
                                                                {
                                                                        echo '<li><a href="#Administracion" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Administracion</span></a></li>';
                                                                }
                                                                ?>
                                <li><a href="#Registro" id="top-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Registro de Aves</span></a></li>
                                
								<li><a href="#portfolio" id="portfolio-link" class="skel-layers-ignoreHref"><span class="icon fa-th">Mis Hallazgos</span></a></li>
                                
								<li><a href="#about" id="about-link" class="skel-layers-ignoreHref"><span class="icon fa-user">Mi Perfil</span></a></li>
                                
								<li><a href="#contact" id="contact-link" class="skel-layers-ignoreHref"><span class="icon fa-envelope">Contacto</span></a></li>
                                
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
					<section id="top" class="one dark cover">
						<div class="container">

							<header>
								<h2 class="alt"><strong>Bienvenido Usuario</strong>
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
                                
                                
                                <!-- Administracion -->
                                <?php
                                if($administrador == 1)
                                {
                                    // pestaña de administrador
                                    echo '
                                            <section id="Administracion" class="three">
                                                    <div class="container">

                                                        <header>
                                                                <h2>Prueba</h2>
                                                        </header>

                                                        <p>Esto es una prueba para ver como agregar una pestaña de menu administrador.</p>

                                                    </div>
                                            </section>
                                                                            ';
                                }
                                ?> 
                
                
                                <!-- Administracion -->
                                <?php
                                if($administrador == 1)
                                {
                                    // pestaña de administrador
                                    echo '
            <section id="Registro" class="three">
                <div class="container">

                    <header>
                            <h2>Registro de Especies</h2>
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
                            <label style="width: 200px; display: block; float: left;" >Nombre Inglés:</label>
                            <input id="campo1" name="nombreingles" type="text" style="width: 220px; display: block; float: left;" />
                            <th colspan="1"></th>
                        </td>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Orden:</label>
                            <select id="ordenpajaros" style="width: 220px;">
                              <option value="cuclillos">Cuclillos</option>
                              <option value="chotacabras">Chotacabras</option>
                            </select>
                        </td>
                      </tr>

                      <tr><td>&nbsp; </td></tr>

                      <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Suborden:</label>
                            <select id="subordenpajaros" style="width: 220px;">
                              <option value="alcedines">Alcedines</option>
                              <option value="passeri">Passeri</option>
                            </select>
                        <th colspan="1"></th>
                        </td>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Familia:</label>
                            <select id="familiapajaros" style="width: 220px;">
                              <option value="cuculidae">Cuculidae</option>
                              <option value="caprimulgidae">Caprimulgidae</option>
                            </select>
                        </td>
                      </tr>
                      
                      <tr><td>&nbsp; </td></tr>

                      <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Género:</label>
                            <select id="generopajaros" style="width: 220px;">
                              <option value="crotophaga">Crotophaga</option>
                              <option value="nyctidromus">Nyctidromus</option>
                            </select>
                        <th colspan="1"></th>
                        </td>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Especie:</label>
                            <select id="especiepajaros" style="width: 220px;">
                                  <option value="cuclillos">Cuclillos</option>
                                  <option value="chotacabras">Chotacabras</option>
                                  <option value="bucos">Bucos</option>
                                  <option value="jacamares">Jacamares</option>
                            </select>
                        </td>
                      </tr>
                      
                      <tr><td>&nbsp; </td></tr>
                      
                      <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Tipo de Pico:</label>
                            <select id="tipopicopajaros" style="width: 220px;">
                              <option value="picosurcos">Pico Sin Surco</option>
                              <option value="picoamplio">Pico Amplio</option>
                            </select>
                        <th colspan="1"></th>
                        </td>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Cantidad de Huevos:</label>
                            <select id="cantidadhuevospajaros" style="width: 220px;">
                                  <option value="uno">1</option>
                                  <option value="dos">2</option>
                                  <option value="tres">3</option>
                                  <option value="cuatro">4</option>
                            </select>
                        </td>
                      </tr>
                      
                      <tr><td>&nbsp; </td></tr>
                      
                      <tr>
                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Zona de Vida:</label>
                            <select id="zonavidapajaros" style="width: 220px;">
                                  <option value="bosque">Bosque Lluvioso</option>
                                  <option value="tropical">Bosque Tropical</option>
                                  <option value="seco">Bosque Seco</option>
                                  <option value="humedo">Bosque Humedo</option>
                            </select>
                        <th colspan="1"></th>
                        </td>

                        <td width="500">
                            <label style="width: 200px; display: block; float: left;" >Color:</label>
                            <select id="colorpajaros" style="width: 220px;">
                                  <option value="blanco">Blanco</option>
                                  <option value="rojo">Rojo</option>
                                  <option value="azul">Azul</option>
                                  <option value="verde">Verde</option>
                            </select>
                        </td>
                      </tr>

                    </table>

                    <div style="clear: both; "></div>
                    <input id="campo10" name="boton_registrar" type="submit" value="Registrar" style="margin-left:40px;"/> 

</form>

                </section>          
                                                                            ';
                                }
                                else{
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
                                    
                                  <option value="bosque">Bosque Lluvioso</option>
                                  <option value="tropical">Bosque Tropical</option>
                                  <option value="seco">Bosque Seco</option>
                                  <option value="humedo">Bosque Humedo</option>
                                    
                                </select></td>
                          </tr>
                            
                          <tr><td>&nbsp; </td></tr>
                            
                          <tr>                              
                            <td width="500">
                                <label style="width: 150px; display: block; float: left;" >Color:</label>
                                <select style="width: 250px;">
                                    
                                  <option value="blanco">Blanco</option>
                                  <option value="rojo">Rojo</option>
                                  <option value="azul">Azul</option>
                                  <option value="verde">Verde</option>
                                    
                                </select></td>
                            </td>
                          </tr>
                            
                          <tr><td>&nbsp; </td></tr>
                            
                          <tr>                              
                            <td width="500">
                                <label style="width: 150px; display: block; float: left;" >Especie:</label>
                                <select style="width: 250px;">
                                    
                                  <option value="cuclillos">Cuclillos</option>
                                  <option value="chotacabras">Chotacabras</option>
                                  <option value="bucos">Bucos</option>
                                  <option value="jacamares">Jacamares</option>
                                    
                                </select></td>
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

				<!-- About Me -->
					<section id="about" class="three">
						<div class="container">

							<header>
								<h2>Sobre Mí</h2>
							</header>

							<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>
							
							<p>Descripción del usuario y su trabajo.</p>

						</div>
					</section>
			
				<!-- Contact -->
					<section id="contact" class="four">
						<div class="container">

							<header>
								<h2>Contactar a este usuario</h2>
							</header>

							<p>Esta sección permite contactar con el usuario, hacer cualquier consulta sobre sus hallazgos o consultas generales sobre ornitología.</p>
							
							<form method="post" action="#">
								<div class="row 50%">
									<div class="6u"><input type="text" name="name" placeholder="Nombre" /></div>
									<div class="6u"><input type="text" name="email" placeholder="Correo Electrónico" /></div>
								</div>
								<div class="row 50%">
									<div class="12u">
										<textarea name="message" placeholder="Mensaje"></textarea>
									</div>
								</div>
								<div class="row">
									<div class="12u">
										<input type="submit" value="Enviar Mensaje" />
									</div>
								</div>
							</form>

						</div>
					</section>
			
			</div>

		<!-- Footer -->
			<div id="footer">
				
				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; Ornitología de Costa Rica. Todos los derechos reservados.</li><li>Diseño: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				
			</div>

	</body>
</html>