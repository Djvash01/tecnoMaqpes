<?php

$nombre = $_POST["nombre"];
$email = $_POST["email"];
$asunto = $_POST["asunto"];
$telefono = $_POST["telefono"];
$mensaje = "Nombre: ".$nombre."<br>"."Correo: ".$email."<br>Mensaje:".$_POST["mensaje"] ."<br>"."Telefono: ".$telefono;



$mail = $mensaje;
//Titulo
$titulo = $asunto;
//cabecera
$headers = "MIME-Version: 1.0\r\n"; 
$headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
//dirección del remitente 
$headers .= "From: Tecnomaqpes < tecnomaqpes@gmail.com >\r\n";

//Enviamos el mensaje a tu_dirección_email 
$bool = mail("tecnomaqpes@gmail.com",$titulo,$mail,$headers);

if($bool){

	?>
    <!DOCTYPE HTML>
	<!--
		Dopetrope by HTML5 UP
		html5up.net | @ajlkn
		Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
	-->
	<html>
		<head>
			<title>TecnoMaqpes</title>
			<meta charset="utf-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1" />
			<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
			<link rel="stylesheet" href="../assets/css/main.css" />
			<link rel="stylesheet" href="../assets/css/productos.css" />
			<link href="../images/favicon.png" rel="shortcut icon" />
			<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		</head>
		<body class="homepage">
			<div id="page-wrapper">

				<!-- Header -->
					<div id="header-wrapper">
						<div id="header">

							<!-- Logo -->
								<h1><a href="../index.html"><img src="../images/logo2.png" alt="" /></a></h1>

							<!-- Nav -->
								<nav id="nav">
									<ul>
										<li><a href="../index.html">INICIO</a></li>
										<li><a href="../quienessomos.html">QUIENES SOMOS</a></li>
										<li class="current"><a href="#">PRODUCTOS</a></li>
										<li><a href="../servicios.html">SERVICIOS</a></li>
										<li><a href="../pedidos.html">PEDIDOS</a></li>
									</ul>
								</nav>
							
						</div>
					</div>

				<!-- Main -->
					<div id="main-wrapper">

						<div class="container">
							<h1>Su mensaje se ha enviado correctamente.</h1><br>
							<a href="../index.html" class="button ">Seguir navegando</a>
						</div>	
					</div>

				<!-- Footer -->
					<div id="footer-wrapper">
						<section id="footer" class="container">
							<div class="row">
								<div  class="12u 12u(mobile)">
									<section>
										<header>
											<h2 id="titlefooter">Encuentranos en las redes sociales</h2>
										</header>
										<ul class="social">
											<li><a class="icon fa-facebook" href="https://www.facebook.com/TECNOMAQPES" target="_blank"><span class="label">Facebook</span></a></li>
											<li><a class="icon fa-twitter" href="https://twitter.com/tecnomaqpes1" target="_blank"><span class="label">Twitter</span></a></li>
											<li><a class="icon fa-google-plus" href="https://plus.google.com/u/0/108572666278851822815" target="_blank"><span class="label">Google+</span></a></li>
										</ul>
										<ul class="contact">
											<li>
												<h3>Contacto</h3>
												<p>
													James Castro<br />
													Servicios Mecatronicos<br />
													Movil: (+57) 314 641 66 56<br />
													Correo: <a href="#">jaaldu@gmail.com</a>
												</p>
												<br/>
												<p>
													Natali Yesenia Marulanda<br />
													Asesora Comercial<br />
													Movil: (+57) 313 788 17 52<br />
													Correo: <a href="#">nayemalo@hotmail.com</a>
												</p>
											</li>
											<li>
												<h3>Teléfono</h3>
												<p>(+57) (034) 601 65 23</p>
											</li>
										</ul>
									</section>
								</div>
							</div>
							<div class="row">
								<div class="12u">

									<!-- Copyright -->
										<div id="copyright">
											<ul class="links">
												<li>&copy; Tecnomaqpes. Todos los derechos reservados.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
											</ul>
										</div>

								</div>
							</div>
						</section>
					</div>

			</div>

			<!-- Scripts -->
				<script src="../assets/js/jquery.min.js"></script>
				<script src="../assets/js/jquery.dropotron.min.js"></script>
				<script src="../assets/js/skel.min.js"></script>
				<script src="../assets/js/skel-viewport.min.js"></script>
				<script src="../assets/js/util.js"></script>
				<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
				<script src="../assets/js/main.js"></script>
				<script src="../assets/js/tecnomaqpes.js"></script>

		</body>
	</html>
	<?php
}else{
    ?>
    	<!DOCTYPE HTML>
		<!--
			Dopetrope by HTML5 UP
			html5up.net | @ajlkn
			Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
		-->
		<html>
			<head>
				<title>TecnoMaqpes</title>
				<meta charset="utf-8" />
				<meta name="viewport" content="width=device-width, initial-scale=1" />
				<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
				<link rel="stylesheet" href="../assets/css/main.css" />
				<link rel="stylesheet" href="../assets/css/productos.css" />
				<link href="../images/favicon.png" rel="shortcut icon" />
				<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
			</head>
			<body class="homepage">
				<div id="page-wrapper">

					<!-- Header -->
						<div id="header-wrapper">
							<div id="header">

								<!-- Logo -->
									<h1><a href="../index.html"><img src="../images/logo2.png" alt="" /></a></h1>

								<!-- Nav -->
									<nav id="nav">
										<ul>
											<li><a href="../index.html">INICIO</a></li>
											<li><a href="../quienessomos.html">QUIENES SOMOS</a></li>
											<li class="current"><a href="#">PRODUCTOS</a></li>
											<li><a href="../servicios.html">SERVICIOS</a></li>
											<li><a href="../pedidos.html">PEDIDOS</a></li>
										</ul>
									</nav>
								
							</div>
						</div>

					<!-- Main -->
						<div id="main-wrapper">

							<div class="container">
								<span>Ocurrió un error al enviar su mensaje por favor intentelo de nuevo.</span>
							</div>	
						</div>

					<!-- Footer -->
						<div id="footer-wrapper">
							<section id="footer" class="container">
								<div class="row">
									<div  class="12u 12u(mobile)">
										<section>
											<header>
												<h2 id="titlefooter">Encuentranos en las redes sociales</h2>
											</header>
											<ul class="social">
												<li><a class="icon fa-facebook" href="https://www.facebook.com/TECNOMAQPES" target="_blank"><span class="label">Facebook</span></a></li>
												<li><a class="icon fa-twitter" href="https://twitter.com/tecnomaqpes1" target="_blank"><span class="label">Twitter</span></a></li>
												<li><a class="icon fa-google-plus" href="https://plus.google.com/u/0/108572666278851822815" target="_blank"><span class="label">Google+</span></a></li>
											</ul>
											<ul class="contact">
												<li>
													<h3>Contacto</h3>
													<p>
														James Castro<br />
														Servicios Mecatronicos<br />
														Movil: (+57) 314 641 66 56<br />
														Correo: <a href="#">jaaldu@gmail.com</a>
													</p>
													<br/>
													<p>
														Natali Yesenia Marulanda<br />
														Asesora Comercial<br />
														Movil: (+57) 313 788 17 52<br />
														Correo: <a href="#">nayemalo@hotmail.com</a>
													</p>
												</li>
												<li>
													<h3>Teléfono</h3>
													<p>(+57) (034) 601 65 23</p>
												</li>
											</ul>
										</section>
									</div>
								</div>
								<div class="row">
									<div class="12u">

										<!-- Copyright -->
											<div id="copyright">
												<ul class="links">
													<li>&copy; Tecnomaqpes. Todos los derechos reservados.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
												</ul>
											</div>

									</div>
								</div>
							</section>
						</div>

				</div>

				<!-- Scripts -->
					<script src="../assets/js/jquery.min.js"></script>
					<script src="../assets/js/jquery.dropotron.min.js"></script>
					<script src="../assets/js/skel.min.js"></script>
					<script src="../assets/js/skel-viewport.min.js"></script>
					<script src="../assets/js/util.js"></script>
					<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
					<script src="../assets/js/main.js"></script>
					<script src="../assets/js/tecnomaqpes.js"></script>

			</body>
		</html>
    <?php
}

?>