--################ Signo_Zodiacal ################--
CREATE OR REPLACE FUNCTION GET_Signo_Zodiacal( 
	pID IN NUMBER 	
	-- pNombre IN VARCHAR2, 
	-- pfecha_inicio IN DATE, 
	-- pfecha_final IN DATE 
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM Signo_Zodiacal
	WHERE ID_Signo_Zodiacal = pID;
	RETURN (vReturn);
END GET_Signo_Zodiacal;


--################ Bitacora_Conocido ################-- TODO
CREATE OR REPLACE FUNCTION GET_Bitacora_Conocido( 
	pID IN NUMBER, 	
	pFecha IN DATE, 
	pID_Propio IN NUMBER, 
	pID_Conocido IN NUMBER) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT 
  	INTO vReturn 
	FROM Bitacora_Conocido
	set (Fecha := pFecha, ID_Propio = pID_Propio, ID_Conocido = pID_Conocido)
    	WHERE ID_Bitacora_Conocido= pID;
	RETURN (vReturn);
END GET_Bitacora_Conocido;


--################ estado ################--
CREATE OR REPLACE FUNCTION GET_estado(pID In Number) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM estado
	WHERE ID_estadodo= pID;
	RETURN (vReturn);
END GET_estado;


--################ Wink ################-- TODO
CREATE OR REPLACE FUNCTION GET_Wink( 
	pID IN NUMBER, 	
	pFecha IN DATE, 
	pID_Enviado IN NUMBER, 
	pID_Recibido IN NUMBER) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT 
  	INTO vReturn 
	FROM Wink
	WHERE ID_Wink= pID;
	RETURN (vReturn);
END GET_Wink;


--################ Idioma ################--
CREATE OR REPLACE FUNCTION GET_Idioma(pID IN NUMBER) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM Idioma
	WHERE ID_Idioma = pID;
	RETURN (vReturn);
END GET_Idioma;


--################ Estilo_Vida ################-- TODO
CREATE OR REPLACE FUNCTION GET_Estilo_Vida( 
	pID IN NUMBER, 	
	pFuma IN VARCHAR2, 
    pFrecEjercicios IN VARCHAR2, 
    pCantidadHijos IN NUMBER, 
    pQuiereHIjos IN VARCHAR2, 
    pSalarioPromedio IN NUMBER, 
    pSlogan IN VARCHAR2, 
    pID_TipoBebedor IN Number) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT 
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
    WHERE ID_Estilo_Vida= pID;
	RETURN (vReturn);
END GET_Estilo_Vida;


--################ Tipo_Pareja ################--
CREATE OR REPLACE FUNCTION GET_Tipo_Pareja( 
	pID IN NUMBER, 	
	pGenero IN VARCHAR2) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT genero
  	INTO vReturn 
	FROM Tipo_Pareja
	WHERE ID_TipoPareja = pID;
	RETURN (vReturn);
END GET_Tipo_Pareja;


--################ Aspecto_Fisico ################-- TODO

-- http://www.chw.net/foro/lenguajes-programacion/197537-funcion-oracle-devuelva-una-fila-datos.html
-- CREATE OR REPLACE TYPE EMPARRAY is VARRAY OF VARCHAR2

-- CREATE OR REPLACE FUNCTION GET_Aspecto_Fisico( 
-- 	pID IN NUMBER) RETURN EMPARRAY is
-- vArrayReturn EMPARRAY := EMPARRAY();

-- CURSOR c_emp IS SELECT ename 
-- 	FROM Aspecto_Fisico
-- 	WHERE ID_AspectoF = pID;


-- BEGIN
-- 	FOR emp_rec IN c_emp LOOP
-- 		vArrayReturn.extend;
-- 		vArrayReturn(vArrayReturn.count) := emp_rec.ename;
-- 	END LOOP;
-- 	RETURN (vArrayReturn);
-- END GET_Aspecto_Fisico;


-- CREATE OR REPLACE FUNCTION getEmpArray
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

--################ Color_Pelo ################--
CREATE OR REPLACE FUNCTION GET_Color_Pelo( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM Color_Pelo
	WHERE ID_ColorPelo= pID;
	RETURN (vReturn);
END GET_Color_Pelo;


--################ UsuariosXMatch ################-- TODO
CREATE OR REPLACE FUNCTION GET_UsuariosXMatch( 
	pID IN NUMBER, 	
	pFecha IN DATE, 
	pID_Estado_match IN NUMBER,
	pID_Propio IN NUMBER, 
	pID_Recomendacion IN NUMBER) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT 
  	INTO vReturn 
	FROM UsuariosXMatch
		set (Fecha := pFecha, ID_Estado_match := pID_Estado_match, ID_Propio := pID_Propio, ID_Recomendacion := pID_Recomendacion)
	WHERE ID_UsuariosXMatch= pID;
	RETURN (vReturn);
END GET_UsuariosXMatch;


--################ HobbyXUsuario ################--
CREATE OR REPLACE FUNCTION GET_HobbyXUsuario( 
	pID IN NUMBER, 	
	pID_Usuario IN NUMBER,
	pID_Hobby IN NUMBER) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT 
  	INTO vReturn 
	FROM HobbyXUsuario
		set (ID_Usuario := pID_Usuario, ID_Hobby := pID_Hobby)
	WHERE ID_HobbyXUsuario= pID;
	RETURN (vReturn);
END GET_HobbyXUsuario;


--################ ActividadXUsuario ################--
CREATE OR REPLACE FUNCTION GET_ActividadXUsuario( 
	pID IN NUMBER, 	
	pID_Usuario IN NUMBER,
	pID_actividadA IN NUMBER) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT 
  	INTO vReturn 
	FROM ActividadXUsuario
		set (ID_Usuario := pID_Usuario, ID_actividadA := pID_actividadA)
	WHERE ID_ActividadXUsuario= pID;
	RETURN (vReturn);
END GET_ActividadXUsuario;