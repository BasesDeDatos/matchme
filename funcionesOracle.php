<!--
Author: Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: 
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<?php

    echo "\n#########\n";

    var_dump($_POST);
    
    echo "\n#########\n";
    
	$active_user_id = $_SESSION["active_user_id"];

	$conexión = oci_connect('hr', 'welcome', 'localhost/');
	
	if (!$conexión) {
	    $e = oci_error();
	    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
	}
	
	$ID_Usuario = $active_user_id;
	
	$Nombre = $_get["Nombre"];
	$Primer_apellido = $_get["Primer_apellido"];
	$Segundo_apellido = $_get["Segundo_apellido"];
	$Fecha_nac = $_get["Fecha_nac"];
	$Email = $_get["Email"];
	$Foto = $_get["Foto"];
	$Genero = $_get["Genero"];
	$Clave = $_get["Clave"];
	$Gustan_mascota = $_get["Gustan_mascota"];
	$Tiene_mascota = $_get["Tiene_mascota"];
	$Tendria_mascota = $_get["Tendria_mascota"];
	$id_religion = $_get["id_religion"];
	$id_estadoCi = $_get["id_estadoCi"];
	$id_educacion = $_get["id_educacion"];
	$id_cuidad = $_get["id_cuidad"];
	$id_aspectoFi = $_get["id_aspectoFi"];
	$id_hobby = $_get["id_hobby"];
	$id_actividadAL = $_get["id_actividadAL"];
	$id_estilovida = $_get["id_estilovida"];
	$id_ocupacion = $_get["id_ocupacion"];
	$id_rol = $_get["id_rol"];
	$id_signo_zodiacal = $_get["id_signo_zodiacal"];
	
	$stid = oci_parse($conexión, 
		'begin\
			EDITARUSUARIO(\
				:ID_Usuario,\
				:Nombre,\
				:Primer_apellido,\
				:Segundo_apellido,\
				:Fecha_nac,\
				:Email,\
				:Foto,\
				:Genero,\ 
				:Clave,\
				:Gustan_mascota,\
				:Tiene_mascota,\
				:Tendria_mascota,\
				:id_religion,\ 
				:id_estadoCi,\ 
				:id_educacion,\ 
				:id_cuidad,\ 
				:id_aspectoFi,\ 
				:id_hobby,\ 
				:id_actividadAL,\ 
				:id_estilovida,\ 
				:id_ocupacion,\ 
				:id_rol,\ 
				:id_signo_zodiacal\
			);\
		end;');

	oci_bind_by_name($stid, ':ID_Usuario', $ID_Usuario);
	oci_bind_by_name($stid, ':Nombre', $Nombre);
	oci_bind_by_name($stid, ':Primer_apellido', $Primer_apellido);
	oci_bind_by_name($stid, ':Segundo_apellido', $Segundo_apellido);
	oci_bind_by_name($stid, ':Fecha_nac', $Fecha_nac);
	oci_bind_by_name($stid, ':Email', $Email);
	oci_bind_by_name($stid, ':Foto', $Foto);
	oci_bind_by_name($stid, ':Genero', $Genero);
	oci_bind_by_name($stid, ':Clave', $Clave);
	oci_bind_by_name($stid, ':Gustan_mascota', $Gustan_mascota);
	oci_bind_by_name($stid, ':Tiene_mascota', $Tiene_mascota);
	oci_bind_by_name($stid, ':Tendria_mascota', $Tendria_mascota);
	oci_bind_by_name($stid, ':id_religion', $id_religion);
	oci_bind_by_name($stid, ':id_estadoCi', $id_estadoCi);
	oci_bind_by_name($stid, ':id_educacion', $id_educacion);
	oci_bind_by_name($stid, ':id_cuidad', $id_cuidad);
	oci_bind_by_name($stid, ':id_aspectoFi', $id_aspectoFi);
	oci_bind_by_name($stid, ':id_hobby', $id_hobby);
	oci_bind_by_name($stid, ':id_actividadAL', $id_actividadAL);
	oci_bind_by_name($stid, ':id_estilovida', $id_estilovida);
	oci_bind_by_name($stid, ':id_ocupacion', $id_ocupacion);
	oci_bind_by_name($stid, ':id_rol', $id_rol);
	oci_bind_by_name($stid, ':id_signo_zodiacal', $id_signo_zodiacal);
	
	oci_execute($stid);
	
	oci_free_statement($stid);
	oci_close($conexión);
	
	?>