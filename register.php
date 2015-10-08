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
		<form id="msform" class="form_data">
			<!-- progressbar -->
			<ul id="progressbar">
				<li class="active">Registro</li>
				<li>Datos personales</li>
				<li>Aspecto fisicos</li>
				<li>Intereses</li>
				<li>Hobbies</li>
				<li>Estilo Vida</li>
				<li>Mascotas</li>
				<li>¿Qué Busco?</li>

			</ul>
			<!-- fieldsets -->
			<fieldset>

				<h2 class="fs-title">Crear Cuenta</h2>
				<!--h3 class="fs-subtitle">Datos De la Cuenta</h3-->
				<div class="col-md-6">
					<input type="file" name="archivo" id="input-foto" accept="image/*"/>
					<input type="hidden" name="Foto" id="Foto"/>
				</div>

				<div class="col-md-6"><input type="text" name="email" placeholder="Email: someone@something.com" /></div>
				<div class="col-md-6"><input type="password" name="pass" placeholder="Contraseña" /></div>
				<div class="col-md-6"><input type="password" name="cpass" placeholder="Confirmar Contraseña" /></div>

				<input type="button" name="next" class="next action-button" value="Siguiente" />
			</fieldset>
			
			<fieldset>
				<h2 class="fs-title">Datos personales</h2>
				<!--h3 class="fs-subtitle">We will never sell it</h3-->
				<div class="col-md-4"><input type="text" name="nombre" placeholder="Nombre" /></div>
				<div class="col-md-8"><input type="text" name="apellidos" placeholder="Apellidos" /></div>
				<div class="col-md-4"><h3 class="fs-subtitle">Fecha De Nacimiento:</h3></div>
				<div class="col-md-8"><input type="date" name="fecha_nacimiento" placeholder="fecha" /></div>
				
				<input type="button" name="previous" class="previous action-button" value="Anterior" />
				<input type="button" name="next" class="next action-button" value="Siguiente" />
				<!--<input type="submit" name="submit" class="submit action-button" value="Submit" />-->
			</fieldset>
			
			<fieldset>
				
				<h2 class="fs-title">Aspecto Físico</h2>
				
				<div class="col-md-12"><h3 class="fs-subtitle">Color de pelo:</h3></div>
				
				<select name="color_pelo_select">
				</select>
				
				<div class="col-md-12"><h3 class="fs-subtitle">Color de piel:</h3></div>
				
				<select name="color_piel_select">
				</select>
				
				<div class="col-md-12"><h3 class="fs-subtitle">Color de ojos:</h3></div>
				
				<select name="color_ojos_select">
				</select>
				
				<input type="button" name="previous" class="previous action-button" value="Anterior" />
				<input type="button" name="next" class="next action-button" value="Siguente" />
			</fieldset>
			
			<fieldset>
				<h2 class="fs-title">Intereses</h2>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				
				<input type="button" name="previous" class="previous action-button" value="Anterior" />
				<input type="button" name="next" class="next action-button" value="Siguiente" />
			</fieldset>
		
			<fieldset>
				<h2 class="fs-title">Hobbies</h2>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				
				<input type="button" name="previous" class="previous action-button" value="Anterior" />
				<input type="button" name="next" class="next action-button" value="Siguente" />
			</fieldset>
			
			<fieldset>
				<h2 class="fs-title">Estilo de Vida</h2>
					
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				
				<input type="button" name="previous" class="previous action-button" value="Anterior" />
				<input type="button" name="next" class="next action-button" value="Siguente" />
			</fieldset>
			
			<fieldset>
					<h2 class="fs-title">Mascotas</h2>
				
					
			<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<div class="col-md-4">
					<input type="checkbox" name="checkbox" id="checkbox" />
					<label for="checkbox">Checkbox:</label>
				</div>
				
				<input type="button" name="previous" class="previous action-button" value="Anterior" />
				<input type="button" name="next" class="next action-button" value="Siguente" />
			</fieldset>
			
			<fieldset>
				
				<h2 class="fs-title">¿Qué Busco?</h2>
				
				<div class="col-md-4">
					<select name="color_ojos_select">
					</select>
				</div>
				
				<div class="col-md-4">
					<select name="color_ojos_select">
					</select>
				</div>
				<div class="col-md-4">
					<select name="color_ojos_select">
					</select>
				</div>
				<div class="col-md-4">
					<select name="color_ojos_select">
					</select>
				</div>
				<div class="col-md-4">
					<select name="color_ojos_select">
					</select>
				</div>
				<div class="col-md-4">
					<select name="color_ojos_select">
					</select>
				</div>
				
				<input type="button" name="previous" class="previous action-button" value="Anterior" />
				<input type="submit" name="submit" class="submit action-button" value="Registro" />

			</fieldset>
		
		</form>
	</div>
	</div>		
	
	<?php require_once("footer.php") ?>

 	<script type="text/javascript" src="js/fileinput.min.js"></script>

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
			var data = $(".form_data").serialize();

			$.post("funcionesOracle.php", data, function(data){
				$("body").append("<div id='debug'></div>");
				$("#debug").html(data);
			});
			
			return false;
		})
		
		$("#input-foto").fileinput({
			maxFileCount: 1,
			maxFileSize: "4000",
			
			uploadUrl: "uploadFoto.php", // server upload action
    		uploadAsync: false,
			
			previewFileType: "image",
			
			allowedFileExtensions: ["jpg", "png", "gif"],
			    
			browseLabel: "Cargar Foto",
			dropZoneTitle: "Arrastre su foto hasta aquí",

			showUpload: false,
			showCaption: false,
			showRemove: false,

			layoutTemplates: {
				main1: 
				'{preview}\n' +
				'<div class="kv-upload-progress"></div>\n' +
				'<div class="input-group {class}">\n' +
				'   {caption}\n' +
				'   <div class="input-group-btn">\n' +
				'       {remove}\n' +
				'       {cancel}\n' +
				'       {upload}\n' +
				'       {browse}\n' +
				'   </div>\n' +
				'</div>',
			}
		}).on("filebatchselected", function(event, files) {
			// trigger upload method immediately after files are selected
			$(this).fileinput("upload");
			console.dir(files);// debug
		
			var nombreImagen = files[0]["name"];
			var rutaImagenCargada = nombreImagen;
			$("#Foto").val(rutaImagenCargada);
		})

	</script>