<!--
Author: Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: 
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<?php
	//** DEBUG ***//
    echo "\n#########\n";

    var_dump($_POST);

    echo "\n#########\n";
    
	//** /DEBUG ***//s

	$user = 'MatchMe';
	$clave = 'MatchMe';
	$db = '(DESCRIPTION = (ADDRESS_LIST =
	  (ADDRESS = (PROTOCOL = TCP)(HOST = localhost)(PORT = 1521))
	 )
	 (CONNECT_DATA =
	  (SID = dbprojets)
	  (SERVER = DEDICATED)
	 )
	)';

	global $conexion;
	$conexion = OCILogon($user, $clave, $db);

	if (!$conexion) {
		echo "Error de conexion: ".var_dump(OCIError());
	//	trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
		die();
	}
	
	if (!empty($_POST) && $_POST["mode"] == "loggin"){
		session_start();
		$Email = $_POST["Email"];
		$Clave = $_POST["Clave"];
		$valueFunction = queryFunction($conexion, "begin :value := get_userID('{$Clave}','{$Email}'); end;");
		$_SESSION["active_user_id"] = $valueFunction;
	}
	
	//*** EDITAR UN PERFIL *///
	if (!empty($_POST) && $_POST["mode"] == "editar"){
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
    	
    	$stid = oci_parse($conexion, 
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
	
	if ($conexion) {
    	oci_close($conexion);
		OCILogoff($conexion);
	}
	
	echo "\n"."USER: ".$_SESSION["active_user_id"];

	function query($conexion, $sql) {
		$s = oci_parse($conexion, $sql);
		oci_execute($s, OCI_DEFAULT);
		$fp = fopen("./log/log.log", "a");
		fwrite($fp, DATE("d/M/y")." ".$sql);
		fwrite($fp, PHP_EOL);
		while ($row = oci_fetch_array($s, OCI_RETURN_NULLS + OCI_ASSOC)) {
			foreach($row as $item) {
				fwrite($fp, ($item !== null ? htmlentities($item, ENT_QUOTES) : ' ')."\t");
				$arrayResult[$row] = $item;
			} 
			fwrite($fp, PHP_EOL);
		}
		fwrite($fp, "################{$_SESSION["active_user_id"]}################");
		fwrite($fp, PHP_EOL);
		fclose($fp);
		return $arrayResult;
	}

	
	function queryFunction($conexion,$sql) {
		$s = oci_parse($conexion, $sql);
		oci_bind_by_name($s, ':value', $value);
		$r = oci_execute($s, OCI_DEFAULT);
		
		if (!$r) {
			return -1;
		}
		


		$fp = fopen("./log/log.log", "a");
		fwrite($fp, DATE("d/M/y")." ".$sql);
		fwrite($fp, $value);
		fwrite($fp, PHP_EOL);
		fwrite($fp, "################{$_SESSION["active_user_id"]}################");
		fwrite($fp, PHP_EOL);
		fclose($fp);
		oci_free_statement($s);
		return $value;
	}
	

	function get_var_POST(){
		if (!empty($_POST)){
			foreach($_POST as $var => $value){
//				global $.$var;
//				$.$var = $value;
				echo "${$var} = {$value}\n<br>";
			}
		}
	}
?>