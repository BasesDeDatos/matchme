<!--
Author: Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: 
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->


<?php
/*    include('Mail.php');

    $recipients = 'kakoo26i@gmail.com';

    $headers['From']    = 'MatchMeTEC@gmail.com';
    $headers['To']      = 'kakoo26i@gmail.com';
    $headers['Subject'] = 'prueba2';

    $body = 'Nada2';

    $smtpinfo["host"] = "smtp.gmail.com";
    $smtpinfo["port"] = "587";
    $smtpinfo["auth"] = true;
    $smtpinfo["username"] = "MatchMeTEC@gmail.com";
    $smtpinfo["password"] = "Basesdatos";


    // Create the mail object using the Mail::factory method
    $mail_object =& Mail::factory("smtp", $smtpinfo); 

    $mail_object->send($recipients, $headers, $body);
*/
	?> 



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
		if ($valueFunction != -1 ){?>
			<script>window.location="index.php";</script>	
		<?php }
		else{?>
			<script>alert("Email o contraseña incorrecta");</script>
		<?php }
	}
	
	if (!empty($_POST) && $_POST["mode"] == "get_home"){
		$arrayQuery = queryCursor($conexion, "begin GET_Usuario({$_SESSION["active_user_id"] }, :cursbv); end;");
	}
	
		
	if (!empty($_POST) && $_POST["mode"] == "get_profile"){
		$arrayQuery = queryCursor($conexion, "begin GET_Usuario({$user_id}, :cursbv); end;");

		$arrayQuery["ID_RELIGION"] = queryCursor($conexion, "begin GET_Religion({$arrayQuery["ID_RELIGION"][0]}, :cursbv); end;");
		$arrayQuery["ID_ESTADOCI"] = queryCursor($conexion, "begin GET_estado_Civil({$arrayQuery["ID_ESTADOCI"][0]}, :cursbv); end;");
		$arrayQuery["ID_EDUCACION"] = queryCursor($conexion, "begin GET_Educacion({$arrayQuery["ID_EDUCACION"][0]}, :cursbv); end;");
		
		$arrayQuery["ID_CIUDAD"] = queryCursor($conexion, "begin GET_Ciudad({$arrayQuery["ID_CIUDAD"][0]}, :cursbv); end;");
		$arrayQuery["ID_CIUDAD"]["ID_ESTADO"] = 
			queryCursor($conexion, 
				"begin GET_Estado({$arrayQuery["ID_CIUDAD"]["ID_ESTADO"][0]}, :cursbv); end;");
		$arrayQuery["ID_CIUDAD"]["ID_ESTADO"]["ID_PAIS"] =
			queryCursor($conexion, 
				"begin GET_Pais({$arrayQuery["ID_CIUDAD"]["ID_ESTADO"]["ID_PAIS"][0]}, :cursbv); end;");
				
		$arrayQuery["ID_ASPECTOF"] = queryCursor($conexion, "begin GET_Aspecto_Fisico({$arrayQuery["ID_ASPECTOF"][0]}, :cursbv); end;");
		$arrayQuery["ID_ASPECTOF"]["ID_COLOROJOS"] = 
			queryCursor($conexion, 
				"begin GET_Color_Ojos({$arrayQuery["ID_ASPECTOF"]["ID_COLOROJOS"][0]}, :cursbv); end;");
		$arrayQuery["ID_ASPECTOF"]["ID_COLORPIEL"] = 
			queryCursor($conexion, 
				"begin GET_Color_Piel({$arrayQuery["ID_ASPECTOF"]["ID_COLORPIEL"][0]}, :cursbv); end;");
		$arrayQuery["ID_ASPECTOF"]["ID_COLORPELO"] = 
			queryCursor($conexion, 
				"begin GET_Color_Pelo({$arrayQuery["ID_ASPECTOF"]["ID_COLORPELO"][0]}, :cursbv); end;");
		$arrayQuery["ID_ASPECTOF"]["ID_CONTEXTURA"] = 
			queryCursor($conexion, 
				"begin GET_Contextura({$arrayQuery["ID_ASPECTOF"]["ID_CONTEXTURA"][0]}, :cursbv); end;");
				
		$arrayQuery["ID_ESTILOVIDA"] = queryCursor($conexion, "begin GET_Estilo_Vida({$arrayQuery["ID_ESTILOVIDA"][0]}, :cursbv); end;");
		$arrayQuery["ID_ESTILOVIDA"]["ID_TIPOBEBEDOR"] = 
			queryCursor($conexion, "begin GET_Tipo_Bebedor({$arrayQuery["ID_ESTILOVIDA"]["ID_TIPOBEBEDOR"][0]}, :cursbv); end;");

		$arrayQuery["ID_SIGNO_ZODIACAL"] = queryCursor($conexion, "begin GET_Signo_Zodiacal({$arrayQuery["ID_SIGNO_ZODIACAL"][0]}, :cursbv); end;");

		$arrayQuery["ID_INTERES_GUSTO"] = queryCursor($conexion, "begin GET_INTERES_GUSTO({$arrayQuery["ID_INTERES_GUSTO"][0]}, :cursbv); end;");
		
		$arrayQuery["IDIOMAS"] = queryCursor($conexion, "begin GET_UsuarioXIdioma({$user_id}, :cursbv); end;");
		$arrayQuery["ACTIVIDADES"] = queryCursor($conexion, "begin GET_ActividadXUsuario({$user_id}, :cursbv); end;");
		$arrayQuery["HOBBIES"] = queryCursor($conexion, "begin GET_HobbyXUsuario({$user_id}, :cursbv); end;");
	}
	
	
	if (!empty($_POST) && $_POST["mode"] == "get_catalogos"){
		$arrayQuery["PAIS"] 	= queryCursor($conexion, "begin GET_Pais(null, :cursbv); end;");
		$arrayQuery["ESTADO"] 	= queryCursor($conexion, "begin GET_Estado(null, :cursbv); end;");
		$arrayQuery["CIUDAD"] 	= queryCursor($conexion, "begin GET_Ciudad(null, :cursbv); end;");
		
		$arrayQuery["SIGNO_ZODIACAL"] = queryCursor($conexion, "begin GET_Signo_Zodiacal(null, :cursbv); end;");
		
		$arrayQuery["ROL"] = queryCursor($conexion, "begin GET_Rol(null, :cursbv); end;");
		
		$arrayQuery["RELIGION"] = queryCursor($conexion, "begin GET_Religion(null, :cursbv); end;");
		
		$arrayQuery["IDIOMA"] = queryCursor($conexion, "begin GET_Idioma(null, :cursbv); end;");
		
		$arrayQuery["EDUCACION"] = queryCursor($conexion, "begin GET_Educacion(null, :cursbv); end;");

		$arrayQuery["HOBBY"] = queryCursor($conexion, "begin GET_Hobby(null, :cursbv); end;");
		
		$arrayQuery["ACTIVIDAD"] = queryCursor($conexion, "begin GET_Actividades(null, :cursbv); end;");
		
		$arrayQuery["TIPO_BEBEDOR"] = queryCursor($conexion, "begin GET_Tipo_Bebedor(null, :cursbv); end;");
		
		$arrayQuery["OCUPACION"] = queryCursor($conexion, "begin GET_Ocupacion(null, :cursbv); end;");

		$arrayQuery["COLOR_OJOS"] = queryCursor($conexion, "begin GET_Color_Ojos(null, :cursbv); end;");

		$arrayQuery["COLOR_PIEL"] = queryCursor($conexion, "begin GET_Color_Piel(null, :cursbv); end;");

		$arrayQuery["COLOR_PELO"] = queryCursor($conexion, "begin GET_Color_Pelo(null, :cursbv); end;");
		
		$arrayQuery["CONTEXTURA"] = queryCursor($conexion, "begin GET_Contextura(null, :cursbv); end;");
		
		$arrayQuery["ESTADO_MATCH"] = queryCursor($conexion, "begin GET_Estado_Match(null, :cursbv); end;");
		
		$arrayQuery["ESTADO_CIVIL"] = queryCursor($conexion, "begin GET_Estado_Civil(null, :cursbv); end;");
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
	
	function queryCursor($conexion, $sql) {
		$curs = oci_new_cursor($conexion);
		$s = oci_parse($conexion, $sql);
		oci_bind_by_name($s, ":cursbv", $curs, -1, OCI_B_CURSOR);
		oci_execute($s, OCI_DEFAULT);
		oci_execute($curs, OCI_DEFAULT);
		$fp = fopen("./log/log.log", "a");
		$arrayResult = array();
		while ($row = oci_fetch_array($curs, OCI_ASSOC + OCI_RETURN_NULLS)) {
			foreach($row as $key => $item) {
				fwrite($fp, ($item !== null ? htmlentities($item, ENT_QUOTES) : ' ')."\t");
				$arrayResult[$key][] = $item;
			} 
			fwrite($fp, PHP_EOL);
			fwrite($fp, "################{$_SESSION["active_user_id"]}################");
			fwrite($fp, PHP_EOL);
		}
		fclose($fp);
		oci_free_statement($s);
		oci_free_statement($curs);
		return $arrayResult;
	}
?>