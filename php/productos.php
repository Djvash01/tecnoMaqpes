<?php

include_once "conexion.php";

$conexion = Conexion::getInstance();

$idCategoria = $_GET["categoria"];

$categoria = $conexion->get_data("SELECT * FROM categorias WHERE id = $idCategoria");
$dataCategoria = array_values($categoria)[2];

$productos = $conexion->get_data("SELECT * FROM productos WHERE categoria = $idCategoria");
$dataProductos = array_values($productos)[2];

$nombreCategoria = current($dataCategoria)["nombre"];

//var_dump($categoria);
//var_dump($dataProductos);


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
									<!--<li><a href="../servicios.html">SERVICIOS</a></li>-->
									<li><a href="../contacto.html">CONTACTO</a></li>
								</ul>
							</nav>
						
					</div>
				</div>

			<!-- Main -->
				<div id="main-wrapper">

					<div class="container">

							<div class="filtro">
								<div class="categoria">
									<span>Categoria: </span>
									<select id="categoria" onchange="cargar()">
										<?php

											$categorias = $conexion->get_data("SELECT * FROM categorias ORDER BY id");
											$dataCategorias = array_values($categorias)[2];

											for($i=0; $i<count($dataCategorias); $i++)
										    {
										      	 $categoria = array_values($dataCategorias)[$i];
										      	 $id = $categoria["id"];
										      	 $nombre = $categoria["nombre"];

										      	 $esActual = "";

										      	 if($id == $idCategoria)
										      	 {
										      	 	$esActual = "selected";
										      	 }

										      	 echo '<option value="'.$id.'" '.$esActual.'>'.$nombre.'</option>';
										    }

								      	?>
									</select>
								</div>
							</div>
						<div class="row">
							<div class="12u">

								<!-- Portfolio -->
									<section>
										<?php
											$contador = 1;

											if(count($dataProductos) == 0)
											{
												echo "<span>No se encontraron resultados para esta categoría.</span>";
											}

									      for($i=0; $i<count($dataProductos); $i++)
									      {
								      		if($contador == 1)
								      		{
								      			echo '<div class="row">';
								      		}

									      	 $producto = array_values($dataProductos)[$i];
									      	 $nombreImagen = $producto["ruta_imagen"];
									      	 $nombreProducto = $producto["nombre"];
									      	 $descripcion = $producto["descripcion"];

								      		//saco el valor de cada elemento
										    //var_dump($producto);
									      	 ?>
									      	 <div class="4u 12u(mobile)">
												<section class="box">
													<a class="image featured"><img src="../images/productos/<?php echo $nombreImagen; ?>" alt="" /></a>
													<header>
														<h3><?php echo $nombreProducto; ?></h3>
													</header>
													<p><?php echo $descripcion; ?></p>
													<!--<footer>
														<a href="#" class="button alt">Find out more</a>
													</footer>-->
												</section>
											</div>

											<?php

											$contador ++;

								      		if($contador == 4){
								      			echo '</div>';
								      			$contador = 1;
								      		}
									      }
										?>
									</section>

							</div>
						</div>
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