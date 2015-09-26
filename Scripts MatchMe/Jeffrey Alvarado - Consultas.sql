--Pais--
create or replace
PROCEDURE get_pais (pID IN pais.ID_pais%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT nombre
	FROM pais
	WHERE ID_pais = nvl(pID, ID_pais)
	ORDER BY nombre;
END get_pais;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vNombre	pais.nombre%TYPE;
BEGIN
	get_pais(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vNombre;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vNombre);
	END LOOP;
	CLOSE vCursor;
END;

--actividadAL--
create or replace
PROCEDURE get_actividadAL (pID IN actividadAL.ID_actividadAL%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT nombre
	FROM actividadAL
	WHERE ID_actividadAL = nvl(pID, ID_actividadAL)
	ORDER BY nombre;
END get_actividadAL;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vNombre	actividadAL.nombre%TYPE;
BEGIN
	get_actividadAL(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vNombre;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vNombre);
	END LOOP;
	CLOSE vCursor;
END;

--ocupacion--
create or replace
PROCEDURE get_ocupacion (pID IN ocupacion.ID_ocupacion%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT nombre
	FROM ocupacion
	WHERE ID_ocupacion = nvl(pID, ID_ocupacion)
	ORDER BY nombre;
END get_ocupacion;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vNombre	ocupacion.nombre%TYPE;
BEGIN
	get_ocupacion(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vNombre;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vNombre);
	END LOOP;
	CLOSE vCursor;
END;

--color_piel--
create or replace
PROCEDURE get_color_piel (pID IN color_piel.ID_colorpiel%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT nombre
	FROM color_piel
	WHERE ID_colorpiel = nvl(pID, ID_colorpiel)
	ORDER BY nombre;
END get_color_piel;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vNombre	color_piel.nombre%TYPE;
BEGIN
	get_color_piel(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vNombre;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vNombre);
	END LOOP;
	CLOSE vCursor;
END;

--estado_match--
create or replace
PROCEDURE get_estado_match (pID IN estado_match.ID_estado_match%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT nombre
	FROM estado_match
	WHERE ID_estado_match = nvl(pID, ID_estado_match)
	ORDER BY nombre;
END get_estado_match;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vNombre	estado_match.nombre%TYPE;
BEGIN
	get_estado_match(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vNombre;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vNombre);
	END LOOP;
	CLOSE vCursor;
END;

--Evento--
create or replace
PROCEDURE get_evento (pID IN evento.ID_evento%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT nombre,
		   descripcion,
		   fecha, 
		   id_ciudad
	FROM evento
	WHERE ID_evento = nvl(pID, ID_evento)
	ORDER BY nombre;
END get_evento;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vNombre	evento.nombre%TYPE;
	vDescripcion	evento.descripcion%TYPE;
	vFecha	evento.fecha%TYPE;
	vCiudad	evento.id_ciudad%TYPE;
BEGIN
	get_evento(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vNombre, 
			  vDescripcion, 
			  vFecha, 
			  vCiudad;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vNombre || ' | ' || vDescripcion || ' | ' || vFecha || ' | ' || vCiudad);
	END LOOP;
	CLOSE vCursor;
END;

--interes_gusto--
create or replace
PROCEDURE get_interes_gusto (pID IN interes_gusto.ID_interesg%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT rango_edadi,
		   rango_edadf,
		   id_tipopareja
	FROM interes_gusto
	WHERE ID_interesg = nvl(pID, ID_interesg)
	ORDER BY id_tipopareja;
END get_interes_gusto;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vRango_edadi	interes_gusto.rango_edadi%TYPE;
	vRango_edadf	interes_gusto.rango_edadf%TYPE;
	vTipopareja	interes_gusto.id_tipopareja%TYPE;
BEGIN
	get_interes_gusto(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vRango_edadi,
			  vRango_edadf,
			  vTipopareja;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vRango_edadi || ' | ' || vRango_edadF || ' | ' || vTipopareja);
	END LOOP;
	CLOSE vCursor;
END;

--UsuarioXIdioma--
create or replace
PROCEDURE get_UsuarioXIdioma (pID IN UsuarioXIdioma.ID_UsuarioXIdioma%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT id_usuario, 
		   id_idioma
	FROM UsuarioXIdioma
	WHERE ID_UsuarioXIdioma = nvl(pID, ID_UsuarioXIdioma)
	ORDER BY id_usuario;
END get_UsuarioXIdioma;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vUsuario	UsuarioXIdioma.id_usuario%TYPE;
	vIdioma	UsuarioXIdioma.id_idioma%TYPE;
BEGIN
	get_UsuarioXIdioma(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vUsuario,
			  vIdioma;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vUsuario || ' | ' || vIdioma);
	END LOOP;
	CLOSE vCursor;
END;

--UsuarioXOcupacion--
create or replace
PROCEDURE get_UsuarioXOcupacion (pID IN UsuarioXOcupacion.ID_UsuarioXOcupacion%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT id_usuario, 
		   id_Ocupacion
	FROM UsuarioXOcupacion
	WHERE ID_UsuarioXOcupacion = nvl(pID, ID_UsuarioXOcupacion)
	ORDER BY id_usuario;
END get_UsuarioXOcupacion;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vUsuario	UsuarioXOcupacion.id_usuario%TYPE;
	vOcupacion	UsuarioXOcupacion.id_Ocupacion%TYPE;
BEGIN
	get_UsuarioXOcupacion(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vUsuario,
			  vOcupacion;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vUsuario || ' | ' || vOcupacion);
	END LOOP;
	CLOSE vCursor;
END;

--Usuario--
create or replace
PROCEDURE get_Usuario (pID IN Usuario.ID_Usuario%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
	OPEN p_recordset FOR
	SELECT nombre, 
		primer_apellido, 
		segundo_apellido, 
		fecha_nac, 
		email, 
		foto, 
		genero, 
		clave, 
		gustan_mascota, 
		tiene_mascota, 
		tendria_mascota, 
		id_religion, 
		id_estadoCi, 
		id_educacion, 
		id_ciudad, 
		id_aspectoF, 
		id_estilovida, 
		id_rol, 
		id_signo_zodiacal
	FROM Usuario
	WHERE ID_Usuario = nvl(pID, ID_Usuario)
	ORDER BY nombre;
END get_Usuario;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vNombre Usuario.nombre%TYPE;
   vPrimer_apellido Usuario.primer_apellido%TYPE; 
   vSegundo_apellido Usuario.segundo_apellido%TYPE;
   vFecha_nac Usuario.fecha_nac%TYPE; 
   vEmail Usuario.email%TYPE;
   vFoto Usuario.foto%TYPE;
   vGenero Usuario.genero%TYPE;
   vClave Usuario.clave%TYPE;
   vGustan_mascota Usuario.gustan_mascota%TYPE;
   vTiene_mascota Usuario.tiene_mascota%TYPE;
   vTendria_mascota Usuario.tendria_mascota%TYPE;
   vid_religion Usuario.id_religion%TYPE;
   vid_estadoCi Usuario.id_estadoCi%TYPE;
   vid_educacion Usuario.id_educacion%TYPE;
   vid_ciudad Usuario.id_ciudad%TYPE;
   vid_aspectoF Usuario.id_aspectoF%TYPE;
   vid_estilovida Usuario.id_estilovida%TYPE;
   vid_rol Usuario.id_rol%TYPE;
   vid_signo_zodiacal Usuario.id_signo_zodiacal%TYPE;
BEGIN
	get_Usuario(null, p_recordset => vCursor);        
	LOOP 
		FETCH vCursor
		INTO  vNombre, 
		   vPrimer_apellido, 
		   vSegundo_apellido, 
		   vFecha_nac, 
		   vEmail, 
		   vFoto,
		   vGenero,  
		   vClave, 
		   vGustan_mascota, 
		   vTiene_mascota, 
		   vTendria_mascota, 
		   vid_religion, 
		   vid_estadoCi, 
		   vid_educacion, 
		   vid_ciudad, 
		   vid_aspectoF, 
		   vid_estilovida, 
		   vid_rol, 
		   vid_signo_zodiacal;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vNombre || ' | ' ||  
							   vPrimer_apellido || ' | ' ||  
							   vSegundo_apellido || ' | ' ||  
							   vFecha_nac || ' | ' ||  
							   vEmail || ' | ' ||  
							   vFoto || ' | ' || 
							   vGenero || ' | ' ||   
							   vClave || ' | ' ||  
							   vGustan_mascota || ' | ' ||  
							   vTiene_mascota || ' | ' ||  
							   vTendria_mascota || ' | ' ||  
							   vid_religion || ' | ' ||  
							   vid_estadoCi || ' | ' ||  
							   vid_educacion || ' | ' ||  
							   vid_ciudad || ' | ' ||  
							   vid_aspectoF || ' | ' ||  
							   vid_estilovida || ' | ' ||  
							   vid_rol || ' | ' ||  
							   vid_signo_zodiacal
							   );
	END LOOP;
	CLOSE vCursor;
END;
