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
	<!-- Custom Theme files -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="keywords" content="Ask UI Kit Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
		Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
	<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
	<!-- //Custom Theme files -->
	
	<script src="js/jquery-1.11.1.min.js"></script>

	<!-- biblioteca para lectura de las fotos-->
	<link rel="stylesheet" type="text/css" href="css/fileinput.min.css" />
 	<script type="text/javascript" src="js/fileinput.min.js"></script>
 	
 	<script type="text/javascript">
		jQuery(document).ready(function($) {	
	 		$("#input-foto").fileinput({
				maxFileCount: 1,
				maxFileSize: "4000",
				
				uploadUrl: "uploadFoto.php", // server upload action
	    		uploadAsync: false,
				
				previewFileType: "image",
				
				browseLabel: "Cargar Foto",
				dropZoneTitle: "Arrastre su foto hasta aquí",
	
				showUpload: false,
				showCaption: false,
				showRemove: false,
	
				layoutTemplates: {
					main1: 
					'{preview}\n' +
					'<div class="kv-upload-progress"></div>\n' +
					'<div class="input-group {class}">\n' +
					'   {caption}\n' +
					'   <div class="input-group-btn">\n' +
					'       {remove}\n' +
					'       {cancel}\n' +
					'       {upload}\n' +
					'       {browse}\n' +
					'   </div>\n' +
					'</div>',
				}
				
			}).on("filebatchselected", function(event, files) {
				
				// trigger upload method immediately after files are selected
				$(this).fileinput("upload");
				console.dir(files);// debug
			
				var nombreImagen = files[0]["name"];
				var rutaImagenCargada = nombreImagen;
				alert(rutaImagenCargada);
				$("#Foto").val(rutaImagenCargada)
			})
		});

	</script>
	
</head>

<body>
	<div class="content">
		<div class="container">
			<!--navigation-->
			<div class="logo-top">
				<a href="login.php"><img src="images/logo-top.png" alt=""/></a>
			</div>