<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffry Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?php 
	require_once("header.php");
	
	$active_user_id = $_SESSION["active_user_id"];

	$edit = array_key_exists('edit', $_GET) ? ($_GET["edit"]? 1 : 0) : 0;

	$_GET["user_id"] = array_key_exists('user_id', $_GET) ? $_GET["user_id"] : $active_user_id;

	$user_id = $edit ? $active_user_id : $_GET["user_id"];
	
	$arrayQuery = array(); 
	$_POST["mode"] = "get_profile"; 
	include ("funcionesOracle.php");
if ($edit){ ?>
	<form id="form_data">
		<input type="hidden" name="edit" value="1"/>
	<?php 
} ?>

<div id="debug"></div>

<div class ="container-fluid" id = "contenedor" >
	<!--div class="row">
		<div class="col-md-12" > 
			<div class = "tituloPerfil">
				<h2>Ver perfil</h2>
			</div>
		</div>
	</div-->
		<div class="row" > 
			<div class= "col-md-4 columnaUno">
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
										<?php echo $arrayQuery["ID_GENERO"]["NOMBRE"][0]?>
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
								<p>Busco: <?php echo $arrayQuery["ID_INTERES_GUSTO"]["ID_GENERO"]["NOMBRE"][0]."s"?> </p>
								<p>Entre: <?php echo $arrayQuery["ID_INTERES_GUSTO"]["RANGO_EDADI"][0]." y ".$arrayQuery["ID_INTERES_GUSTO"]["RANGO_EDADF"][0] ?></p>
							</div>
						</div>
						<div class="btm-num">
							<ul>
								<li>
									<h4 id= "num_winks"><?php echo array_key_exists('ID_ENVIADO', $arrayQuery["WINK"]) ? count($arrayQuery["WINK"]["ID_ENVIADO"]): 0;
										?></h4>
									<h5>Winks</h5>
								</li>
								<li>
									<h4><?php echo array_key_exists('ID_VISITANTE', $arrayQuery["VISITAS"]) ?count($arrayQuery["VISITAS"]["ID_VISITANTE"]): 0
										?></h4>
									<h5>Visitas</h5>
								</li>
								<li>
									<h4><?php echo array_key_exists('ID_RECOMENDACION', $arrayQuery["MATCH"]) ? count($arrayQuery["MATCH"]["ID_RECOMENDACION"]) :0
									?></h4>
									<h5>Matches</h5>
								</li>
							</ul>
						</div>
						<?php if($user_id != $_SESSION["active_user_id"]){?>
							<input type="button" id="wink" class="submit action-button" value="Dar un wink"/>
							<hr/>
						<?php }?>
						
				</div>
			</div>

			<div class= "col-md-8">
				<div id="tap">
					<input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked" />
					<label for="tab-1" class="tab-label-1">Background</label>
				   
					<input id="tab-2" type="radio" name="radio-set" class="tab-selector-2" />
					<label for="tab-2" class="tab-label-2">Estilo de Vida</label>
				   
					<input id="tab-4" type="radio" name="radio-set" class="tab-selector-4" />
					<label for="tab-4" class="tab-label-4">Intereses y gustos</label>
					
					<!--input id="tab-5" type="radio" name="radio-set" class="tab-selector-5" />
					<label for="tab-5" class="tab-label-5">Que busco</label -->
					
					<input id="tab-6" type="radio" name="radio-set" class="tab-selector-6" />
					<label for="tab-6" class="tab-label-6">Winks</label>
					
					<input id="tab-7" type="radio" name="radio-set" class="tab-selector-7" />
					<label for="tab-7" class="tab-label-7">Visitas</label>

					<div class="content">
						<div class="content-1">
							<!--div class = "Background"-->
								<label class ="texto">Nivel de educacion: <?php echo $arrayQuery["ID_EDUCACION"]["NOMBRE"][0] ?></label>
								<?php var_dump( $arrayQuery["IDIOMAS"]) ?>
								<label class ="texto">Idiomas: <?php echo implode(", ", $arrayQuery["IDIOMAS"]["NOMBRE"] ) ?> </label>
								
								<label class ="texto">Estado civil: <?php echo $arrayQuery["ID_ESTADOCI"]["NOMBRE"][0] ?> </label>
								<label class ="texto">Religion: <?php echo $arrayQuery["ID_RELIGION"]["NOMBRE"][0] ?></label>
							<!--/div-->
						</div>
						<div class="content-2">
							<!--div class= "EstiloVida"-->
								<label class ="texto">Bebe: <?php echo $arrayQuery["ID_ESTILOVIDA"]["ID_TIPOBEBEDOR"]["CLASE"][0]?> </label>
								<label class ="texto">Fuma: <?php echo $arrayQuery["ID_ESTILOVIDA"]["FUMA"][0]?> </label>
								<label class ="texto">Frecuencia de ejercicios: <?php echo $arrayQuery["ID_ESTILOVIDA"]["FRECEJERCICIOS"][0]?> </label>
								<label class ="texto">Cantidad de hijos: <?php echo $arrayQuery["ID_ESTILOVIDA"]["CANTIDADHIJOS"][0]?> </label>
								<label class ="texto">Quiere más hijos: <?php echo $arrayQuery["ID_ESTILOVIDA"]["QUIEREHIJOS"][0]?> </label>
								<label class ="texto">Salario: <?php 
																	echo $arrayQuery["ID_ESTILOVIDA"]["SALARIOPROMEDIO"][0] != "NULL"? 
																		$arrayQuery["ID_ESTILOVIDA"]["SALARIOPROMEDIO"][0] :
																		"Prefiero no especificarlo."
																?> 
								</label>
								<label class ="texto">Signo zodiacal: cancer <?php echo $arrayQuery["ID_ESTILOVIDA"]["FUMA"][0]?></label>
								<label class ="texto">Le gustan las mascotas: <?php echo $arrayQuery["GUSTAN_MASCOTA"][0]?></label>
								<label class ="texto">Tiene mascotas: <?php echo $arrayQuery["TIENE_MASCOTA"][0]?></label>
								<label class ="texto">Tendría mascotas:<?php echo $arrayQuery["TENDRIA_MASCOTA"][0]?> </label>
							<!--/div-->	
						</div>
						<div class="content-4">
							<!--div class = "intereses y gustos"-->
								<label class ="texto">Actividades:  <?php echo implode(", ", $arrayQuery["ACTIVIDADES"]["NOMBRE"] ) ?></label>
								<label class ="texto">Hobbies:  <?php echo implode(", ", $arrayQuery["HOBBIES"]["NOMBRE"] ) ?></label>
							<!--/div-->
						</div>
						<div class="content-5">
							<!--div class = "sobre la persona que busca"-->
								<label class ="texto">Busco: <?php echo $arrayQuery["ID_INTERES_GUSTO"]["ID_GENERO"]["NOMBRE"][0]."s"?> </label>
								<label class ="texto">Entre: <?php echo $arrayQuery["ID_INTERES_GUSTO"]["RANGO_EDADI"][0]." y ".$arrayQuery["ID_INTERES_GUSTO"]["RANGO_EDADF"][0] ?></label>
							<!--/div-->
						</div>
						
						<div class="content-7">
							<div class = "acordion">
								<?php while(count($arrayQuery["WINK"]["FECHA"])>0){
									$fechaActual = $arrayQuery["WINK"]["FECHA"][0]; 
									unset($usedKeys);
									$usedKeys = array(0); ?>
									<h1 class ="texto"><?php echo $fechaActual ?></h1> <?php 
									for($i = 1; $i < $arrayQuery["WINK"]["FECHA"]; $i++ ){
										if ($fechaActual == $arrayQuery["WINK"]["FECHA"][$i]){ 
											$usedKeys[] = $i; ?>
											<div class="bnr-img">
												<a href="profile.php?user_id=<?php echo $arrayQuery["WINK"]["ID_VISITANTE"][$i]["ID_USUARIO"][0] ?>">
													<img src="profile_pics/<?php echo $arrayQuery["WINK"]["ID_VISITANTE"][$i]["FOTO"][0] ?>" alt="">
												</a>
											</div>
										<?php }
									}
									foreach ($usedKeys as $key){ 
										unset(
											$arrayQuery["WINK"]["ID_VISITANTE"][$key],
											$arrayQuery["WINK"]["FECHA"][$key]
										);
									}
								} ?>
								
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>	
								
								<h1 class ="texto">3/8/15</h1>
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>
								
								<h1 class ="texto">3/6/15</h1>
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>	
								
								<h1 class ="texto">9/1/14</h1>
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>	
								
								<h1 class ="texto">2/1/14</h1>
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>	
							</div>
							
							
							
						</div>
						
							<div class="content-6">
							<div class = "acordion">
								<h1 class ="texto">2/4/15</h1>
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>	
								
								<h1 class ="texto">3/8/15</h1>
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>
								
								<h1 class ="texto">3/6/15</h1>
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>	
								
								<h1 class ="texto">9/1/14</h1>
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>	
								
								<h1 class ="texto">2/1/14</h1>
								<div>
									<div class="bnr-img">
										<img src="images/img1.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img2.jpg" alt="">
									</div>
									<div class="bnr-img">
										<img src="images/img3.jpg" alt="">
									</div>
								</div>	
							</div>
						</div>

					</div>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
</div>


<?php
if ($edit){ ?>
	</form>
	<?php 
} ?>

<?php require_once("footer.php") ?>

<script>


	jQuery("input").keypress(function(){
		if($(this).val() == ""){
			$(this).val( $(this).attr("default") );
		}
	});
	
	jQuery("input").change(function(){
		if($(this).val() == ""){
			$(this).val( $(this).attr("default") );
		}
		
		
		if($(this).val() != ""){
			var data = $("#form_data").serialize();
			$.post("funcionesOracle.php", data, function(data){
				$("#debug").html(data);
			}); 
		}
		
	});
	
	$("#wink").click(function(){
		var data = "mode=registrar_wink&envia="+ "<?php echo $_SESSION["active_user_id"] ?>"+"&recibe=" + "<?php echo $user_id?>" ;
		$.ajax({  
			type: "POST",
			data: data,
			url: "funcionesOracle.php",
			success: function(data){
				$("#debug").html(data);
				$("#num_winks").html(parseInt($("#num_winks").text(),10)+1 );
				
			},
		});
	});
</script>