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
  GET_Signo_Zodiacal(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre, l_fecha_inicio, l_fecha_final;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre || ' | '  || l_fecha_inicio || ' | ' || l_fecha_final);
  END LOOP;
  CLOSE l_cursor;
END;

--################ Bitacora_Conocido ################-- TODO
-- CREATE OR REPLACE PROCEDURE GET_Bitacora_Conocido( 
-- 	pID IN NUMBER,
-- 	p_recordset OUT SYS_REFCURSOR, 	
-- 	pFecha IN DATE, 
-- 	pID_Propio IN NUMBER, 
-- 	pID_Conocido IN NUMBER) AS
-- BEGIN
-- 	OPEN p_recordset FOR
-- 		SELECT Fecha, nombre, fecha_inicio, fecha_final
-- 	  	INTO vReturn 
-- 		FROM Bitacora_Conocido
-- 		set (Fecha := pFecha, ID_Propio = pID_Propio, ID_Conocido = pID_Conocido)
--     	WHERE ID_Propio = pID;
-- END GET_Bitacora_Conocido;

-- --### test ###--
-- SET SERVEROUTPUT ON SIZE 1000000
-- DECLARE
--   l_cursor  SYS_REFCURSOR;
--   l_ID    Signo_Zodiacal.ID_Signo_Zodiacal%TYPE;
--   l_nombre    Signo_Zodiacal.nombre%TYPE;
--   l_fecha_inicio   Signo_Zodiacal.fecha_inicio%TYPE;
--   l_fecha_final  Signo_Zodiacal.fecha_final%TYPE;
-- BEGIN
--   GET_Bitacora_Conocido(null,
--               p_recordset => l_cursor);        
--   LOOP 
--     FETCH l_cursor
--     INTO  l_ID, l_nombre;
--     EXIT WHEN l_cursor%NOTFOUND;
--     DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre || ' | '  || l_fecha_inicio || ' | ' || l_fecha_final);
--   END LOOP;
--   CLOSE l_cursor;
-- END;

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
  l_cursor  SYS_REFCURSOR;
  l_ID_Estado   Signo_Zodiacal.ID_Estado%TYPE;
  l_nombre    Signo_Zodiacal.nombre%TYPE;
  l_ID_pais   Signo_Zodiacal.ID_pais%TYPE;
BEGIN
  GET_estado(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID_Estado || ' | ' || l_nombre || ' | '  || l_ID_pais);
  END LOOP;
  CLOSE l_cursor;
END;

--################ Wink ################-- TODO
CREATE OR REPLACE PROCEDURE GET_Wink( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Recibido, Fecha, ID_Enviado
		FROM Wink
		WHERE ID_Recibido = nvl(pID, ID_Recibido);
END GET_Wink;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID_Recibido    Signo_Zodiacal.ID_Recibido%TYPE;
  l_Fecha   Signo_Zodiacal.Fecha%TYPE;
  l_ID_Enviado   Signo_Zodiacal.ID_Enviado%TYPE;
BEGIN
  GET_Wink(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID_Recibido, l_Fecha, l_ID_Enviado;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID_Recibido || ' | ' || l_Fecha || ' | '  || l_ID_Enviado);
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
  l_ID    Signo_Zodiacal.ID_Signo_Zodiacal%TYPE;
  l_nombre    Signo_Zodiacal.nombre%TYPE;
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
	p_recordset OUT SYS_REFCURSOR, 	
	pFuma IN VARCHAR2, 
    pFrecEjercicios IN VARCHAR2, 
    pCantidadHijos IN NUMBER, 
    pQuiereHIjos IN VARCHAR2, 
    pSalarioPromedio IN NUMBER, 
    pSlogan IN VARCHAR2, 
    pID_TipoBebedor IN Number) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Signo_Zodiacal, nombre, fecha_inicio, fecha_final
  	INTO vReturn 
	FROM Estilo_Vida
	set (
        Fuma := pFuma, 
        FrecEjercicios := pFrecEjercicios, 
        CantidadHijos := pCantidadHijos, 
        QuiereHIjos := pQuiereHIjos, 
        SalarioPromedio := pSalarioPromedio, 
        Slogan := pSlogan, 
        ID_TipoBebedor := pSlogan
    )
    WHERE ID_Estilo_Vida = nvl(pID, ID_Estilo_Vida);
END GET_Estilo_Vida;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Signo_Zodiacal.ID_Signo_Zodiacal%TYPE;
  l_nombre    Signo_Zodiacal.nombre%TYPE;
  l_fecha_inicio   Signo_Zodiacal.fecha_inicio%TYPE;
  l_fecha_final  Signo_Zodiacal.fecha_final%TYPE;
BEGIN
  GET_Estilo_Vida(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre || ' | '  || l_fecha_inicio || ' | ' || l_fecha_final);
  END LOOP;
  CLOSE l_cursor;
END;

--################ Tipo_Pareja ################--
CREATE OR REPLACE PROCEDURE GET_Tipo_Pareja( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR, 	
	pGenero IN VARCHAR2) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Signo_Zodiacal, nombre, fecha_inicio, fecha_finalgenero
  	INTO vReturn 
	FROM Tipo_Pareja
	WHERE ID_TipoPareja = nvl(pID, ID_TipoPareja);
END GET_Tipo_Pareja;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Signo_Zodiacal.ID_Signo_Zodiacal%TYPE;
  l_nombre    Signo_Zodiacal.nombre%TYPE;
  l_fecha_inicio   Signo_Zodiacal.fecha_inicio%TYPE;
  l_fecha_final  Signo_Zodiacal.fecha_final%TYPE;
BEGIN
  GET_Tipo_Pareja(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre || ' | '  || l_fecha_inicio || ' | ' || l_fecha_final);
  END LOOP;
  CLOSE l_cursor;
END;

--################ Aspecto_Fisico ################-- TODO

-- CREATE OR REPLACE PROCEDURE GET_Aspecto_Fisico( 
-- 	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR) RETURN EMPARRAY is
-- vArrayReturn EMPARRAY := EMPARRAY();

-- CURSOR c_emp IS SELECT ename 
-- 	FROM Aspecto_Fisico
-- 	WHERE ID_AspectoF = nvl(pID, ID_AspectoF);


-- BEGIN
-- 	FOR emp_rec IN c_emp LOOP
-- 		vArrayReturn.extend;
-- 		vArrayReturn(vArrayReturn.count) := emp_rec.ename;
-- 	END LOOP;
-- 	RETURN (vArrayReturn);
-- END GET_Aspecto_Fisico;


-- CREATE OR REPLACE PROCEDURE getEmpArray
-- RETURN EMPARRAY
-- AS
-- BEGIN
-- FOR emp_rec IN c_emp LOOP
-- l_data.extend;
-- l_data(l_data.count) := emp_rec.ename;
-- END LOOP;
-- RETURN l_data;
-- END; 
-- https://community.oracle.com/thread/1555544

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Signo_Zodiacal.ID_Signo_Zodiacal%TYPE;
  l_nombre    Signo_Zodiacal.nombre%TYPE;
  l_fecha_inicio   Signo_Zodiacal.fecha_inicio%TYPE;
  l_fecha_final  Signo_Zodiacal.fecha_final%TYPE;
BEGIN
  GET_Aspecto_Fisico(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre || ' | '  || l_fecha_inicio || ' | ' || l_fecha_final);
  END LOOP;
  CLOSE l_cursor;
END;

--################ Color_Pelo ################--
CREATE OR REPLACE PROCEDURE GET_Color_Pelo( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR, 	
	pNombre IN VARCHAR2) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Signo_Zodiacal, nombre, fecha_inicio, fecha_finalnombre
  	INTO vReturn 
	FROM Color_Pelo
	WHERE ID_ColorPelo = nvl(pID, ID_ColorPelo);
END GET_Color_Pelo;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Signo_Zodiacal.ID_Signo_Zodiacal%TYPE;
  l_nombre    Signo_Zodiacal.nombre%TYPE;
  l_fecha_inicio   Signo_Zodiacal.fecha_inicio%TYPE;
  l_fecha_final  Signo_Zodiacal.fecha_final%TYPE;
BEGIN
  GET_Color_Pelo(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre || ' | '  || l_fecha_inicio || ' | ' || l_fecha_final);
  END LOOP;
  CLOSE l_cursor;
END;

--################ UsuariosXMatch ################-- TODO
CREATE OR REPLACE PROCEDURE GET_UsuariosXMatch( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR, 	
	pFecha IN DATE, 
	pID_Estado_match IN NUMBER,
	pID_Propio IN NUMBER, 
	pID_Recomendacion IN NUMBER) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Signo_Zodiacal, nombre, fecha_inicio, fecha_final
  	INTO vReturn 
	FROM UsuariosXMatch
		set (Fecha := pFecha, ID_Estado_match := pID_Estado_match, ID_Propio := pID_Propio, ID_Recomendacion := pID_Recomendacion)
	WHERE ID_Propio = nvl(pID, ID_Propio);
END GET_UsuariosXMatch;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Signo_Zodiacal.ID_Signo_Zodiacal%TYPE;
  l_nombre    Signo_Zodiacal.nombre%TYPE;
  l_fecha_inicio   Signo_Zodiacal.fecha_inicio%TYPE;
  l_fecha_final  Signo_Zodiacal.fecha_final%TYPE;
BEGIN
  GET_UsuariosXMatch(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre || ' | '  || l_fecha_inicio || ' | ' || l_fecha_final);
  END LOOP;
  CLOSE l_cursor;
END;

--################ HobbyXUsuario ################--
CREATE OR REPLACE PROCEDURE GET_HobbyXUsuario( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR, 	
	pID_Usuario IN NUMBER,
	pID_Hobby IN NUMBER) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Usuario, ID_Hobby
  	INTO vReturn 
	FROM HobbyXUsuario
		set (ID_Usuario := pID_Usuario, ID_Hobby := pID_Hobby)
	WHERE ID_Usuario = nvl(pID, ID_Usuario);
END GET_HobbyXUsuario;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID_Usuario    Signo_Zodiacal.ID_Usuario%TYPE;
  l_ID_Hobby   Signo_Zodiacal.ID_Hobby%TYPE;
BEGIN
  get_empleados(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID_Usuario, l_ID_Hobby;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID_Usuario || ' | ' || l_ID_Hobby);
  END LOOP;
  CLOSE l_cursor;
END;

--################ ActividadXUsuario ################--
CREATE OR REPLACE PROCEDURE GET_ActividadXUsuario( 
	pID IN NUMBER,
	p_recordset OUT SYS_REFCURSOR, 	
	pID_Usuario IN NUMBER,
	pID_actividadA IN NUMBER) AS
BEGIN
	OPEN p_recordset FOR
		SELECT ID_Signo_Zodiacal, nombre, fecha_inicio, fecha_final
  	INTO vReturn 
	FROM ActividadXUsuario
		set (ID_Usuario := pID_Usuario, ID_actividadA := pID_actividadA)
	WHERE ID_Usuario = nvl(pID, ID_Usuario);
END GET_ActividadXUsuario;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Signo_Zodiacal.ID_Signo_Zodiacal%TYPE;
  l_nombre    Signo_Zodiacal.nombre%TYPE;
  l_fecha_inicio   Signo_Zodiacal.fecha_inicio%TYPE;
  l_fecha_final  Signo_Zodiacal.fecha_final%TYPE;
BEGIN
  GET_ActividadXUsuario(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre || ' | '  || l_fecha_inicio || ' | ' || l_fecha_final);
  END LOOP;
  CLOSE l_cursor;
END;