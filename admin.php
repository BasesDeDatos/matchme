<!--
Author: Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Template name: admin
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
	<?php require_once("header2.php");
	
	// $arrayQuery = array(); 
	// $_POST["mode"] = "get_catalogos"; 
	// include ("funcionesOracle.php");
	
	?>
	
	<div class="row">
		<div class="col-md-12 register-form">
		<!-- multistep form -->
		<form id="msform">
			<!-- progressbar -->
			<ul id="progressbar">
				<li class="active">Mensaje de invitaciones</li>
				<li>Catalogos</li>

			</ul>
			<!-- fieldsets -->
			<fieldset>

				<h2 class="fs-title">Mensaje de invitaciones</h2>
				<input class="col-md-6" type="text" name="subject" placeholder="Subject" />
				<input class="col-md-6" type="textarea" name="mensaje_invitacion" placeholder="Nuevo mensaje de invitación" />

				<label class="col-md-6" for="Pais">Pais</label>
				<select class="col-md-6" name="Pais" id="Pais">
					<?php for($i = 0; $i < cout($arrayQuery["PAIS"]["NOMBRE"]); $i++){ ?>
						<option class="<?php echo $arrayQuery["PAIS"]["ID_PAIS"][$i] ?>"
								value="<?php echo $arrayQuery["PAIS"]["ID_PAIS"][$i] ?>">
							<?php echo $arrayQuery["PAIS"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				
				<label class="col-md-6" for="Estado">Estado</label>
				<select class="col-md-6" name="Estado" id="Estado">
					<?php for($i = 0; $i < cout($arrayQuery["ESTADO"]["NOMBRE"]); $i++){ ?>
						<option class="<?php echo $arrayQuery["ESTADO"]["ID_PAIS"][$i] ?>"
								value="<?php echo $arrayQuery["ESTADO"]["ID_ESTADO"][$i] ?>">
							<?php echo $arrayQuery["ESTADO"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				
				<label class="col-md-6" for="Ciudad">Ciudad</label>
				<select class="col-md-6" name="Ciudad" id="Ciudad">
					<?php for($i = 0; $i < cout($arrayQuery["CIUDAD"]["NOMBRE"]); $i++){ ?>
						<option class="<?php echo $arrayQuery["CIUDAD"]["ID_ESTADO"][$i] ?>"
								value="<?php echo $arrayQuery["CIUDAD"]["ID_CIUDAD"][$i] ?>">
							<?php echo $arrayQuery["CIUDAD"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<input type="button" name="next" class="next action-button" value="Enviar" />
			</fieldset>
			
			<fieldset>
				
				<h2 class="fs-title">Catalogos</h2>
				
				<label class="col-md-4" for="signo_zodiacal">Signo Zodiacal</label>
				<select class="col-md-4" name="signo_zodiacal" id="signo_zodiacal">
					<?php for($i = 0; $i < cout($arrayQuery["SIGNO_ZODIACAL"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["SIGNO_ZODIACAL"]["ID_SIGNO_ZODIACAL"][$i] ?>">
							<?php echo $arrayQuery["SIGNO_ZODIACAL"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="signo_zodiacal_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="rol">Rol</label>
				<select class="col-md-4" name="rol" id="rol">
					<?php for($i = 0; $i < cout($arrayQuery["ROL"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["ROL"]["ID_ROL"][$i] ?>">
							<?php echo $arrayQuery["ROL"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="rol_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="pais">Pais</label>
				<select class="col-md-4" name="pais" id="pais">
					<?php for($i = 0; $i < cout($arrayQuery["PAIS"]["NOMBRE"]); $i++){ ?>
						<option class="<?php echo $arrayQuery["PAIS"]["ID_PAIS"][$i] ?>"
								value="<?php echo $arrayQuery["PAIS"]["ID_PAIS"][$i] ?>">
							<?php echo $arrayQuery["PAIS"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="pais_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="estado">Estado</label>
				<select class="col-md-4" name="estado" id="estado">
					<?php for($i = 0; $i < cout($arrayQuery["ESTADO"]["NOMBRE"]); $i++){ ?>
						<option class="<?php echo $arrayQuery["ESTADO"]["ID_PAIS"][$i] ?>"
								value="<?php echo $arrayQuery["ESTADO"]["ID_ESTADO"][$i] ?>">
							<?php echo $arrayQuery["ESTADO"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="estado_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="ciudad">Ciudad</label>
				<select class="col-md-4" name="ciudad" id="ciudad">
					<?php for($i = 0; $i < cout($arrayQuery["CIUDAD"]["NOMBRE"]); $i++){ ?>
						<option class="<?php echo $arrayQuery["CIUDAD"]["ID_ESTADO"][$i] ?>"
								value="<?php echo $arrayQuery["CIUDAD"]["ID_CIUDAD"][$i] ?>">
							<?php echo $arrayQuery["CIUDAD"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="ciudad_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="religion">Religion</label>
				<select class="col-md-4" name="religion" id="religion">
					<?php for($i = 0; $i < cout($arrayQuery["RELIGION"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["RELIGION"]["ID_RELIGION"][$i] ?>">
							<?php echo $arrayQuery["RELIGION"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="religion_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="idioma">Idioma</label>
				<select class="col-md-4" name="idioma" id="idioma">
					<?php for($i = 0; $i < cout($arrayQuery["IDIOMA"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["IDIOMA"]["ID_IDIOMA"][$i] ?>">
							<?php echo $arrayQuery["IDIOMA"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="idioma_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="educacion">Educacion</label>
				<select class="col-md-4" name="educacion" id="educacion">
					<?php for($i = 0; $i < cout($arrayQuery["EDUCACION"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["EDUCACION"]["ID_EDUCACION"][$i] ?>">
							<?php echo $arrayQuery["EDUCACION"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="educacion_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="hobby">Hobby</label>
				<select class="col-md-4" name="hobby" id="hobby">
					<?php for($i = 0; $i < cout($arrayQuery["HOBBY"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["HOBBY"]["ID_HOBBY"][$i] ?>">
							<?php echo $arrayQuery["HOBBY"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="hobby_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="actividadal">Actividades al aire libre</label>
				<select class="col-md-4" name="actividadal" id="actividadal">
					<?php for($i = 0; $i < cout($arrayQuery["ACTIVIDAD"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["ACTIVIDAD"]["ID_ACTIVIDADAL"][$i] ?>">
							<?php echo $arrayQuery["ACTIVIDAD"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="actividadal_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="tipo_bebedor">Tipo de bebedor</label>
				<select class="col-md-4" name="tipo_bebedor" id="tipo_bebedor">
					<?php for($i = 0; $i < cout($arrayQuery["TIPO_BEBEDOR"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["TIPO_BEBEDOR"]["ID_TIPO_BEBEDOR"][$i] ?>">
							<?php echo $arrayQuery["TIPO_BEBEDOR"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="tipo_bebedor_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="ocupacion">Ocupaciópn</label>
				<select class="col-md-4" name="ocupacion" id="ocupacion">
					<?php for($i = 0; $i < cout($arrayQuery["OCUPACION"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["OCUPACION"]["ID_OCUPACION"][$i] ?>">
							<?php echo $arrayQuery["OCUPACION"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="ocupacion_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="color_ojos">Color Ojos</label>
				<select class="col-md-4" name="color_ojos" id="color_ojos">
					<?php for($i = 0; $i < cout($arrayQuery["COLOR_OJOS"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["COLOR_OJOS"]["ID_COLOR_OJOS"][$i] ?>">
							<?php echo $arrayQuery["COLOR_OJOS"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="color_ojos_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="color_piel">Color piel</label>
				<select class="col-md-4" name="color_piel" id="color_piel">
					<?php for($i = 0; $i < cout($arrayQuery["COLOR_PIEL"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["COLOR_PIEL"]["ID_COLOR_PIEL"][$i] ?>">
							<?php echo $arrayQuery["COLOR_PIEL"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="color_piel_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="color_pelo">Color Pelo</label>
				<select class="col-md-4" name="color_pelo" id="color_pelo">
					<?php for($i = 0; $i < cout($arrayQuery["COLOR_PELO"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["COLOR_PELO"]["ID_COLOR_PELO"][$i] ?>">
							<?php echo $arrayQuery["COLOR_PELO"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="color_pelo_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="contextura">Contextura</label>
				<select class="col-md-4" name="contextura" id="contextura">
					<?php for($i = 0; $i < cout($arrayQuery["CONTEXTURA"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["CONTEXTURA"]["ID_CONTEXTURA"][$i] ?>">
							<?php echo $arrayQuery["CONTEXTURA"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="contextura_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="estado_match">Estado Match</label>
				<select class="col-md-4" name="estado_match" id="estado_match">
					<?php for($i = 0; $i < cout($arrayQuery["ESTADO_MATCH"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["ESTADO_MATCH"]["ID_ESTADO_MATCH"][$i] ?>">
							<?php echo $arrayQuery["ESTADO_MATCH"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="estado_match_input" placeholder="Nuevo" /></div>
				
				<label class="col-md-4" for="estado_civil">Estado Civil</label>
				<select class="col-md-4" name="estado_civil" id="estado_civil">
					<?php for($i = 0; $i < cout($arrayQuery["ESTADO_CIVIL"]["NOMBRE"]); $i++){ ?>
						<option value="<?php echo $arrayQuery["ESTADO_CIVIL"]["ID_ESTADOCI"][$i] ?>">
							<?php echo $arrayQuery["ESTADO_CIVIL"]["NOMBRE"][$i] ?>
						</option>
					<?php } ?>
				</select>
				<div class="col-md-4"><input class="col-md-6" type="text" name="estado_civil_input" placeholder="Nuevo" /></div>
				
				<div class="col-md-12">
					<input type="button" name="previous" class="previous action-button" value="Anterior" />
					<input type="submit" name="submit" class="submit action-button" value="Aplicar" />
				</div>

			</fieldset>
		
		</form>
	</div>
	</div>		
	
	<?php require_once("footer.php") ?>

	<script type="text/javascript">
		//jQuery time
		var current_fs, next_fs, previous_fs; //fieldsets
		var left, opacity, scale; //fieldset properties which we will animate
		var animating; //flag to prevent quick multi-click glitches
		
		$(".next").click(function(){
			if(animating) return false;
			animating = true;
			
			current_fs = $(this).parent();
			next_fs = $(this).parent().next();
			
			//activate next step on progressbar using the index of next_fs
			$("#progressbar li").eq($("fieldset").index(next_fs)).addClass("active");
			
			//show the next fieldset
			next_fs.show(); 
			//hide the current fieldset with style
			current_fs.animate({opacity: 0}, {
				step: function(now, mx) {
					//as the opacity of current_fs reduces to 0 - stored in "now"
					//1. scale current_fs down to 80%
					scale = 1 - (1 - now) * 0.2;
					//2. bring next_fs from the right(50%)
					left = (now * 50)+"%";
					//3. increase opacity of next_fs to 1 as it moves in
					opacity = 1 - now;
					current_fs.css({'transform': 'scale('+scale+')'});
					next_fs.css({'left': left, 'opacity': opacity});
				}, 
				duration: 800, 
				complete: function(){
					current_fs.hide();
					animating = false;
				}, 
				//this comes from the custom easing plugin
				easing: 'easeInOutBack'
			});
		});
		
		$(".previous").click(function(){
			if(animating) return false;
			animating = true;
			
			current_fs = $(this).parent();
			previous_fs = $(this).parent().prev();
			
			//de-activate current step on progressbar
			$("#progressbar li").eq($("fieldset").index(current_fs)).removeClass("active");
			
			//show the previous fieldset
			previous_fs.show(); 
			//hide the current fieldset with style
			current_fs.animate({opacity: 0}, {
				step: function(now, mx) {
					//as the opacity of current_fs reduces to 0 - stored in "now"
					//1. scale previous_fs from 80% to 100%
					scale = 0.8 + (1 - now) * 0.2;
					//2. take current_fs to the right(50%) - from 0%
					left = ((1-now) * 50)+"%";
					//3. increase opacity of previous_fs to 1 as it moves in
					opacity = 1 - now;
					current_fs.css({'left': left});
					previous_fs.css({'transform': 'scale('+scale+')', 'opacity': opacity});
				}, 
				duration: 800, 
				complete: function(){
					current_fs.hide();
					animating = false;
				}, 
				//this comes from the custom easing plugin
				easing: 'easeInOutBack'
			});
		});
		
		$(".submit").click(function(){
			return false;
		})

	</script>