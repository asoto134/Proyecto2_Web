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
                        <label style="width: 200px; display: block; float: left;" >Apellidos:</label>
                        <input id="campo2" name="apellidos" type="text" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
<!--
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Segundo Apellido:</label>
                        <input id="campo3" name="segundoApellido" type="text" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>

                  <tr><td>&nbsp; </td></tr>
-->
                  <tr>
                    <td width="500">
                        <label style="width: 200px; display: block; float: left;" >Email:</label>
                        <input id="campo4" name="email" type="text" onchange="verificarCorreo(this.value)" style="width: 200px; display: block; float: left;" />
                    </td>
                  </tr>
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
                        <label for="rescatista" style="width: 200px; display: block; float: left;" >Rescatista:</label>
                        <input type="radio" name="tipoPersona" id="rescatista" value="Rescatista" />
                    </td>
                  </tr>
                  <tr><td>&nbsp; </td></tr>
                  <tr>
                    <td width="500">
                        <label for="adoptante" style="width: 200px; display: block; float: left;" >Adoptante:</label>
                        <input type="radio" name="tipoPersona" id="adoptante" value="Adoptante" checked  />
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
                <legend>Loggin</legend>
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
                   <input id="campo3" name="entrar" type="submit" value="Entrar" />       
        </form>


    </section>

<!-- About Section 
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">About</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/1.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>2009-2011</h4>
                                    <h4 class="subheading">Our Humble Beginnings</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/2.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>March 2011</h4>
                                    <h4 class="subheading">An Agency is Born</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/3.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>December 2012</h4>
                                    <h4 class="subheading">Transition to Full Service</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/4.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>July 2014</h4>
                                    <h4 class="subheading">Phase Two Expansion</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <h4>Be Part
                                    <br>Of Our
                                    <br>Story!</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>-->




    
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
