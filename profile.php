<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffry Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
	<!--?php require_once("header.php") ?-->
		<div class="row">
			<div class="col-md-10 col-md-push-1" > 
				<div class ="contenedor" >
					<div class = "tituloPerfil">
						<h2>Ver perfil</h2>
					</div>
					<div class= "columnaUno">
						<form>
							<input type="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required="">
							<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">							
							<input type="submit" value="SIGN IN">
						</form>
					</div>
					<div class = "columnaDos">
						<form>
							<input type="text" value="texto" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required="">
							<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">							
							<input type="submit" value="SIGN IN">
						</form>	
					</div>
				</div>
			</div>
		</div>
	<?php require_once("footer.php") ?>
