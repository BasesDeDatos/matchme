--Pais--
CREATE OR REPLACE FUNCTION GET_Pais( 
	pID IN NUMBER
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM pais
	WHERE ID_pais = pID;
	RETURN (vReturn);
END GET_Pais;

--ActividadAL--
CREATE OR REPLACE FUNCTION GET_ActividadAL( 
	pID IN NUMBER
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM actividadAL
	WHERE ID_actividadAL = pID;
	RETURN (vReturn);
END GET_ActividadAL;

--Ocupacion--
CREATE OR REPLACE FUNCTION GET_ocupacion( 
	pID IN NUMBER
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM ocupacion
	WHERE ID_ocupacion = pID;
	RETURN (vReturn);
END GET_ocupacion;

--Color Piel--
CREATE OR REPLACE FUNCTION GET_color_piel( 
	pID IN NUMBER
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM color_piel
	WHERE ID_colorpiel = pID;
	RETURN (vReturn);
END GET_color_piel;

--Estado Match--
CREATE OR REPLACE FUNCTION GET_estado_match( 
	pID IN NUMBER
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM estado_match
	WHERE ID_estado_match = pID;
	RETURN (vReturn);
END GET_estado_match;

--Estado Match--
CREATE OR REPLACE FUNCTION GET_estado_match( 
	pID IN NUMBER
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM estado_match
	WHERE ID_estado_match = pID;
	RETURN (vReturn);
END GET_estado_match;

--IdiomaXUsuario--

CREATE OR REPLACE FUNCTION GET_IdiomaXUsuario( 
	pID IN NUMBER, 	
	pID_Usuario IN NUMBER,
	pID_Idioma IN NUMBER) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT 
  	INTO vReturn 
	FROM IdiomaXUsuario
		set (ID_Usuario := pID_Usuario, ID_Idioma := pID_Idioma)
	WHERE ID_IdiomaXUsuario= pID;
	RETURN (vReturn);
END GET_IdiomaXUsuario;

--OcupacionXUsuario--

CREATE OR REPLACE FUNCTION GET_OcupacionXUsuario( 
	pID IN NUMBER, 	
	pID_Usuario IN NUMBER,
	pID_Ocupacion IN NUMBER) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT 
  	INTO vReturn 
	FROM OcupacionXUsuario
		set (ID_Usuario := pID_Usuario, ID_Ocupacion := pID_Ocupacion)
	WHERE ID_OcupacionXUsuario= pID;
	RETURN (vReturn);
END GET_OcupacionXUsuario;

--Nombre Evento--
CREATE OR REPLACE FUNCTION GET_nombre_evento( 
	pID IN NUMBER
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT nombre
  	INTO vReturn 
	FROM evento
	WHERE ID_evento = pID;
	RETURN (vReturn);
END GET_nombre_evento;

--Descripcion evento--
CREATE OR REPLACE FUNCTION GET_descripcion_evento( 
	pID IN NUMBER
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT descripcion
  	INTO vReturn 
	FROM evento
	WHERE ID_evento = pID;
	RETURN (vReturn);
END GET_descripcion_evento;

--Fecha Evento--
CREATE OR REPLACE FUNCTION GET_fecha_evento( 
	pID IN NUMBER
	) RETURN VARCHAR2 is
vReturn VARCHAR2;
BEGIN
	SELECT fecha
  	INTO vReturn 
	FROM evento
	WHERE ID_evento = pID;
	RETURN (TO_DATE(vReturn, 'DDMMYYYY hh24:mi:ss'));
END GET_fecha_evento;

--Direccion Evento--
CREATE OR REPLACE FUNCTION GET_lugar_evento( 
	pID IN NUMBER
	) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT lugar
  	INTO vReturn 
	FROM evento
	WHERE ID_evento = pID;
	RETURN (vReturn);
END GET_lugar_evento;

--Rango edad inicial Interes--
CREATE OR REPLACE FUNCTION GET_rango_edadi_interes( 
	pID IN NUMBER
	) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT rango_edadi
  	INTO vReturn 
	FROM interes_gusto
	WHERE id_interesg = pID;
	RETURN (vReturn);
END GET_rango_edadi_interes;

--Rango edad final Interes--
CREATE OR REPLACE FUNCTION GET_rango_edadf_interes( 
	pID IN NUMBER
	) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT rango_edadf
  	INTO vReturn 
	FROM interes_gusto
	WHERE id_interesg = pID;
	RETURN (vReturn);
END GET_rango_edadf_interes;

--Rango edad inicial Interes--
CREATE OR REPLACE FUNCTION GET_tipopareja_interes( 
	pID IN NUMBER
	) RETURN NUMBER is
vReturn NUMBER;
BEGIN
	SELECT id_tipopareja
  	INTO vReturn 
	FROM interes_gusto
	WHERE id_interesg = pID;
	RETURN (vReturn);
END GET_rango_edad_i_interes;
