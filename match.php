<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
		<?php $conexion = ""; 
		require_once("header.php"); 
		$arrayQuery = array(); 
		$_POST["mode"] = "get_home"; 
		$user_id = $_SESSION["active_user_id"];
		include ("funcionesOracle.php");
		?>
		
		<pre id= "debug">
		<?php var_dump ($arrayQuery["MATCH"]); ?>
		</pre>
		
		<div class="col-md-4">
			<div class="content-right">
				<div class="content-right">
						<div class="cntnt-img">
						</div>
						<div class="bnr-img">
							<img src= <?php echo "profile_pics/".$arrayQuery["FOTO"][0] ?> alt=""/>
						</div>
						<div class="bnr-text">
							<h1>
								<?php echo $arrayQuery["NOMBRE"][0]." ".$arrayQuery["PRIMER_APELLIDO"][0]." ".$arrayQuery["SEGUNDO_APELLIDO"][0] ?>	
							</h1>
							
							<h5>
									<?php echo $arrayQuery["EMAIL"][0] ?>

							</h5>
							
							<p>
								 
									<?php echo $arrayQuery["ID_ESTILOVIDA"]["SLOGAN"][0] ?>
							</p>
							
							<hr/>
							<div class="resumen">
								<p>
									Genero: <?php echo $arrayQuery["ID_GENERO"]["NOMBRE"][0]?>

								</p>

								
								<p>
									Edad: <?php echo $arrayQuery["EDAD"][0] ?>
								</p>
								
								<p>
									Ubicación: <?php echo $arrayQuery["ID_CIUDAD"]["NOMBRE"][0].", ".$arrayQuery["ID_CIUDAD"]["ID_ESTADO"]["NOMBRE"][0].", ".$arrayQuery["ID_CIUDAD"]["ID_ESTADO"]["ID_PAIS"]["NOMBRE"][0]?>
								</p>
								<p>Altura: <?php echo $arrayQuery["ID_ASPECTOF"]["ALTURA"][0] ?> </p>
								<p>Peso: <?php echo $arrayQuery["ID_ASPECTOF"]["PESO"][0] ?> </p>
								<p>Busco: <?php echo $arrayQuery["ID_INTERES_GUSTO"]["ID_GENERO"]["NOMBRE"][0]."s"?> </p>
								<p>Entre: <?php echo $arrayQuery["ID_INTERES_GUSTO"]["RANGO_EDADI"][0]." y ".$arrayQuery["ID_INTERES_GUSTO"]["RANGO_EDADF"][0] ?></p>
							</div>
						</div>
						<div class="btm-num">
							<ul>
								<li>
									<h4><?php echo count($arrayQuery["WINK"]["ID_ENVIADO"])?></h4>
									<h5>Winks</h5>
								</li>
								<li>
									<h4><?php echo count($arrayQuery["VISITAS"]["ID_VISITANTE"])?></h4>
									<h5>Visitas</h5>
								</li>
								<li>
									<h4>60</h4>
									<h5>Matches</h5>
								</li>
							</ul>
						</div>
						<input type="button" name="wink" class="next action-button" value="Dar un wink"/>
				</div>	
			</div>
		</div>
		<!--PORCENTAJES-->
		<div class="col-md-4">
			<div class="circles">
					<h3>Recomendaciones</h3>
					<div class="demo">
						<div class="demo-1" data-percent="65">
							<div class="title">
								<h4>Meier</h4>
								<p>Stairs</p>
							</div>
						</div>
						<div class="demo-2" data-percent="78">
							<div class="title2">
								<h4>Johnson</h4>
								<p>Exterior wall</p>
							</div>
						</div>
						<div class="demo-3" data-percent="95">
							<div class="title1">
								<h4>Junns</h4>
								<p>Teriorwall </p>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>	
					<script type="text/javascript">

					  var _gaq = _gaq || [];
					  _gaq.push(['_setAccount', 'UA-36251023-1']);
					  _gaq.push(['_setDomainName', 'jqueryscript.net']);
					  _gaq.push(['_trackPageview']);

					  (function() {
						var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
						ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
						var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
					  })();

					</script>
			</div>
		</div>
		<!--MATCHES-->
		<?php foreach($arrayQuery["MATCH"]["ID_RECOMENDACION"] as $recomendacion){ ?>
			<div class="col-md-4">
				<div class="content-right">
					<div class="content-right">
							<div class="cntnt-img">
							</div>
							<div class="bnr-img">
								<img src= <?php echo "profile_pics/".$recomendacion["FOTO"][0] ?> alt=""/>
							</div>
							<div class="bnr-text">
								<a href = "profile.php?user_id=<?php echo $recomendacion["ID_USUARIO"][0] ?> "> 
									<h1> 
										<?php echo $recomendacion["NOMBRE"][0]." ".$recomendacion["PRIMER_APELLIDO"][0]." ".$recomendacion["SEGUNDO_APELLIDO"][0] ?>	
									</h1>
								</a>								
								<h5>
										<?php echo $recomendacion["EMAIL"][0] ?>	
								</h5>								
								<p>									 
										<?php echo $recomendacion["ID_ESTILOVIDA"]["SLOGAN"][0] ?>
								</p>								
								<hr/>
								<div class="resumen">
									<p>
										Genero: <?php echo $recomendacion["ID_GENERO"]["NOMBRE"][0]?>
	
									</p>
	
									
									<p>
										Edad: <?php echo $recomendacion["EDAD"][0] ?>
									</p>
									
									<p>
										Ubicación: <?php echo $recomendacion["ID_CIUDAD"]["NOMBRE"][0].", ".$recomendacion["ID_CIUDAD"]["ID_ESTADO"]["NOMBRE"][0].", ".$recomendacion["ID_CIUDAD"]["ID_ESTADO"]["ID_PAIS"]["NOMBRE"][0]?>
									</p>
									<p>Altura: <?php echo $recomendacion["ID_ASPECTOF"]["ALTURA"][0] ?> </p>
									<p>Peso: <?php echo $recomendacion["ID_ASPECTOF"]["PESO"][0] ?> </p>
									<p>Busco: <?php echo $recomendacion["ID_INTERES_GUSTO"]["ID_GENERO"]["NOMBRE"][0]."s"?> </p>
									<p>Entre: <?php echo $recomendacion["ID_INTERES_GUSTO"]["RANGO_EDADI"][0]." y ".$recomendacion["ID_INTERES_GUSTO"]["RANGO_EDADF"][0] ?></p>
								</div>
							</div>
							<div class="btm-num">
								<ul>
									<li>
										<h4><?php echo count($recomendacion["WINK"]["ID_ENVIADO"])?></h4>
										<h5>Winks</h5>
									</li>
									<li>
										<h4><?php echo count($recomendacion["VISITAS"]["ID_VISITANTE"])?></h4>
										<h5>Visitas</h5>
									</li>
									<li>
										<h4>60</h4>
										<h5>Matches</h5>
									</li>
								</ul>
							</div>
							<input type="button" name="wink" class="next action-button" value="Dar un wink"/>
					</div>	
				</div>
			</div>
		<?php } ?>
		
	<?php require_once("footer.php") ?>
