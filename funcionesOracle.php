<!--
Author: Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: 
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<?php

    echo "\n#########\n";

    if ($prueba){
       ?> <script>alert("OK");</script> <?php
    }
    var_dump($_POST);
    
    	
	if (!empty($_POST) && $_POST["mode"] == "loggin"){
		echo "PRUEBA LOGGIN";
	}
    echo "\n#########\n";
    

	$conexión = oci_connect('MatchMe', '', 'localhost/');
	
	if (!$conexión) {
	    $e = oci_error();
	    trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
	}
	
	if (!empty($_POST) && $_POST["mode"] == "loggin"){
		session_start();
		$stid = oci_parse($conn, 'begin :ID_User := get_user_ID( :Clave, :Email ); end;');
		oci_bind_by_name($stid, ':Email', $Email);
		oci_bind_by_name($stid, ':Clave', $Clave);
		oci_bind_by_name($stid, ':ID_User', $_SESSION["active_user_id"]);
	}
	
	//*** EDITAR UN PERFIL *///
	$edit = $_POST["edit"]? 1 : 0;
	if (!empty($_POST) && $edit){
		
		
		$active_user_id = $_SESSION["active_user_id"];
	
    	$ID_Usuario = $active_user_id;
    	$Nombre = $_POST["Nombre"];
    	$Primer_apellido = $_POST["Primer_apellido"];
    	$Segundo_apellido = $_POST["Segundo_apellido"];
    	$Fecha_nac = $_POST["Fecha_nac"];
    	$Email = $_POST["Email"];
    	$Foto = $_POST["Foto"];
    	$Genero = $_POST["Genero"];
    	$Clave = $_POST["Clave"];
    	$Gustan_mascota = $_POST["Gustan_mascota"];
    	$Tiene_mascota = $_POST["Tiene_mascota"];
    	$Tendria_mascota = $_POST["Tendria_mascota"];
    	$id_religion = $_POST["id_religion"];
    	$id_estadoCi = $_POST["id_estadoCi"];
    	$id_educacion = $_POST["id_educacion"];
    	$id_cuidad = $_POST["id_cuidad"];
    	$id_aspectoFi = $_POST["id_aspectoFi"];
    	$id_hobby = $_POST["id_hobby"];
    	$id_actividadAL = $_POST["id_actividadAL"];
    	$id_estilovida = $_POST["id_estilovida"];
    	$id_ocupacion = $_POST["id_ocupacion"];
    	$id_rol = $_POST["id_rol"];
    	$id_signo_zodiacal = $_POST["id_signo_zodiacal"];
    	
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
	}
	
	if ($conexión) {

    	oci_execute($stid);
    	
    	oci_free_statement($stid);
    	oci_close($conexión);
	}
	
	echo "\n"."USER: ".$_SESSION["active_user_id"];

?>