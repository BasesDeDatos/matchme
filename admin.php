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
				<input class="col-md-6" type="text" name="subject" placeholder="Subject" />
				<input class="col-md-6" type="textarea" name="mensaje_invitacion" placeholder="Nuevo mensaje de invitación" />

				<label class="col-md-6" for="Pais">Pais</label>
				<select class="col-md-6" name="Pais" id="Pais"></select>
				
				<label class="col-md-6" for="Estado">Estado</label>
				<select class="col-md-6" name="Estado" id="Estado"></select>
				
				<label class="col-md-6" for="Ciudad">Ciudad</label>
				<select class="col-md-6" name="Ciudad" id="Ciudad"></select>

				<input type="button" name="next" class="next action-button" value="Enviar" />
			</fieldset>
			
			<fieldset>
				
				<h2 class="fs-title">Catalogos</h2>
				
				<label class="col-md-4" for="signo_zodiacal">Signo Zodiacal </label>
				<select class="col-md-4" name="signo_zodiacal" id="signo_zodiacal"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="signo_zodiacal_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="rol">Rol </label>
				<select class="col-md-4" name="rol" id="rol"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="rol_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="pais">Pais </label>
				<select class="col-md-4" name="pais" id="pais"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="pais_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="estado">Estado </label>
				<select class="col-md-4" name="estado" id="estado"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="estado_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="ciudad">Ciudad </label>
				<select class="col-md-4" name="ciudad" id="ciudad"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="ciudad_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="religion">Religion </label>
				<select class="col-md-4" name="religion" id="religion"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="religion_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="idioma">Idioma </label>
				<select class="col-md-4" name="idioma" id="idioma"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="idioma_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="educacion">Educacion </label>
				<select class="col-md-4" name="educacion" id="educacion"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="educacion_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="hobby">Hobby </label>
				<select class="col-md-4" name="hobby" id="hobby"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="hobby_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="actividadal">Actividades al aire libre </label>
				<select class="col-md-4" name="actividadal" id="actividadal"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="actividadal_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="tipo_bebedor">Tipo de bebedor </label>
				<select class="col-md-4" name="tipo_bebedor" id="tipo_bebedor"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="tipo_bebedor_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="ocupacion">Ocupacion </label>
				<select class="col-md-4" name="ocupacion" id="ocupacion"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="ocupacion_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="aspecto_fisico">Aspecto fisico </label>
				<select class="col-md-4" name="aspecto_fisico" id="aspecto_fisico"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="aspecto_fisico_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="color_ojos">Color Ojos </label>
				<select class="col-md-4" name="color_ojos" id="color_ojos"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="color_ojos_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="color_piel">Color piel </label>
				<select class="col-md-4" name="color_piel" id="color_piel"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="color_piel_input" placeholder="Nuevo" /></div>

				<label class="col-md-4" for="color_pelo">Color Ojos </label>
				<select class="col-md-4" name="color_pelo" id="color_pelo"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="color_pelo_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="contextura">Contextura </label>
				<select class="col-md-4" name="contextura" id="contextura"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="contextura_input" placeholder="Nuevo" /></div>


				<label class="col-md-4" for="estado_match">Estado Match </label>
				<select class="col-md-4" name="estado_match" id="estado_match"></select>

				<div class="col-md-4"><input class="col-md-6" type="text" name="estado_match_input" placeholder="Nuevo" /></div>
				
				<label class="col-md-4" for="estado_civil">Estado Civil </label>
				<select class="col-md-4" name="estado_civil" id="estado_civil"></select>
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