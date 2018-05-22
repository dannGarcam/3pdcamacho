<!DOCTYPE HTML>
<html>
<head>
<meta charset='UTF-8'>
<link rel="stylesheet" type="text/css" href="css/style.css">
<title>Alta usuarios</title>
</head>
<body>
	<div class="pagina">
		<?php
		session_start();

		if ($_SESSION['pag']<1){
			header("Location: login.php");
		}

		$_SESSION['pag']=0;

		$_SESSION['alta']=1;

		?>
		<div class="encabezado">
			<h1>Usuario nuevo</h1>
		</div>

		<div class="contenido">
			<form action="alta.php" method="post">
			<h2>Ingrese los datos correspondientes</h2>
			<div class="form">
				Nombre: <input type="text" name="nombre" required><br><br>
				Apellido paterno: <input type="text" name="apaterno" required><br><br>
				Apellido materno: <input type="text" name="amaterno"><br><br>
				Correo: <input type="text" name="correo"><br><br>
				Telefono: <input type="text" name="telefono"><br><br>
				Nombre de usuario: <input type="text" name="user" required><br><br>
				Contraseña: <input type="password" name="pass" required><br><br>
				<input type="submit" value="Enviar">
			</form>
	
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = 'https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v3.0';
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>

		<div class="fb-like" data-href="https://www.facebook.com/UNAM.MX.Oficial/" data-layout="standard" data-action="like" data-size="large" data-show-faces="false" data-share="true"></div>

		</div>
		</div>

		<div class="pie">
			<a href="contacto.php">Contacto</a><p> | </p>
	<a href="consulta.php">Consulta de usuarios</a><p> | </p>
        <a href="creditos.php">Creditos</a>
		</div>
	</div>
</body>
</html>
