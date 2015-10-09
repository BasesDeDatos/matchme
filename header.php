<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="es">
<head>
	<title>MatchMe.com</title>
	<link rel="icon" type="image/png" href="/images/icon.ico" />
	
	<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
	<link href="css/profile.css" type="text/css" rel="stylesheet" media="all">
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"" />
	<meta name="keywords" content="Ask UI Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Custom Theme files -->
	
	<link rel="stylesheet" href="css/clndr.css" type="text/css" />
	
	<link href="css/jquery.nouislider.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/fd-slider.css">	
	<link rel="stylesheet" href="css/graph.css">
	<link href="css/jplayer.blue.monday.min.css" rel="stylesheet" type="text/css" />	
	<link href="css/jquery-ui.css" rel="stylesheet" type="text/css" />
	
</head>

<body>
	
	<?php session_start();
		if  ($_SESSION["active_user_id"] == "" || $_SESSION["active_user_id"] == -1) {
			header('Location: login.php');
		}
	?>
	<div class="content">
		<div class="container">
			<!--navigation-->
			<div class="logo-top">
				<a href="index.php"><img src="images/logo-top.png" alt=""/></a>
			</div>
			<div class="header">
				<div class="logo">
					<a href="index.php"><img src="images/logo.png" alt=""/></a>
				</div>
				<div class="top-nav">
					<span class="menu">Menu</span>		
					<ul class="nav1">
						<li><a href="match.php" data-hover="Match">Match</a></li>					
						<li><a href="profile.php" data-hover="Perfil">Perfil</a></li>
						<li><a href="aboutus.php" data-hover="Sobre nosotros">Sobre nosotros</a></li>
						<li><a href="contactus.php" data-hover="Contacto">Contacto</a></li>
						<li><a href="manual.php" data-hover="Contacto">Contacto</a></li>

					</ul>				
				</div>
				<div class="search">
					<form>
						<input type="search" value="Buscar" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Buscar';}" required="">
						<input type="submit" value=" ">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>