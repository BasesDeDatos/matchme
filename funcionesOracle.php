
<!--
Author: Isaac Campos, Roger Villalobos,  Jeffrey Alvarado
Author URL: 
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<?php
//	header('Content-Type: text/html; charset=ISO-8859-1');
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

	$conexion = OCILogon($user, $clave, $db);

	if (!$conexion) {
		echo "Error de conexion: ".var_dump(OCIError());
		trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR);
		die();
	}
	
	if (!empty($_POST) && $_POST["mode"] == "enviar_mail"){
		include('Mail.php');
		$usuarios = queryCursor($conexion, "begin get_EmailXPais({$_POST["ciudad"]}, :cursbv); end;");
		for($i = 0; $i < count($usuarios["EMAIL"]); $i++){
		   
		    $recipients = $usuarios["EMAIL"][$i];
		    $headers['From']    = 'MatchMeTEC@gmail.com';
		    $headers['To']      = $usuarios["EMAIL"][$i];
		    $headers['Subject'] = $_POST["subject"];
		
		    $body = 'Hola estimado '.$usuarios["NOMBRE"][$i].".\n".$_POST["mensaje"];
		
		    $smtpinfo["host"] = "smtp.gmail.com";
		    $smtpinfo["port"] = "587";
		    $smtpinfo["auth"] = true;
		    $smtpinfo["username"] = "MatchMeTEC@gmail.com";
		    $smtpinfo["password"] = "Basesdatos";

		    // Create the mail object using the Mail::factory method
		    $mail_object =& Mail::factory("smtp", $smtpinfo); 
		    $mail_object->send($recipients, $headers, $body);
		}
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
	
	if (!empty($_POST) && ($_POST["mode"] == "get_home" || $_POST["mode"] == "get_profile") ){
		$arrayQuery["WINK"] = queryCursor($conexion, "begin GET_Winks({$user_id}, :cursbv); end;");
		$arrayQuery["VISITAS"] =  queryCursor($conexion, "begin GET_Bitacora_visita({$user_id}, :cursbv); end;");
		$arrayQuery["MATCH"] =  queryCursor($conexion, "begin GET_Bitacora_visita({$user_id}, :cursbv); end;");
		for($i = 0; $i < count($arrayQuery["MATCH"]["ID_RECOMENDACION"]); $i++){
			$arrayQuery["MATCH"]["ID_RECOMENDACION"][$i] = 
				queryCursor($conexion, "begin GET_Usuario({$arrayQuery["MATCH"]["ID_RECOMENDACION"][$i]}, :cursbv); end;");
		}
	}
	
	if (!empty($_POST) && $_POST["mode"] == "get_catalogos"){
		$arrayQuery["PAIS"] 	= queryCursor($conexion, "begin GET_Pais(null, :cursbv); end;");
		$arrayQuery["ESTADO"] 	= queryCursor($conexion, "begin GET_Estado(null, :cursbv); end;");
		$arrayQuery["CIUDAD"] 	= queryCursor($conexion, "begin GET_CIUDAD(null, :cursbv); end;");
		$arrayQuery["MATCH"] 	= queryCursor($conexion, "begin GET_UsuariosXMatch(null, :cursbv); end;");
		
		$arrayQuery["SIGNO_ZODIACAL"] = queryCursor($conexion, "begin GET_Signo_Zodiacal(null, :cursbv); end;");
		
		$arrayQuery["ROL"] = queryCursor($conexion, "begin GET_Rol(null, :cursbv); end;");
		
		$arrayQuery["RELIGION"] = queryCursor($conexion, "begin GET_Religion(null, :cursbv); end;");
		
		$arrayQuery["IDIOMA"] = queryCursor($conexion, "begin GET_Idioma(null, :cursbv); end;");
		
		$arrayQuery["EDUCACION"] = queryCursor($conexion, "begin GET_Educacion(null, :cursbv); end;");

		$arrayQuery["HOBBY"] = queryCursor($conexion, "begin GET_Hobby(null, :cursbv); end;");
		
		$arrayQuery["ACTIVIDAD"] = queryCursor($conexion, "begin GET_ActividadAL(null, :cursbv); end;");
		
		$arrayQuery["TIPO_BEBEDOR"] = queryCursor($conexion, "begin GET_Tipo_Bebedor(null, :cursbv); end;");
		
		$arrayQuery["OCUPACION"] = queryCursor($conexion, "begin GET_Ocupacion(null, :cursbv); end;");

		$arrayQuery["COLOR_OJOS"] = queryCursor($conexion, "begin GET_Color_Ojos(null, :cursbv); end;");

		$arrayQuery["COLOR_PIEL"] = queryCursor($conexion, "begin GET_Color_Piel(null, :cursbv); end;");

		$arrayQuery["COLOR_PELO"] = queryCursor($conexion, "begin GET_Color_Pelo(null, :cursbv); end;");
		
		$arrayQuery["CONTEXTURA"] = queryCursor($conexion, "begin GET_Contextura(null, :cursbv); end;");
		
		$arrayQuery["ESTADO_MATCH"] = queryCursor($conexion, "begin GET_Estado_Match(null, :cursbv); end;");
		
		$arrayQuery["ESTADO_CIVIL"] = queryCursor($conexion, "begin GET_Estado_Civil(null, :cursbv); end;");
		
		$arrayQuery["GENERO"] = queryCursor($conexion, "begin GET_Genero(null, :cursbv); end;");
	}
	
	if (!empty($_POST) && $_POST["mode"] == "registrar_catalogo"){
		//header('Content-Type: application/json');
		$id = queryFunction($conexion, "begin :value := {$_POST["procedure"]}('{$_POST["value"]}'); end;");
		
		$Response = array('success' => 'Completed','id' => $id);
		header("Content-Type: application/json", true);
		
		echo json_encode($Response);
	}
	
	if (!empty($_POST) && $_POST["mode"] == "registrar_evento"){
		$evento =
    	queryFunction($conexion, 
    		"begin :value := REGISTRAR_Evento(
					{$_POST["nombre_eventos"]},
					{$_POST["descripcion_eventos"]},
					to_date('{$_POST["fecha_nacimiento"]}', 'yyyy-mm-dd'),
    				{$_POST["ciudad_eventos"]}
    			);
    		end;");
	}
	
	if (!empty($_POST) && $_POST["mode"] == "editar_catalogo"){
		queryProcedure($conexion, "begin {$_POST["procedure"]}({$_POST["row_id"]}, '{$_POST["value"]}'); end;");
	}

	if (!empty($_POST) && $_POST["mode"] == "registrar_ciudad"){
		queryFunction($conexion, "begin :value := {$_POST["procedure"]}('{$_POST["value"]}', {$_POST["id_estado"]}); end;");
	}
	
	if (!empty($_POST) && $_POST["mode"] == "registrar_estado"){
		queryFunction($conexion, "begin :value := {$_POST["procedure"]}('{$_POST["value"]}', {$_POST["id_pais"]}); end;");
	}
	
	//*** REGISTRAR UN PERFIL *///
	if (!empty($_POST) && $_POST["mode"] == "registrar_usuario"){
		
		$interes_gusto =
    	queryFunction($conexion, 
    		"begin :value := REGISTRAR_Interes(
					{$_POST["rango_edadi"]},
					{$_POST["rango_edadf"]},
    				{$_POST["genero_gusto"]}
    			);
    		end;");
    		
    	$aspecto_fisico =
    	queryFunction($conexion, 
    		"begin
    			:value := REGISTRAR_Aspecto_fisico(
					{$_POST["altura"]},
					{$_POST["peso"]},
					{$_POST["colorojos"]},
					{$_POST["colorpiel"]},
    				{$_POST["colorpelo"]},
    				{$_POST["contextura"]}
    			);
    		end;");  
    	
    	$estilo_vida =
    	queryFunction($conexion, 
    		"begin
    			:value := REGISTRAR_estilo_vida(
					'{$_POST["fumador"]}',
					'{$_POST["frecuencia_ejercicios"]}',
					{$_POST["cantidad_de_hijos"]},
					'{$_POST["quiere_hijos"]}',
					{$_POST["salariopromedio"]},
					'{$_POST["slogan"]}',
					{$_POST["tipobebedor"]}
    			);
    		end;");

    	queryFunction($conexion, 
    		"begin
    			:value := REGISTRAR_USUARIO(
					'{$_POST["nombre"]}',
					'{$_POST["primer_apellido"]}',
    				'{$_POST["segundo_apellido"]}',
    				 to_date('{$_POST["fecha_nacimiento"]}', 'yyyy-mm-dd'),
    				'{$_POST["email"]}',
    				'{$_POST["Foto"]}',
    				{$_POST["genero"]},
    				'{$_POST["clave"]}',
    				'{$_POST["quiere_mascotas"]}',
    				'{$_POST["tiene_mascotas"]}',
    				'{$_POST["tendria_mascotas"]}',
    				{$_POST["religion"]},
    				{$_POST["estado_civil"]},
    				{$_POST["educacion"]},
    				{$_POST["ciudad"]},
    				{$aspecto_fisico},
    				{$estilo_vida},
    				2,
    				{$_POST["signo_zodiacal"]},
    				{$interes_gusto}
    			);
    		end;");
	}

	//*** EDITAR UN PERFIL *///
	if (!empty($_POST) && $_POST["mode"] == "editar"){

    	queryFunction($conexion, 
    		"begin
    			EDITAR_Interes(
					{$_POST["ID_interesg"]},
					{$_POST["rango_edadi"]},
					{$_POST["rango_edadf"]},
    				{$_POST["genero_gusto"]}
    			);
    		end;");
    		
    	queryFunction($conexion, 
    		"begin
    			EDITAR_Aspecto_fisico(
					{$_POST["ID_aspectof"]},
					{$_POST["altura"]},
					{$_POST["peso"]},
					{$_POST["colorojos"]},
					{$_POST["colorpiel"]},
    				{$_POST["colorpelo"]},
    				{$_POST["contextura"]}
    			);
    		end;");  
    	
    	queryFunction($conexion, 
    		"begin
    			EDITAR_estilo_vida(
    				{$_POST["ID_estilo_vida"]},
					'{$_POST["fumador"]}',
					'{$_POST["frecuencia_ejercicios"]}',
					{$_POST["cantidad_de_hijos"]},
					'{$_POST["quiere_hijos"]}',
					{$_POST["salariopromedio"]},
					'{$_POST["slogan"]}',
					{$_POST["tipobebedor"]}
    			);
    		end;");
    		
    	$ID_Usuario = $_SESSION["active_user_id"];
    	queryProcedure ($conexion, 
    		"begin
    			EDITAR_USUARIO(
    				{$ID_Usuario},
					'{$_POST["nombre"]}',
					'{$_POST["primer_apellido"]}',
    				'{$_POST["segundo_apellido"]}',
    				to_date(''{$_POST["fecha_nacimiento"]}'', 'yyyy-mm-dd'),
    				'{$_POST["email"]}',
    				'{$_POST["Foto"]}',
    				{$_POST["genero"]},
    				'{$_POST["clave"]}',
    				'{$_POST["quiere_mascotas"]}',
    				'{$_POST["tiene_mascotas"]}',
    				'{$_POST["tendria_mascotas"]}',
    				{$_POST["religion"]},
    				{$_POST["estado_civil"]},
    				{$_POST["educacion"]},
    				{$_POST["ciudad"]},
    				{$aspecto_fisico},
    				{$estilo_vida},
    				2,
    				{$_POST["signo_zodiacal"]}
    				{$interes_gusto}
    			);
    		end;");
	}

	if ($conexion) {
    	oci_close($conexion);
	}

	function query($conexion, $sql) {
		$fp = fopen("./log/log.log", "a");
		fwrite($fp, DATE("d/M/y")." ".$sql);
		fwrite($fp, PHP_EOL);
		$s = oci_parse($conexion, $sql);
		oci_execute($s, OCI_DEFAULT);
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

	function queryFunction($conexion, $sql) {
		$fp = fopen("./log/log.log", "a");
		fwrite($fp, DATE("d/M/y")." ".$sql);
		$s = oci_parse($conexion, $sql);
		oci_bind_by_name($s, ':value', $value, 10);
		$r = oci_execute($s, OCI_COMMIT_ON_SUCCESS);
		if (!$r) {
			$e = oci_error($s);
			fwrite($fp, "return error ".$e['message']);
			return -1;
		}
		fwrite($fp, " ".$value);
		fwrite($fp, PHP_EOL);
		fwrite($fp, "################{$_SESSION["active_user_id"]}################");
		fwrite($fp, PHP_EOL);
		fclose($fp);
		oci_free_statement($s);
		return $value;
	}
	
	function queryProcedure($conexion, $sql) {
		$fp = fopen("./log/log.log", "a");
		fwrite($fp, DATE("d/M/y")." ".$sql);
		fwrite($fp, PHP_EOL);
		$s = oci_parse($conexion, $sql);
		$r = oci_execute($s, OCI_COMMIT_ON_SUCCESS);
		if (!$r) {
			$e = oci_error($s);
			fwrite($fp, "return error ".$e['message']);
		}
		fwrite($fp, PHP_EOL);
		fwrite($fp, "################{$_SESSION["active_user_id"]}################");
		fwrite($fp, PHP_EOL);
		fclose($fp);
		oci_free_statement($s);
	}
	
	function queryCursor($conexion, $sql) {
		$fp = fopen("./log/log.log", "a");
		fwrite($fp, DATE("d/M/y")." ".$sql);
		fwrite($fp, PHP_EOL);
		$curs = oci_new_cursor($conexion);
		$s = oci_parse($conexion, $sql);
		oci_bind_by_name($s, ":cursbv", $curs, -1, OCI_B_CURSOR);
		oci_execute($s, OCI_DEFAULT);
		oci_execute($curs, OCI_DEFAULT);
		$arrayResult = array();
		while ($row = oci_fetch_array($curs, OCI_ASSOC + OCI_RETURN_NULLS)) {
			foreach($row as $key => $item) {
				fwrite($fp, ($item !== null ? htmlentities($item, ENT_QUOTES) : ' ')."\t");
				$arrayResult[$key][] = $item;
			} 
			fwrite($fp, PHP_EOL);
		}
		fwrite($fp, "################{$_SESSION["active_user_id"]}################");
		fwrite($fp, PHP_EOL);
		fclose($fp);
		oci_free_statement($s);
		oci_free_statement($curs);
		return $arrayResult;
	}
?>