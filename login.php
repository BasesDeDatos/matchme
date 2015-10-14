<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->	
	<?php require_once("header2.php") ?>
	<?php $_SESSION["active_user_id"] = "" ?> 
			<div class="row">
				<div class="col-md-4 col-md-push-4 login-form" >
					<div class="login-pad">
						<h3>Ingreso</h3>
						<form id="form_data">
							<input name="Email" id="Email" type="text" value="Correo Electrónico" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Correo Electrónico';}" required="">
							<input name="Clave" id="Clave" type="password" value="contrasena" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'contrasena';}" required="">							
							<input name="mode" type="hidden" value="loggin">
							<input class="submit" type="button" value="ENTRAR" onclick="logging();">
						</form>
						<a href="#">¿Olvido la contrasena?</a>
						<p>¿No está registrado?</p>
						<a href="register.php">Crea una nueva cuenta</a>
					</div>
					<!--<div class="new-here">					-->
					<!--	<div class="new-grids">	-->
					<!--		<a href="#">FACEBOOK</a>-->
					<!--	</div>-->
					<!--	<div class="new-grids twit-grid">	-->
					<!--		<a href="#">TWITTER</a>-->
					<!--	</div>-->
					<!--</div>-->
				</div>
			</div>
	<?php require_once("footer.php") ?>
	
	<script type="text/javascript">
		function logging(){
			if ($("#Email").val() == "Correo Electrónico" ) $("#Email").click().val("Correo Electrónico Requerido*");
			else if ($("#Clave").val() != "contrasena" ){
				var data = $("#form_data").serialize();
				$.post("funcionesOracle.php", data, function(data){
					$("body").append("<div id='debug'></div>");
					$("#debug").html(data);
				});
			}
		}
	</script>
