<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Template name: Login User
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
	<?php require_once("header2.php") ?>
	
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
				<div class="col-md-12"><input type="text-field" name="subject" placeholder="Sujeto" /></div>
				<div class="col-md-12"><input type="text-field" name="mensaje_invitacion" placeholder="Nuevo mensaje de invitación" /></div>

				<input type="button" name="next" class="next action-button" value="Enviar" />
			</fieldset>
			
			<fieldset>
				
				<h2 class="fs-title">Catalogos</h2>
				
				<div class="col-md-4">
					<label for="signo_zodiacal">Signo Zodiacal </label>
					<select name="signo_zodiacal" id="signo_zodiacal"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="signo_zodiacal_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="rol">Rol </label>
					<select name="rol" id="rol"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="rol_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="pais">Pais </label>
					<select name="pais" id="pais"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="pais_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="estado">Estado </label>
					<select name="estado" id="estado"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="estado_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="ciudad">Ciudad </label>
					<select name="ciudad" id="ciudad"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="ciudad_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="religion">Religion </label>
					<select name="religion" id="religion"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="religion_input" placeholder="Nuevo" /></div>

				<div class="col-md-4">
					<label for="idioma">Idioma </label>
					<select name="idioma" id="idioma"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="idioma_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="educacion">Educacion </label>
					<select name="educacion" id="educacion"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="educacion_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="hobby">Hobby </label>
					<select name="hobby" id="hobby"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="hobby_input" placeholder="Nuevo" /></div>

				<div class="col-md-4">
					<label for="actividadal">Actividades al aire libre </label>
					<select name="actividadal" id="actividadal"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="actividadal_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="tipo_bebedor">Tipo de bebedor </label>
					<select name="tipo_bebedor" id="tipo_bebedor"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="tipo_bebedor_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="ocupacion">Ocupacion </label>
					<select name="ocupacion" id="ocupacion"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="ocupacion_input" placeholder="Nuevo" /></div>

				<div class="col-md-4">
					<label for="aspecto_fisico">Aspecto fisico </label>
					<select name="aspecto_fisico" id="aspecto_fisico"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="aspecto_fisico_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="color_ojos">Color Ojos </label>
					<select name="color_ojos" id="color_ojos"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="color_ojos_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="color_piel">Color piel </label>
					<select name="color_piel" id="color_piel"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="color_piel_input" placeholder="Nuevo" /></div>

				<div class="col-md-4">
					<label for="color_pelo">Color Ojos </label>
					<select name="color_pelo" id="color_pelo"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="color_pelo_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="contextura">Contextura </label>
					<select name="contextura" id="contextura"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="contextura_input" placeholder="Nuevo" /></div>


				<div class="col-md-4">
					<label for="estado_match">Estado Match </label>
					<select name="estado_match" id="estado_match"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="estado_match_input" placeholder="Nuevo" /></div>
				
				<div class="col-md-4">
					<label for="estado_civil">Estado Civil </label>
					<select name="estado_civil" id="estado_civil"></select>
				</div>
				<div class="col-md-8"><input type="text-field" name="estado_civil_input" placeholder="Nuevo" /></div>
				
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