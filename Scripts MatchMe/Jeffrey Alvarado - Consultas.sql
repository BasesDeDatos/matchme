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
