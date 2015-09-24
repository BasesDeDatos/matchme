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
  l_ID_Estado   estado.ID_Estado%TYPE;
  l_nombre    estado.nombre%TYPE;
  l_ID_pais   estado.ID_pais%TYPE;
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
		SELECT Fecha, ID_Enviado
		FROM Wink
		WHERE ID_Recibido = nvl(pID, ID_Recibido)
		GROUP BY Fecha;
END GET_Wink;

--### test ###--
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_Fecha   Wink.Fecha%TYPE;
  l_ID_Enviado   Wink.ID_Enviado%TYPE;
BEGIN
  GET_Wink(null, p_recordset => l_cursor);        
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
  l_Fuma  VARCHAR2; 
  l_FrecEjercicios  VARCHAR2;
  l_CantidadHijos  NUMBER;
  l_QuiereHIjos  VARCHAR2;
  l_SalarioPromedio  NUMBER;
  l_Slogan  VARCHAR2;
  l_ID_TipoBebedor  Number;
    
BEGIN
  GET_Estilo_Vida(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE( l_Fuma 
      || ' | ' || l_FrecEjercicios 
      || ' | ' || l_CantidadHijos 
      || ' | ' || l_QuiereHIjos 
      || ' | ' || l_SalarioPromedio 
      || ' | ' || l_Slogan
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
    INTO  l_ID, l_nombre;
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
  l_Altura Number;
  l_Peso Number;
  l_ID_ColorOjos Number;
  l_ID_ColorPiel Number;
  l_ID_ColorPelo Number;
  l_ID_Contextura Number;
  
BEGIN
  GET_Aspecto_Fisico(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_Altura, l_Peso, l_ID_ColorOjos, l_ID_ColorPiel, l_ID_ColorPelo, l_ID_Contextura;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_Altura 
      || ' | ' || l_Peso 
      || ' | ' || l_ID_ColorOjos 
      || ' | ' || l_ID_ColorPiel,
      || ' | ' || l_ID_ColorPelo 
      || ' | ' || l_ID_Contextura );
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
  l_ID_Hobby   HobbyXUsuario.ID_Hobby%TYPE;
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
	p_recordset OUT SYS_REFCURSOR) AS
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
  ID_actividadA    ActividadXUsuario.ID_actividadA%TYPE;
BEGIN
  GET_ActividadXUsuario(null, p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO  l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_cursor || ' | ' || ID_actividadA);
  END LOOP;
  CLOSE l_cursor;
END;