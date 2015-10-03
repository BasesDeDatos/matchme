<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffry Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?php 
	require_once("header.php");
	
	$active_user_id = $_SESSION["active_user_id"];

	$edit = $_GET["edit"]? 1 : 0;
	$user_id = $edit? $active_user_id : $_GET["user_id"];

	$prueba = 1;
	// /include("funcionesOracle.php");
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
							<img src="images/img2.jpg" alt=""/>
						</div>
						<div class="bnr-text">
							<h1>
								<?php if ($edit){ ?>
									Nombre:
									<input type = "text" 
										name = "nombre" 
										value = "Sirius"
										default = "Sirius"/>
									Primer Apellido:
									<input type = "text" 
										name = "Primer_apellido" 
										value = "Black"
										default = "Black"/>
									Segundo Apellido:
									<input type = "text" 
										name = "Segundo_apellido" 
										value = "Canuto"
										default = "Canuto"/>
								<?php } else { ?> 
									Sirius Black Canuto
								<?php }	?>
							</h1>
							
							<h5>
								<?php if ($edit){ ?>
									<input type="email"
										value = "sirius@designhas.com"
										default = "sirius@designhas.com"
										name="Email" />
								<?php } else { ?> 
									sirius@designhas.com
								<?php }	?>
							</h5>
							
							<p>A wonderful designs has takenpossession of dummy text quis nostrum dummy text</p>
							
							<hr/>
							<div class="resumen">
								<p>Genero: Hombre</p>
								<!--10/07/1990-->
								
								
								<p><?php if ($edit){ ?>
										<input type = "date" 
										name = "Fecha_Nac" 
										value = "10/07/1990"
										default = "10/07/1990"/>
								<?php } else { ?> 
									Edad: 25
								<?php }	?>
								</p>
								
								<p><?php if ($edit){ ?>
										<select type = "date" 
										name = "Fecha_Nac"></select>
								<?php } else { ?> 
									Ubicacion: San Rafael, San jose, Costa Rica
								<?php }	?>
								</p>
								<p>Altura y peso: 1.60m, 65Kg</p>
								<p>Busco: Mujer</p>
								<p>email: blacky@gmail.com</p>
							</div>
						</div>
						<div class="btm-num">
							<ul>
								<li>
									<h4>420</h4>
									<h5>Seguidores</h5>
								</li>
								<li>
									<h4>100</h4>
									<h5>Winks</h5>
								</li>
								<li>
									<h4>60</h4>
									<h5>Matches nuevos</h5>
								</li>
							</ul>
						</div>				
					</div>
			</div>

			<div class= "col-md-8">
				<div id="tap">
					<input id="tab-1" type="radio" name="radio-set" class="tab-selector-1" checked="checked" />
					<label for="tab-1" class="tab-label-1">Background</label>
				   
					<input id="tab-2" type="radio" name="radio-set" class="tab-selector-2" />
					<label for="tab-2" class="tab-label-2">Estilo de Vida</label>
				   
					<input id="tab-3" type="radio" name="radio-set" class="tab-selector-3" />
					<label for="tab-3" class="tab-label-3">Descripcion personal</label>
				   
					<input id="tab-4" type="radio" name="radio-set" class="tab-selector-4" />
					<label for="tab-4" class="tab-label-4">Intereses y gustos</label>
					
					<input id="tab-5" type="radio" name="radio-set" class="tab-selector-5" />
					<label for="tab-5" class="tab-label-5">Que busco</label>
					
					<input id="tab-6" type="radio" name="radio-set" class="tab-selector-6" />
					<label for="tab-6" class="tab-label-6">Winks</label>
					
					<input id="tab-7" type="radio" name="radio-set" class="tab-selector-7" />
					<label for="tab-7" class="tab-label-7">Visitas</label>

					<div class="content">
						<div class="content-1">
							<!--div class = "Background"-->
								<label class ="texto">Nivel de educacion: Bachillerato</label>
								<label class ="texto">Idiomas: Checoslovaco</label>
								<label class ="texto">Estado civil: Soltero</label>
								<label class ="texto">Religion: Agnostico</label>
							<!--/div-->
						</div>
						<div class="content-2">
							<!--div class= "EstiloVida"-->
								<label class ="texto">Bebes?: No</label>
								<label class ="texto">Fumas?: No</label>
								<label class ="texto">Frecuencia de ejercicios: Diario</label>
								<label class ="texto">Cantidad de hijos: no tengo</label>
								<label class ="texto">Quiere hijos?:No quiero</label>
								<label class ="texto">Ocupacion: Educador</label>
								<label class ="texto">Rango de salario:prefiero no ponerlo</label>
								<label class ="texto">Signo zodiacal: cancer</label>
								<label class ="texto">Le gustan las mascotas?: Si</label>
								<label class ="texto">Tiene mascotas?: Si</label>
								<label class ="texto">Frecuencia de ejercicios: Diario</label>
							<!--/div-->	
						</div>
						<div class="content-3">
							<!--div class = "presentacion personal"-->
								<label class ="texto">Descripcion propia: Me gusta bailar, hacer actividades al aire libre, pasar tiempo con seres queridos.</label>
							<!--/div-->
						</div>
						<div class="content-4">
							<!--div class = "intereses y gustos"-->
								<label class ="texto">ejercicios,aire libre entre otros: caminar, nadar</label>
								<label class ="texto">Hobbies: caceria</label>
							<!--/div-->
						</div>
						<div class="content-5">
							<!--div class = "sobre la persona que busca"-->
								<label class ="texto">Sexo: Mujer</label>
								<label class ="texto">Edad: 23 a 28</label>
								<label class ="texto">Distancia: Del pais</label>
								<label class ="texto">Busco una persona con altura entre: 1.50m y 1.70m</label>
								<label class ="texto">Peso ideal de mi pareja: 45Kg y 70Kg</label>
								<label class ="texto">El cuerpo de mi pareja debe ser: En forma </label>
								<label class ="texto">Color de piel de mi pareja: Me da igual</label>
								<label class ="texto">Ojos de mi pareja: Me da igual</label>
								<label class ="texto">Bebe?: No Beba</label>
								<label class ="texto">Fuma?: No fume</label>
								<label class ="texto">Referente a hijos, mi pareja: No tenga </label>
								<label class ="texto">Hijos en el futuro, quiero alguien que: Me da igual</label>
								<label class ="texto">Religion de mi pareja : Me da igual</label>
								<label class ="texto">Estado civil de mi pareja: Soltero(a)</label>
								<label class ="texto">Nivel minimo de estudios de mi Pareja: secundaria</label>
								<label class ="texto">Pelo de mi pareja: Me da igual</label>
								<label class ="texto">Color: Me da igual</label>
								<label class ="texto">Ejercicios fisicos: Algunas veces</label>
							<!--/div-->
						</div>
						
						<div class="content-7">
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
</script>

