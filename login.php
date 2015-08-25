<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
	<?php require_once("header2.php") ?>
			<div class="row">
				<div class="col-md-4 col-md-push-4 login-form" >
					<div class="login-pad">
						<h3>Ingreso</h3>
						<form>
							<input type="text" value="Nombre de usuario o correo electronico" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Nombre de usuario o correo electronico';}" required="">
							<input type="password" value="Contrasena" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Contrasena';}" required="">							
							<input type="submit" value="SIGN IN">
						</form>
						<a href="#">Olvido la contrasena?</a>
						<p>O</p>
					</div>
					<div class="new-here">					
						<div class="new-grids">	
							<a href="#">FACEBOOK</a>
						</div>
						<div class="new-grids twit-grid">	
							<a href="#">TWITTER</a>
						</div>
					</div>
				</div>
			</div>
	<?php require_once("footer.php") ?>
