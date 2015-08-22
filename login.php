<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffry Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
	<?php require_once("header.php") ?>
			<div class="row">
				<div class="col-md-4 col-md-push-4 login-form" >
					<div class="login-pad">
						<h3>Account Login</h3>
						<form>
							<input type="text" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" required="">
							<input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">							
							<input type="submit" value="SIGN IN">
						</form>
						<a href="#">Forgot Password?</a>
						<p>OR LOGIN WITH</p>
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
