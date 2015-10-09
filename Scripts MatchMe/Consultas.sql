--Genero Usuarios--
create or replace PROCEDURE get_UsuarioXGenero (pID IN Usuario.ID_Usuario%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT genero, COUNT(*)
 FROM usuario
 WHERE ID_Usuario = nvl(pID, ID_Usuario)
 GROUP by genero;
END get_UsuarioXGenero;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
	vCursor	SYS_REFCURSOR;
	vGenero usuario.genero%TYPE;
	vCantidad NUMBER;
BEGIN
	get_UsuarioXGenero(null, p_recordset => vCursor);   
	LOOP 
		FETCH vCursor
		INTO  vGenero, vCantidad;
		EXIT WHEN vCursor%NOTFOUND;
		DBMS_OUTPUT.PUT_LINE(vGenero || ' | ' ||  
          vcantidad);
	END LOOP;
	CLOSE vCursor;
END;

--Edad Usuarios--
create or replace PROCEDURE get_UsuarioXEdad (pID IN Usuario.ID_Usuario%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 

BEGIN 
 OPEN p_recordset FOR
 SELECT vedad, COUNT(*)
 FROM usuario
 WHERE ID_Usuario = nvl(pID, ID_Usuario)
 GROUP by vedad;
END get_UsuarioXEdad;

create or replace
FUNCTION    GET_Edad
( pFecha IN DATE
) RETURN NUMBER is
BEGIN
  RETURN trunc(months_between(sysdate, pFecha)/12);
END get_Edad;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
 vCursor SYS_REFCURSOR;
 vEdad NUMBER;
 vCantidad NUMBER;
BEGIN
 get_usuarioxedad(null, p_recordset => vCursor);   
 LOOP 
  FETCH vCursor
  INTO  vedad, vCantidad;
  EXIT WHEN vCursor%NOTFOUND;
  DBMS_OUTPUT.PUT_LINE(vedad || ' | ' ||  
          vcantidad);
 END LOOP;
 CLOSE vCursor;
END;

--Cantidad Usuarios--
create or replace FUNCTION GET_CantidadUsuarios RETURN NUMBER is
cantidad NUMBER;
BEGIN
  SELECT COUNT(*) 
  Into cantidad
  FROM usuario;
  RETURN (cantidad);
END GET_CantidadUsuarios;
--Prueba--
DECLARE
	vCantidad number;
BEGIN
	vCantidad := get_cantidadusuarios;
	DBMS_OUTPUT.PUT_LINE(vCantidad);
END;

--EstadoCivil Usuarios--
create or replace
PROCEDURE get_UsuarioXEstadoCivil (pID IN Estado_Civil.ID_EstadoCi%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT Estado_Civil.nombre, COUNT(*)
 FROM  Usuario inner  join Estado_Civil
 on Usuario.id_estadoCi = Estado_Civil.ID_EstadoCi
 and Estado_Civil.ID_EstadoCi = nvl(pid, Estado_Civil.ID_EstadoCi)
 GROUP by Estado_Civil.nombre;
END get_UsuarioXEstadoCivil;
--Prueba--todo
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreEstadoCi  estado_civil.Nombre%TYPE;
  l_Cantidad Number;
BEGIN
  get_UsuarioXEstadoCivil(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_NombreEstadoCi, l_Cantidad;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreEstadoCi || ' | ' || l_Cantidad);
  END LOOP;
  CLOSE l_cursor;
END;

--Ciudad Usuarios--
create or replace
PROCEDURE get_UsuarioXCiudad (pID IN Ciudad.ID_Ciudad%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT Ciudad.nombre, COUNT(*)
 FROM  Usuario inner  join Ciudad
 on Usuario.id_ciudad = Ciudad.ID_Ciudad
 and Ciudad.ID_Ciudad = nvl(pid, Ciudad.ID_Ciudad)
 GROUP by Ciudad.nombre;
END get_UsuarioXCiudad;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreCiudad  Ciudad.Nombre%TYPE;
  l_Cantidad Number;
BEGIN
  get_UsuarioXCiudad(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_NombreCiudad, l_Cantidad;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreCiudad || ' | ' || l_Cantidad);
  END LOOP;
  CLOSE l_cursor;
END;

--TOP 10 WINK usuario--
create or replace
PROCEDURE get_TopusuarIosxwink (p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT Usuario.ID_Usuario, Usuario.Nombre, COUNT(*) AS WINKS
 FROM   Usuario inner join UsuariosXWink
 on UsuariosXWink.ID_Recibido = Usuario.ID_Usuario
  where  ROWNUM <= 10
 GROUP by Usuario.ID_Usuario, Usuario.Nombre
 ORDER by WINKS desc;
END get_TopusuarIosxwink;

--Prueba--todo
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID_Usuario Usuario.ID_Usuario%TYPE;
  l_NombreUsuario  Usuario.Nombre%TYPE;
  l_Cantidad Number; 
BEGIN  
  get_TopusuarIosxwink(p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO l_ID_Usuario, l_NombreUsuario, l_Cantidad;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID_Usuario || ' | ' || l_NombreUsuario || ' | ' || l_Cantidad);
  END LOOP;
  CLOSE l_cursor;
END;

--Estado Match usuario-- /// LOS QUE ENCONTRARON PAREJA, PASARLE EL ID DE PAREJA.
create or replace
PROCEDURE get_UsuarioXEstadoMatch (pID IN Estado_Match.ID_Estado_Match%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT Estado_Match.nombre, COUNT(*)
 FROM  UsuariosXMatch inner join Estado_Match
 on UsuariosXMatch.ID_Estado_match = Estado_Match.ID_Estado_Match
 and UsuariosXMatch.ID_Estado_Match = nvl(pid, Estado_Match.ID_Estado_Match)
 GROUP by Estado_Match.nombre;
END get_UsuarioXEstadoMatch;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreEstado_Match Estado_Match.Nombre%TYPE;
  l_Cantidad Number;
BEGIN
  get_UsuarioXEstadoMatch(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_NombreEstado_Match, l_Cantidad;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreEstado_Match || ' | ' || l_Cantidad);
  END LOOP;
  CLOSE l_cursor;
END;



--TOP 10 WINK usuario--
create or replace
PROCEDURE get_TopusuarIosxwink (p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT Usuario.ID_Usuario, Usuario.Nombre, COUNT(*) AS WINKS
 FROM  UsuariosXWink inner join Usuario
 on UsuariosXWink.ID_Recibido = Usuario.ID_Usuario
 where ROWNUM <= 10
 GROUP by UsuariosXWink.ID_Recibido
 ORDER by WINKS;
 
END get_TopusuarIosxwink;

--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID_Usuario Usuario.ID_Usuario%TYPE;
  l_NombreUsuario  Usuario.Nombre%TYPE;
  l_Cantidad Number;
BEGIN
  get_TopusuarIosxwink(p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO l_ID_Usuario, l_NombreUsuario, l_Cantidad;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID_Usuario || ' | ' || l_NombreUsuario || ' | ' || l_Cantidad);
  END LOOP;
  CLOSE l_cursor;
END;



-- Personas Hobby-- // DEVUELVE UNA LISTA DE USUARIOS DE UN HOBBY
create or replace
PROCEDURE get_UsuarioXHobby (pID IN Hobby.ID_Hobby%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT  Hobby.nombre, usuario.ID_Usuario, usuario.nombre
 FROM  HobbyXUsuario inner join Hobby
 on HobbyXUsuario.ID_Hobby = Hobby.ID_Hobby
  inner join usuario
   on  HobbyXUsuario.ID_Usuario = Usuario.ID_Usuario
   and HobbyXUsuario.ID_Hobby = pid;
END get_UsuarioXHobby;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreHobby Hobby.nombre%TYPE;
  l_ID_Usuario usuario.ID_Usuario%TYPE;
  l_NombreUsuario usuario.nombre%TYPE;

BEGIN
  get_UsuarioXHobby(1, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_NombreHobby, l_ID_Usuario, l_NombreUsuario;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreHobby || ' | ' || l_ID_Usuario || ' | ' || l_NombreUsuario);
  END LOOP;
  CLOSE l_cursor;
END;


-- Personas ActividadAL-- // DEVUELVE UNA LISTA DE USUARIOS DE UN ActividadAL
create or replace
PROCEDURE get_UsuarioXActividadAL (pID IN ActividadAL.ID_ActividadAL%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT  ActividadAL.nombre, usuario.ID_Usuario, usuario.nombre
 FROM  ActividadXUsuario inner join ActividadAL
 on ActividadXUsuario.ID_ActividadAL = ActividadAL.ID_ActividadAL
  inner join usuario
   on  ActividadXUsuario.ID_Usuario = Usuario.ID_Usuario
   and ActividadXUsuario.ID_ActividadAL = pid;
END get_UsuarioXActividadAL;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreActividadAL ActividadAL.nombre%TYPE;
  l_ID_Usuario usuario.ID_Usuario%TYPE;
  l_NombreUsuario usuario.nombre%TYPE;

BEGIN
  get_UsuarioXActividadAL(1, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_NombreActividadAL, l_ID_Usuario, l_NombreUsuario;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreActividadAL || ' | ' || l_ID_Usuario || ' | ' || l_NombreUsuario);
  END LOOP;
  CLOSE l_cursor;
END;



--personas por pais
create or replace
PROCEDURE get_UsuarioXPais (pID IN Pais.ID_Pais%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT Pais.nombre,  COUNT(*)
 FROM  Usuario inner  join ciudad
 on Usuario.id_ciudad = ciudad.ID_ciudad
   inner join Estado
   on Ciudad.ID_Estado = Estado.ID_Estado
      inner join pais
        on Estado.Id_pais = pais.ID_pais
        and pais.ID_Pais = nvl(pID, pais.ID_Pais)
 GROUP by Pais.nombre;
END get_UsuarioXPais;


--Prueba
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombrePais Pais.nombre%TYPE;
  Cantidad  number;

BEGIN
  get_UsuarioXPais(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_NombrePais, Cantidad;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombrePais || ' | ' || Cantidad );
  END LOOP;
  CLOSE l_cursor;
END;
--Top_EdadesBuscadas--
create or replace
PROCEDURE get_Top_EdadesBuscadas (p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT avg(Interes_Gusto.Rango_EdadI), avg(Interes_Gusto.Rango_EdadF)
 FROM Interes_Gusto;
END get_Top_EdadesBuscadas;
--Prueba--todo
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_Edad_min  Interes_Gusto.Rango_EdadI%TYPE;
  l_Edad_max Interes_Gusto.Rango_EdadF%TYPE;
BEGIN
  get_Top_EdadesBuscadas(p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_Edad_min, l_Edad_max;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_Edad_min || ' | ' || l_Edad_max);
  END LOOP;
  CLOSE l_cursor;
END;

--Get_Match--
create or replace
PROCEDURE get_Match (pID Usuario.ID_usuario%TYPE, p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT Usuario.ID_usuario, Nombre 
 FROM Usuario
 where get_edad( fecha_nac ) 
 	BETWEEN 
		( SELECT Interes_Gusto.Rango_EdadI
			FROM Usuario inner join Interes_Gusto
			on Usuario.ID_interes_gusto = Interes_Gusto.ID_InteresG
		 	and Usuario.ID_usuario = pID
		) and	
		( SELECT Interes_Gusto.Rango_EdadF
			FROM Usuario inner join Interes_Gusto
			on Usuario.ID_interes_gusto = Interes_Gusto.ID_InteresG
		 	and Usuario.ID_usuario = pID
		)
	and genero = (
		SELECT Interes_Gusto.tipo_pareja
			FROM Usuario inner join Interes_Gusto
			on Usuario.ID_interes_gusto = Interes_Gusto.ID_InteresG
		 	and Usuario.ID_usuario = pID
		)
	and Usuario.ID_usuario != pID
	and Usuario.ID_usuario NOT IN (
	    SELECT UsuariosXMatch.ID_Recomendacion
			FROM Usuario inner join UsuariosXMatch
			on Usuario.ID_usuario = UsuariosXMatch.ID_Propio
		)
  	and ROWNUM <= 10;
END get_Match;


--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID_usuario  Usuario.ID_usuario%TYPE;
  l_Nombre Usuario.Nombre%TYPE;
BEGIN
  get_Match(1, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID_usuario, l_Nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID_usuario || ' | ' || l_Nombre);
  END LOOP;
  CLOSE l_cursor;
END;

--GET PORCENTAJE DE MATCH--
create or replace FUNCTION GET_PorcentajeMatch(pID1 number, pID2 number) RETURN NUMBER is
cantidadHobbys1 NUMBER;
cantidadHobbysComun NUMBER;
BEGIN
    SELECT COUNT(*) 
    Into cantidadHobbys1
    FROM hobbyXUsuario
    where hobbyXUsuario.ID_Usuario = pID1; --OBTENGO LA CANTIDAD DE HOBBYS DEL 1--
    
    SELECT COUNT(*) as COMUN
    Into cantidadHobbysComun
    FROM hobbyXUsuario
    where (hobbyXUsuario.ID_Usuario = pID1 
        OR hobbyXUsuario.ID_Usuario = pID2)
    GROUP BY hobbyXUsuario.ID_Hobby
    having COUNT(hobbyXUsuario.ID_Usuario) = 2; -- si los 2 usuarios tienen en comun el gusto--
    
    RETURN (100*cantidadHobbys1/cantidadHobbysComun); --Saco un porcentaje de gustos en común con respecto al ID1--
END GET_PorcentajeMatch;


--Prueba--
DECLARE
	vID1 number;
	vID2 number;
	vPorcentaje number;
BEGIN
	vPorcentaje := GET_PorcentajeMatch(vID1, vID2);
	DBMS_OUTPUT.PUT_LINE(vCantidad);
END;

--EmailXPais--
create or replace
PROCEDURE get_EmailXPais (pID IN Usuario.ID_Ciudad%TYPE,
p_recordset OUT SYS_REFCURSOR) AS 
BEGIN 
 OPEN p_recordset FOR
 SELECT  Usuario.email, Usuario.nombre
 FROM  Usuario
 WHERE pID := Usuario.id_ciudad;
END get_EmailXPais;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_Email usuario.Email%TYPE;

BEGIN
  get_EmailXPais(1, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_Email;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_Email);
  END LOOP;
  CLOSE l_cursor;
END;

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

--UsuarioXIdioma
create or replace
PROCEDURE GET_UsuarioXIdioma( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR) AS
BEGIN
 OPEN p_recordset FOR
  SELECT  idioma.nombre
 FROM  UsuarioXIdioma inner  join idioma
 on UsuarioXIdioma.ID_idioma = idioma.id_idioma
  and UsuarioXIdioma.ID_Usuario = pid;
END GET_UsuarioXIdioma;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreIdioma  idioma.Nombre%TYPE;
BEGIN
  GET_UsuarioXIdioma(0, p_recordset => l_cursor);        
  
  LOOP 
    FETCH l_cursor
    INTO  l_NombreIdioma;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreIdioma);
  END LOOP;
  CLOSE l_cursor;
END;

--UsuarioXOcupacion
create or replace
PROCEDURE GET_UsuarioXOcupacion( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR) AS
BEGIN
 OPEN p_recordset FOR
  SELECT  Ocupacion.nombre
 FROM  UsuarioXOcupacion inner  join Ocupacion
 on UsuarioXOcupacion.ID_Ocupacion = Ocupacion.id_Ocupacion
  and UsuarioXOcupacion.ID_Usuario = pid;
END GET_UsuarioXOcupacion;
--Prueba--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreOcupacion  Ocupacion.Nombre%TYPE;
BEGIN
  GET_UsuarioXOcupacion(0, p_recordset => l_cursor);        
  
  LOOP 
    FETCH l_cursor
    INTO  l_NombreOcupacion;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreOcupacion);
  END LOOP;
  CLOSE l_cursor;
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
		id_cuidad, 
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
   vid_cuidad Usuario.id_ciudad%TYPE;
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
		   vid_cuidad, 
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
							   vid_cuidad || ' | ' ||  
							   vid_aspectoF || ' | ' ||  
							   vid_estilovida || ' | ' ||  
							   vid_rol || ' | ' ||  
							   vid_signo_zodiacal
							   );
	END LOOP;
	CLOSE vCursor;
END;

--################ Signo_Zodiacal ################--
CREATE OR REPLACE PROCEDURE GET_Signo_Zodiacal( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR
	) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Signo_Zodiacal, nombre, fecha_inicio, fecha_final
		FROM Signo_Zodiacal
		WHERE ID_Signo_Zodiacal = nvl(pID, ID_Signo_Zodiacal)
		ORDER BY nombre;
END GET_Signo_Zodiacal;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Signo_Zodiacal.ID_Signo_Zodiacal%TYPE;
  l_nombre    Signo_Zodiacal.nombre%TYPE;
  l_fecha_inicio   Signo_Zodiacal.fecha_inicio%TYPE;
  l_fecha_final  Signo_Zodiacal.fecha_final%TYPE;
BEGIN
  get_signo_zodiacal(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre, l_fecha_inicio, l_fecha_final;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre || ' | '  || l_fecha_inicio || ' | ' || l_fecha_final);
  END LOOP;
  CLOSE l_cursor;
END;

--################ estado_Civil ################--
CREATE OR REPLACE PROCEDURE GET_estado_Civil(pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Estado_Ci, nombre
		FROM estado_Civil
		WHERE ID_estadoCi = nvl(pID, ID_estadoCi);
END GET_estado_Civil;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID_Estado_Civil   estado_Civil.ID_Estado_Ci%TYPE;
  l_nombre    estado_Civil.nombre%TYPE;
BEGIN
  GET_estado_Civil(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID_Estado_Civil, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID_Estado_Civil || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;


--################ estado ################--
CREATE OR REPLACE PROCEDURE GET_estado(pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Estado, nombre, ID_pais
		FROM estado
		WHERE ID_estado = nvl(pID, ID_estado);
END GET_estado;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor SYS_REFCURSOR;
  l_ID_Estado Estado.ID_Estado%TYPE;
  l_nombre Estado.nombre%TYPE;
  l_ID_pais Estado.ID_pais%TYPE;
BEGIN
  GET_Estado(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_id_estado, l_nombre, l_id_pais;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID_Estado || ' | ' || l_nombre || ' | '  || l_ID_pais);
  END LOOP;
  CLOSE l_cursor;
END;

--################ UsuariosXWink ################-- TODO
CREATE OR REPLACE PROCEDURE GET_UsuariosXWink( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) AS
BEGIN
	OPEN p_recordset FOR
		SELECT Fecha, ID_Enviado
		FROM UsuariosXWink
		WHERE ID_Recibido = nvl(pID, ID_Recibido)
		GROUP BY Fecha;
END GET_UsuariosXWink;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_Fecha   UsuariosXWink.Fecha%TYPE;
  l_ID_Enviado   UsuariosXWink.ID_Enviado%TYPE;
BEGIN
  GET_Winks(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_Fecha, l_ID_Enviado;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_Fecha || ' | '  || l_ID_Enviado);
  END LOOP;
  CLOSE l_cursor;
END;

--################ Idioma ################--
CREATE OR REPLACE PROCEDURE GET_Idioma(pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Idioma, nombre
		FROM Idioma
		WHERE ID_Idioma = nvl(pID, ID_Idioma);
END GET_Idioma;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Idioma.ID_Idioma%TYPE;
  l_nombre    Idioma.nombre%TYPE;
BEGIN
  GET_Idioma(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;

--################ Estilo_Vida ################-- TODO
CREATE OR REPLACE PROCEDURE GET_Estilo_Vida( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) AS
BEGIN
	OPEN p_recordset FOR
		SELECT Fuma, 
        FrecEjercicios, 
        CantidadHijos, 
        QuiereHIjos, 
        SalarioPromedio, 
        Slogan, 
        ID_TipoBebedor
  	FROM Estilo_Vida
    WHERE ID_Estilo_Vida = nvl(pID, ID_Estilo_Vida);
END GET_Estilo_Vida;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_Fuma  Estilo_vida.Fuma%TYPE; 
  l_FrecEjercicios Estilo_Vida.FrecEjercicios%TYPE;
  l_CantidadHijos Estilo_vida.CantidadHijos%TYPE;
  l_QuiereHIjos  Estilo_vida.QuiereHijos%TYPE;
  l_SalarioPromedio  Estilo_vida.SalarioPromedio%TYPE;
  l_Slogan  Estilo_vida.Slogan%TYPE;
  l_ID_TipoBebedor  Estilo_vida.ID_TipoBebedor%TYPE;
    
BEGIN
  GET_Estilo_Vida(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_Fuma, l_FrecEjercicios, l_CantidadHijos, 
    l_QuiereHIjos, l_SalarioPromedio,l_Slogan, l_ID_TipoBebedor ;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE( l_Fuma || ' | ' || l_FrecEjercicios 
      || ' | ' || l_CantidadHijos || ' | ' || l_QuiereHIjos 
      || ' | ' || l_SalarioPromedio || ' | ' || l_Slogan
      || ' | ' || l_ID_TipoBebedor);
  END LOOP;
  CLOSE l_cursor;
END;

--################ Tipo_Pareja ################--
CREATE OR REPLACE PROCEDURE GET_Tipo_Pareja( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_TipoPareja, Genero
  	FROM Tipo_Pareja
  	WHERE ID_TipoPareja = nvl(pID, ID_TipoPareja);
END GET_Tipo_Pareja;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Tipo_Pareja.ID_TipoPareja%TYPE;
  l_Genero    Tipo_Pareja.Genero%TYPE;

BEGIN
  GET_Tipo_Pareja(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_Genero;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_Genero);
  END LOOP;
  CLOSE l_cursor;
END;

--################ Aspecto_Fisico ################--

CREATE OR REPLACE PROCEDURE GET_Aspecto_Fisico( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) AS
BEGIN
	OPEN p_recordset FOR
		SELECT Altura, Peso, ID_ColorOjos, ID_ColorPiel, ID_ColorPelo, ID_Contextura
  	FROM Tipo_Pareja
  	WHERE ID_AspectoF = nvl(pID, ID_AspectoF);
END GET_Aspecto_Fisico;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_Altura aspecto_fisico.Altura%TYPE;
  l_Peso aspecto_fisico.Peso%TYPE;
  l_ID_ColorOjos aspecto_fisico.ID_ColorOjos%TYPE;
  l_ID_ColorPiel aspecto_fisico.ID_ColorPiel%TYPE;
  l_ID_ColorPelo aspecto_fisico.ID_ColorPelo%TYPE;
  l_ID_Contextura aspecto_fisico.ID_Contextura%TYPE;
  
BEGIN
  GET_Aspecto_Fisico(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_Altura, l_Peso, l_ID_ColorOjos, l_ID_ColorPiel, l_ID_ColorPelo, l_ID_Contextura;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_Altura || ' | ' || l_Peso
      || ' | ' || l_ID_ColorOjos || ' | ' || l_ID_ColorPiel
      || ' | ' || l_ID_ColorPelo || ' | ' || l_ID_Contextura );
  END LOOP;
  CLOSE l_cursor;
END;

--################ Color_Pelo ################--
CREATE OR REPLACE PROCEDURE GET_Color_Pelo( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_ColorPelo, nombre
  	INTO vReturn 
	FROM Color_Pelo
	WHERE ID_ColorPelo = nvl(pID, ID_ColorPelo);
END GET_Color_Pelo;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Color_Pelo.ID_ColorPelo%TYPE;
  l_nombre    Color_Pelo.nombre%TYPE;

BEGIN
  GET_Color_Pelo(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;

--################ UsuariosXMatch ################--
CREATE OR REPLACE PROCEDURE GET_UsuariosXMatch( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR, 	
	pFecha IN DATE, 
	pID_Estado_match IN NUMBER,
	pID_Propio IN NUMBER, 
	pID_Recomendacion IN NUMBER) AS
BEGIN
	OPEN p_recordset FOR
		SELECT Fecha, ID_Recomendacion
	FROM UsuariosXMatch
	WHERE ID_Propio = nvl(pID, ID_Propio);
END GET_UsuariosXMatch;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_Fecha    UsuariosXMatch.Fecha%TYPE;
  l_ID_Recomendacion    UsuariosXMatch.ID_Recomendacion%TYPE;
BEGIN
  GET_UsuariosXMatch(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_Fecha, l_ID_Recomendacion;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_Fecha || ' | ' || l_ID_Recomendacion);
  END LOOP;
  CLOSE l_cursor;
END;

--################ HobbyXUsuario ################--
CREATE OR REPLACE PROCEDURE GET_HobbyXUsuario( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Hobby
  	INTO vReturn 
	FROM HobbyXUsuario
	WHERE ID_Usuario = nvl(pID, ID_Usuario);
END GET_HobbyXUsuario;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreHobby  Hobby.Nombre%TYPE;
BEGIN
  GET_HobbyXUsuario(0, p_recordset => l_cursor);        
  
  LOOP 
    FETCH l_cursor
    INTO  l_NombreHobby;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreHobby);
  END LOOP;
  CLOSE l_cursor;
END;

--################ ActividadXUsuario ################--
CREATE OR REPLACE PROCEDURE GET_ActividadXUsuario( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR ) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_actividadA
	FROM ActividadXUsuario
	WHERE ID_Usuario = nvl(pID, ID_Usuario);
END GET_ActividadXUsuario;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreActividad  ActividadAL.Nombre%TYPE;
BEGIN
  GET_ActividadXUsuario(0, p_recordset => l_cursor);        
  
  LOOP 
    FETCH l_cursor
    INTO  l_NombreActividad;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreActividad);
  END LOOP;
  CLOSE l_cursor;
END;

--------------Get_Rol-------------
create or replace
PROCEDURE GET_Rol( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Rol, nombre
  FROM Rol
  WHERE ID_Rol = nvl(pID, ID_Rol)
  ORDER BY nombre;
END GET_Rol;


--------------Test_get_rol-------------

SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Rol.ID_Rol%TYPE;
  l_nombre    Rol.nombre%TYPE;
BEGIN
  get_Rol(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Ciudad---------------
create or replace
PROCEDURE GET_Ciudad( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Ciudad, nombre
  FROM Ciudad
  WHERE ID_Ciudad = nvl(pID, ID_Ciudad)
  ORDER BY nombre;
END GET_Ciudad;

------------------Test_GET_Ciudad-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Ciudad.ID_Ciudad%TYPE;
  l_nombre    Ciudad.nombre%TYPE;
BEGIN
  get_Ciudad(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Religion---------------
create or replace
PROCEDURE GET_Religion( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Religion, nombre
  FROM Religion
  WHERE ID_Religion = nvl(pID, ID_Religion)
  ORDER BY nombre;
END GET_Religion;

------------------Test_GET_Religion-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Religion.ID_Religion%TYPE;
  l_nombre    Religion.nombre%TYPE;
BEGIN
  get_Religion(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Educacion---------------
create or replace
PROCEDURE GET_Educacion( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Educacion, nombre
  FROM Educacion
  WHERE ID_Educacion = nvl(pID, ID_Educacion)
  ORDER BY nombre;
END GET_Educacion;

------------------Test_GET_Educacion-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Educacion.ID_Educacion%TYPE;
  l_nombre    Educacion.nombre%TYPE;
BEGIN
  get_Educacion(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;

-------------GET_Hobby---------------
create or replace
PROCEDURE GET_Hobby( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Hobby, nombre
  FROM Hobby
  WHERE ID_Hobby = nvl(pID, ID_Hobby)
  ORDER BY nombre;
END GET_Hobby;

------------------Test_GET_Hobby-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Hobby.ID_Hobby%TYPE;
  l_nombre    Hobby.nombre%TYPE;
BEGIN
  get_Hobby(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;

-------------GET_Tipo_Bebedor---------------
create or replace
PROCEDURE GET_Tipo_Bebedor( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_TipoBebedor, Clase
  FROM Tipo_Bebedor
  WHERE ID_TipoBebedor = nvl(pID, ID_TipoBebedor)
  ORDER BY clase;
END GET_Tipo_Bebedor;

------------------Test_GET_Tipo_Bebedor-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Tipo_Bebedor.ID_TipoBebedor%TYPE;
  l_clase    Tipo_Bebedor.clase%TYPE;
BEGIN
  get_Tipo_Bebedor(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_clase;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_clase);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Color_Ojos---------------
create or replace
PROCEDURE GET_Color_Ojos( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_ColorOjos, nombre
  FROM Color_Ojos
  WHERE ID_ColorOjos = nvl(pID, ID_ColorOjos)
  ORDER BY nombre;
END GET_Color_Ojos;

------------------Test_GET_Color_Ojos-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Color_Ojos.ID_ColorOjos%TYPE;
  l_nombre    Color_Ojos.nombre%TYPE;
BEGIN
  get_Color_Ojos(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Contextura---------------
create or replace
PROCEDURE GET_Contextura( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Contextura, nombre
  FROM Contextura
  WHERE ID_Contextura = nvl(pID, ID_Contextura)
  ORDER BY nombre;
END GET_Contextura;

------------------Test_GET_Contextura-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Contextura.ID_Contextura%TYPE;
  l_nombre    Contextura.nombre%TYPE;
BEGIN
  get_Contextura(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;

-------------GET_Bitacora_visita---------------

create or replace PROCEDURE GET_Bitacora_Visita( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) AS
BEGIN
	OPEN p_recordset FOR
		SELECT Fecha, ID_Visitante
  	FROM bitacora_visita
  	WHERE ID_Visitado = nvl(pID, ID_Visitado);
END GET_Bitacora_Visita;


------------Test_GET_Bitacora_Visita------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_Fecha    Bitacora_Visita.Fecha%TYPE;
  l_ID_Visitante    Bitacora_Visita.ID_Visitante%TYPE;
BEGIN
  GET_Bitacora_Visita(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_Fecha, l_ID_Visitante;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_Fecha || ' | ' || l_ID_Visitante);
  END LOOP;
  CLOSE l_cursor;
END;

---------------EventoXUsuario------------------
create or replace PROCEDURE GET_EventoXUsuario( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) AS
BEGIN
	OPEN p_recordset FOR
		SELECT  Evento.Nombre, Evento.fecha
	FROM  Usuarioxevento inner  join evento
	on Usuarioxevento.ID_Evento = Evento.id_Evento
  and Usuarioxevento.ID_Usuario = pid;
END GET_EventoXUsuario;

---------------Test_Evento por usuario-------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_NombreEvento  Evento.Nombre%TYPE;
  l_FechaEvento Evento.Fecha%TYPE;
BEGIN
  get_eventoxusuario(1, p_recordset => l_cursor);        
  
  LOOP 
    FETCH l_cursor
    INTO  l_NombreEvento, l_FechaEvento;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_NombreEvento || ' | ' || l_FechaEvento);
  END LOOP;
  CLOSE l_cursor;
END;