<?php
include ("settings.php");
include ("common.php");
error_reporting(0);
//Al presionar el boton de login
if (isset($_POST['entrar']))
{ // if form has been submitted
   if(!$_POST['logNomusuario'] | !$_POST['logContrasenia'])
   {//Verificar que las casillas no esten en blanco
      die('Es necesario escribir un Usuario y una contraseÃ±a <a href=index.php>Intente de nuevo</a>');
      
   }
   $usuario = $_POST['logNomusuario'];

    $conexionConBaseDeDatos=mysql_connect(HOST, USER, PASS);

    @mysql_select_db(DB, $conexionConBaseDeDatos) or die("Error en la seleccion, '$php_errormsg'");

    $consultaSql = "SELECT NomUsuario, Contrasenia, permisos FROM usuario WHERE NomUsuario = '" . $usuario . "'";

    $resultadoConsulta = mysql_query($consultaSql);   
   
   if (mysql_num_rows($resultadoConsulta) == 0) 
   {
       echo "<script>alert(\"El usuario no existe en la base de datos.\");</script>";
       echo "<script>javascript:history.back();</script>";
   }
   
   
   while ($row = mysql_fetch_array($resultadoConsulta))
   {
      if (md5($_POST['logContrasenia']) != $row['Contrasenia']) 
      {
          echo "<script>alert(\"Password incorrecto.\");</script>";
          echo "<script>javascript:history.back();</script>";
      }
      else
      {

            $nom_Usuario = $_POST['logNomusuario'];
            $Ornitologo = FALSE;

            $consultaSql2 = "SELECT Tipo_de_Persona_idTipo_de_Persona FROM persona INNER JOIN usuario 
                      ON persona.Usuario_idUsuario = usuario.idUsuario
                      WHERE usuario.NomUsuario = '$nom_Usuario'";
            
            $resultadoConsulta2 = mysql_query($consultaSql2);
            While ($row2 = mysql_fetch_array($resultadoConsulta2))
            {
                if($row2['Tipo_de_Persona_idTipo_de_Persona'] == 1)
                {
                    $Ornitologo = TRUE;
                }
            }
            
            if($Ornitologo){header("Location: index2.php");}
            else{header("Location: index2.php");}
            actualizar_cookie($_POST['logNomusuario'],md5($_POST['logContrasenia']),$row['permisos']);
      }
   }
    mysql_close($conexionConBaseDeDatos);
}
 
  
?>





<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>

    <meta charset="utf-16">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Asociación Costarricense de Ornitología</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/agency.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='http://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

 

     
        
</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">Asociación Costarricense de Ornitología</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Registro</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">Entrar</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">Nosotros</a>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">¡Bienvenido!</div>
                <div class="intro-heading">A la aventura</div>
             <!--   <a href="#services" class="page-scroll btn btn-xl">Tell Me More</a> -->
            </div>
        </div>
    </header>

    <!-- Services Section -->
    <section id="services">
        
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Registro</h2>
                    <h3 class="section-subheading text-muted">Registrese para poder acceder al contenido</h3>
                </div>
            </div>


        <form action="registro.php" method="post" >
            <legend>Formulario de Registro</legend>
                <br/><br/>
                <table style="float: left;" >
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Nombre:</label>
                        <input id="campo1" name="nombre" type="text" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Apellido:</label>
                        <input id="campo2" name="apellidos" type="text" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >&nbsp;</label>
                        <label style="width: 200px; display: block; float: left;" >ejemplo: 123456789</label>
                    </td>
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Cédula:</label>
                        <input id="campo5" name="cedula" type="text" onkeypress="return justNumbers(event);" onchange="verificarCedula(this.value)" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >&nbsp;</label>
                        <label style="width: 200px; display: block; float: left;" >ejemplo: 22446688</label>
                    </td>
                  </tr>
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Teléfono:</label>
                        <input id="campo7" name="telefono" type="text" onkeypress="return justNumbers(event);"  style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
                  <tr>
                    <td width="500">
                        <label for="ornitologo" style="width: 200px; display: block; float: left;" >Ornitologo:</label>
                        <input type="radio" name="tipoPersona" id="rescatista" value="Ornitologo" />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
                  <tr>
                    <td width="500">
                        <label for="aficionado" style="width: 200px; display: block; float: left;" >Aficionado:</label>
                        <input type="radio" name="tipoPersona" id="adoptante" value="Aficionado" checked  />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
                </table>

                <table style="float: left;">
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Nombre Usuario:</label>
                        <input id="campo8" name="nomUsuario" type="text" onchange="verificarUsuario(this.value)" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Contraseña:</label>
                        <input id="campo9" name="contrasenia" type="password" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Email:</label>
                        <input id="campo4" name="email" type="text" onchange="verificarCorreo(this.value)" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>




                </table>
                <div style="clear: both;"></div>
                
                <input id="campo10" name="enviar" type="submit" value="Enviar" />                
                
	</form>

    

    </section>

    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Entrar</h2>
                    <h3 class="section-subheading text-muted">¡Registra todos tus hallazgos!</h3>
                </div>
            </div>
        </div>

        <form id="loggin" action="index.php" method="post">
                <legend>Entrar al Sistema</legend>
                <table style="float: left;">
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Nombre Usuario:</label>
                        <input id="campo1" name="logNomusuario" type="text" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Contraseña:</label>
                        <input id="campo2" name="logContrasenia" type="password" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
                </table>
                   <div style="clear: both;"></div>
                   <br/><br/>
                   <input id="campo3" name="entrar" type="submit" value="Entrar" />       
        </form>


    </section>

 
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Nosotros</h2>
                    <h3 class="section-subheading text-muted">Página desarrollada por estudiantes para el curso de Bases de Datos I.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/nelson.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>Nelson Abarca Quirós</h4>
                                    <h4 class="subheading">Desarrollador: Base de Datos</h4>
                                </div>
                                <div class="timeline-body">
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/liz.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>Liza Chaves Carranza</h4>
                                    <h4 class="subheading">Diseñadora Web</h4>
                                </div>
                                <div class="timeline-body">
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/amanda.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>Amando Solano Astorga</h4>
                                    <h4 class="subheading">Desarrolladora: Consultas</h4>
                                </div>
                                <div class="timeline-body">
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/meli.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>Melissa Molina Corrales</h4>
                                    <h4 class="subheading">Desarolladora e Investigadora: Bases de Datos</h4>
                                </div>
                                <div class="timeline-body">
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/adrian.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>Adrián Soto Loría</h4>
                                    <h4 class="subheading">Programador Principal</h4>
                                </div>
                                <div class="timeline-body">
                                </div>
                            </div>
                        </li>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>



    <!-- Validaciones -->
    <script src="js/misFunciones.js"></script>
    
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="js/classie.js"></script>
    <script src="js/cbpAnimatedHeader.js"></script>



    <!-- Custom Theme JavaScript -->
    <script src="js/agency.js"></script> 
    
    

</body>

</html>
