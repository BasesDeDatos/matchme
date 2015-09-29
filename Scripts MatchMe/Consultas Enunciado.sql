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
    having COUNT(*) = 2; -- si los 2 usuarios tienen en comun el gusto--
    
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