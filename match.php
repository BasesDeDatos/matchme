<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
	<?php require_once("header.php") ?>
		<div class="col-md-4">
			<div class="content-right">
						<div class="cntnt-img">
						</div>
						<div class="bnr-img">
							<img src= <?php echo "profile_pics/".$arrayQuery["FOTO"][0] ?> alt=""/>
						</div>
						<div class="bnr-text">
							<h1>
								<?php if ($edit){ ?>
									Nombre:
									<input type = "text" 
										name = "nombre" 
										value = <?php echo $arrayQuery["NOMBRE"][0] ?>
										default = <?php echo $arrayQuery["NOMBRE"][0] ?>/>
									Primer Apellido:
									<input type = "text" 
										name = "Primer_apellido" 
										value = <?php echo $arrayQuery["PRIMER_APELLIDO"][0] ?>
										default = <?php echo $arrayQuery["PRIMER_APELLIDO"][0] ?>/>
									Segundo Apellido:
									<input type = "text" 
										name = "Segundo_apellido" 
										value = <?php echo $arrayQuery["SEGUNDO_APELLIDO"][0] ?>
										default = <?php echo $arrayQuery["PRIMER_APELLIDO"][0] ?>/>
								<?php } else { ?> 
								<?php echo $arrayQuery["NOMBRE"][0]." ".$arrayQuery["PRIMER_APELLIDO"][0]." ".$arrayQuery["SEGUNDO_APELLIDO"][0] ?>								<?php }	?>
							</h1>
							
							<h5>
								<?php if ($edit){ ?>
									<input type="email"
										value = <?php echo $arrayQuery["EMAIL"][0] ?>
										default = <?php echo $arrayQuery["EMAIL"][0] ?>
										name="Email" />
								<?php } else { ?> 
									<?php echo $arrayQuery["EMAIL"][0] ?>
								<?php }	?>
							</h5>
							
							<p>
								<?php if ($edit){ ?>
									<input type="textarea"
										value = <?php echo $arrayQuery["ID_ESTILOVIDA"]["SLOGAN"][0] ?>
										default = <?php echo $arrayQuery["ID_ESTILOVIDA"]["SLOGAN"][0] ?>
										name="ID_EstiloVida" />
								<?php } else { ?> 
									<?php echo $arrayQuery["ID_ESTILOVIDA"]["SLOGAN"][0] ?>
								<?php }	?>
							</p>
							
							<hr/>
							<div class="resumen">
								<p>
									Genero: <?php if ($edit){ ?>
									<select type="textarea"
										value = <?php echo $arrayQuery["GENERO"][0] ?>
										name="GENERO"> 
										<option value="Masculino" 
											<?php echo $arrayQuery["GENERO"][0] == "Masculino"? "selected" : "" ?> >
											Masculino
										</option>
										<option value="Femenino"
											<?php echo $arrayQuery["GENERO"][0] == "Femenino"? "selected" : "" ?> >
											Femenino
										</option>
									</select>
									<?php } else { ?> 
										<?php echo $arrayQuery["GENERO"][0] ?>
									<?php }	?>
								</p>

								
								<p>
									<?php if ($edit){ ?>
										Fecha Nacimiento: 
										<input type = "date" 
											name = "Fecha_Nac" 
											value = <?php echo $arrayQuery["FECHA_NAC"][0] ?>
											default = <?php echo $arrayQuery["FECHA_NAC"][0] ?> />
									<?php } else { ?> 
									Edad: <?php echo $arrayQuery["EDAD"][0] ?>
									<?php }	?>
								</p>
								
								<p><?php if ($edit){ ?>
										<select type = "date" 
										name = "Fecha_Nac"></select>
								<?php } else { ?> 
									Ubicación: <?php echo $arrayQuery["ID_CIUDAD"]["NOMBRE"][0].", ".$arrayQuery["ID_CIUDAD"]["ID_ESTADO"]["NOMBRE"][0].", ".$arrayQuery["ID_CIUDAD"]["ID_ESTADO"]["ID_PAIS"]["NOMBRE"][0]?>
								<?php }	?>
								</p>
								<p>Altura: <?php echo $arrayQuery["ID_ASPECTOF"]["ALTURA"][0] ?> </p>
								<p>Peso: <?php echo $arrayQuery["ID_ASPECTOF"]["PESO"][0] ?> </p>
								<p>Busco: <?php echo $arrayQuery["ID_INTERES_GUSTO"]["TIPO_PAREJA"][0]."s"?> </p>
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
		<div class="col-md-4">
			<div class="circles">
					<h3>STATUS RECENT PROJECTS</h3>
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
		<div class="col-md-4">
			<div class="content-right">
				<div class="cntnt-img">
				</div>
				<div class="bnr-img">
					<img src=<?php $Foto_perfil ?> alt=""/>
				</div>
				<div class="bnr-text">
					<h1>Lorem Ipsum<?php echo $Nombre." ".$Primer_apellido." ".$Segundo_apellido ?></h1>
					<h5>www.design has.com<?php echo $Email ?></h5>
					<p>A wonderful designs has takenpossession of dummy text quis nostrum dummy text<?php echo $Slogan ?></p>
				</div>
			</div>
		</div>
	<?php require_once("footer.php") ?>
