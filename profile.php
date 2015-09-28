<!--
Author: W3layouts, Isaac Campos, Roger Villalobos,  Jeffry Alvarado
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<?php 
	require_once("header.php");
	$edit = $_GET["edit"]? 1 : 0;
	$user_id = $_GET["user_id"];
	$active_user_id = $_SESSION["active_user_id"];
?>

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
									<input type = "text" 
										id = "nombre" 
										value = "Sirius Black"
										default = "Sirius Black"/>
								<?php } else { ?> 
									Sirius Black
								<?php }	?>
							</h1>
							
							<h5>
								<?php if ($edit){ ?>
									<input type="text" name="nombre" placeholder="www.design has.com" />
								<?php } else { ?> 
									<h5>www.design has.com
								<?php }	?>
							</h5>
							
							<p>A wonderful designs has takenpossession of dummy text quis nostrum dummy text</p>
							
							<hr/>
							<div class="resumen">
								<p>Nombre: Sirius Black</p>
								<p>Apodo: Blacky</p>
								<p>Genero: Hombre</p>
								<!--10/07/1990-->
								<p>Edad: 25</p>
								
								<p>Ubicacion: San Rafael, San jose, Costa Rica</p>
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

			// <?php
			// $conexión = oci_connect('hr', 'welcome', 'localhost/');
			
			// if (!$conexión) {
			//     $e = oci_error();
			//     trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
			// }
			
			// $ID_Usuario = $active_user_id;
			// $Nombre = "<script> document.write($('#Nombre').val() ) </script>";
			// $Primer_apellido = "<script> document.write($('#Primer_apellido').val() ) </script>";
			// $Segundo_apellido = "<script> document.write($('#Segundo_apellido').val() ) </script>";
			// $Fecha_nac = "<script> document.write($('#Fecha_nac').val() ) </script>";
			// $Email = "<script> document.write($('#Email').val() ) </script>";
			// $Foto = "<script> document.write($('#Foto').val() ) </script>";
			// $Genero = "<script> document.write($('#Genero').val() ) </script>";
			// $Clave = "<script> document.write($('#Clave').val() ) </script>";
			// $Gustan_mascota = "<script> document.write($('#Gustan_mascota').val() ) </script>";
			// $Tiene_mascota = "<script> document.write($('#Tiene_mascota').val() ) </script>";
			// $Tendria_mascota = "<script> document.write($('#Tendria_mascota').val() ) </script>";
			// $id_religion = "<script> document.write($('#id_religion').val() ) </script>";
			// $id_estadoCi = "<script> document.write($('#id_estadoCi').val() ) </script>";
			// $id_educacion = "<script> document.write($('#id_educacion').val() ) </script>";
			// $id_cuidad = "<script> document.write($('#id_cuidad').val() ) </script>";
			// $id_aspectoFi = "<script> document.write($('#id_aspectoFi').val() ) </script>";
			// $id_hobby = "<script> document.write($('#id_hobby').val() ) </script>";
			// $id_actividadAL = "<script> document.write($('#id_actividadAL').val() ) </script>";
			// $id_estilovida = "<script> document.write($('#id_estilovida').val() ) </script>";
			// $id_ocupacion = "<script> document.write($('#id_ocupacion').val() ) </script>";
			// $id_rol = "<script> document.write($('#id_rol').val() ) </script>";
			// $id_signo_zodiacal = "<script> document.write($('#id_signo_zodiacal').val() ) </script>";
			
			// $stid = oci_parse($conexión, 
			// 	'begin\
			// 		EDITARUSUARIO(\
			// 			:ID_Usuario,\
			// 			:Nombre,\
			// 			:Primer_apellido,\
			// 			:Segundo_apellido,\
			// 			:Fecha_nac,\
			// 			:Email,\
			// 			:Foto,\
			// 			:Genero,\ 
			// 			:Clave,\
			// 			:Gustan_mascota,\
			// 			:Tiene_mascota,\
			// 			:Tendria_mascota,\
			// 			:id_religion,\ 
			// 			:id_estadoCi,\ 
			// 			:id_educacion,\ 
			// 			:id_cuidad,\ 
			// 			:id_aspectoFi,\ 
			// 			:id_hobby,\ 
			// 			:id_actividadAL,\ 
			// 			:id_estilovida,\ 
			// 			:id_ocupacion,\ 
			// 			:id_rol,\ 
			// 			:id_signo_zodiacal\
			// 		);\
			// 	end;');

			// oci_bind_by_name($stid, ':ID_Usuario', $ID_Usuario);
			// oci_bind_by_name($stid, ':Nombre', $Nombre);
			// oci_bind_by_name($stid, ':Primer_apellido', $Primer_apellido);
			// oci_bind_by_name($stid, ':Segundo_apellido', $Segundo_apellido);
			// oci_bind_by_name($stid, ':Fecha_nac', $Fecha_nac);
			// oci_bind_by_name($stid, ':Email', $Email);
			// oci_bind_by_name($stid, ':Foto', $Foto);
			// oci_bind_by_name($stid, ':Genero', $Genero);
			// oci_bind_by_name($stid, ':Clave', $Clave);
			// oci_bind_by_name($stid, ':Gustan_mascota', $Gustan_mascota);
			// oci_bind_by_name($stid, ':Tiene_mascota', $Tiene_mascota);
			// oci_bind_by_name($stid, ':Tendria_mascota', $Tendria_mascota);
			// oci_bind_by_name($stid, ':id_religion', $id_religion);
			// oci_bind_by_name($stid, ':id_estadoCi', $id_estadoCi);
			// oci_bind_by_name($stid, ':id_educacion', $id_educacion);
			// oci_bind_by_name($stid, ':id_cuidad', $id_cuidad);
			// oci_bind_by_name($stid, ':id_aspectoFi', $id_aspectoFi);
			// oci_bind_by_name($stid, ':id_hobby', $id_hobby);
			// oci_bind_by_name($stid, ':id_actividadAL', $id_actividadAL);
			// oci_bind_by_name($stid, ':id_estilovida', $id_estilovida);
			// oci_bind_by_name($stid, ':id_ocupacion', $id_ocupacion);
			// oci_bind_by_name($stid, ':id_rol', $id_rol);
			// oci_bind_by_name($stid, ':id_signo_zodiacal', $id_signo_zodiacal);
			
			// oci_execute($stid);
			
			// oci_free_statement($stid);
			// oci_close($conexión);
			
			// ?>
			}
			
		}
		
	});
</script>

