-- Funciones

CREATE OR REPLACE PROCEDURE REGISTRARACTIVIDADAL
( pNombre IN VARCHAR2
) AS
BEGIN
	INSERT INTO actividadAL(id_actividadAL, nombre)
	VALUES(secu_actividadAL.NextVal, pNombre);
--NULL;
END REGISTRARACTIVIDADAL;

CREATE OR REPLACE PROCEDURE EDITARACTIVIDADAL
( pID_ActividadAL IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update actividadAL
	set nombre := pNombre
	WHERE id_actividadAL = pID_ActividadAL;
--NULL;
END EDITARACTIVIDADAL;

CREATE OR REPLACE PROCEDURE BORRARACTIVIDADAL
( pID_ActividadAL IN NUMBER
) AS
BEGIN
	delete from actividadAL
	WHERE id_actividadAL = pID_ActividadAL;
--NULL;
END BORRARACTIVIDADAL;

--Prueba



----------------------------------------------------

-- Funciones

CREATE OR REPLACE PROCEDURE REGISTRARPAIS
( pNombre IN VARCHAR2
) AS
BEGIN
	INSERT INTO pais(id_pais, nombre)
	VALUES(secu_pais.NextVal, pNombre);
--NULL;
END REGISTRARPAIS;

CREATE OR REPLACE PROCEDURE EDITARPAIS
( pID_pais IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update pais
	set nombre := pNombre
	WHERE id_pais = pID_pais;
--NULL;
END EDITARPAIS;

CREATE OR REPLACE PROCEDURE BORRARPAIS
( pID_pais IN NUMBER
) AS
BEGIN
	delete from pais
	WHERE id_pais = pID_pais;
--NULL;
END BORRARPAIS;

--Prueba



----------------------------------------------------

-- Funciones

CREATE OR REPLACE PROCEDURE REGISTRAROCUPACION
( pNombre IN VARCHAR2
) AS
BEGIN
	INSERT INTO ocupacion(id_ocupacion, nombre)
	VALUES(secu_ocupacion.NextVal, pNombre);
--NULL;
END REGISTRAROCUPACION;

CREATE OR REPLACE PROCEDURE EDITAROCUPACION
( pID_ocupacion IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update ocupacion
	set nombre := pNombre
	WHERE id_ocupacion = pID_ocupacion;
END EDITAROCUPACION;

CREATE OR REPLACE PROCEDURE BORRAROCUPACION
( pID_ocupacion IN NUMBER
) AS
BEGIN
	delete from ocupacion
	WHERE id_ocupacion = pID_ocupacion;
--NULL;
END BORRAROCUPACION;

--Prueba



----------------------------------------------------

-- Funciones

CREATE OR REPLACE PROCEDURE REGISTRAREVENTO
( pNombre IN VARCHAR2, pDescripcion IN VARCHAR2, pFecha IN VARCHAR2, pId_Ciudad IN NUMBER
) AS
BEGIN
	INSERT INTO evento(id_evento, nombre, descripcion, fecha, id_cuidad)
	VALUES(secu_evento.NextVal, pNombre, pDescripcion, TO_DATE(pFecha, 'DDMMYYYY hh24:mi:ss'), pId_Ciudad);
--NULL;
END REGISTRAREVENTO;

CREATE OR REPLACE PROCEDURE EDITAREVENTO
( pID_evento IN NUMBER, pNombre IN VARCHAR2, pDescripcion IN VARCHAR2, pFecha IN VARCHAR2, pId_Ciudad IN NUMBER
) AS
BEGIN
	Update evento
	set nombre := pNombre,
		descripcion := pDescripcion,
		fecha := TO_DATE(pFecha, 'DDMMYYYY hh24:mi:ss')
		id_cuidad := pId_Ciudad
	WHERE id_evento = pID_evento;
END EDITAREVENTO;

CREATE OR REPLACE PROCEDURE BORRAREVENTO
( pID_evento IN NUMBER
) AS
BEGIN
	delete from evento
	WHERE id_evento = pID_evento;
--NULL;
END BORRAREVENTO;

--Prueba



----------------------------------------------------

-- Funciones

CREATE OR REPLACE PROCEDURE REGISTRARCOLORPIEL
( pNombre IN VARCHAR2
) AS
BEGIN
	INSERT INTO color_piel(id_colorpiel, nombre)
	VALUES(secu_color_piel.NextVal, pNombre);
--NULL;
END REGISTRARCOLORPIEL;

CREATE OR REPLACE PROCEDURE EDITARCOLORPIEL
( pid_colorpiel IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update color_piel
	set nombre := pNombre
	WHERE id_colorpiel = pid_colorpiel;
--NULL;
END EDITARCOLORPIEL;

CREATE OR REPLACE PROCEDURE BORRARCOLORPIEL
( pid_colorpiel IN NUMBER
) AS
BEGIN
	delete from color_piel
	WHERE id_colorpiel = pid_colorpiel;
--NULL;
END BORRARCOLORPIEL;

--Prueba



----------------------------------------------------

-- Funciones

CREATE OR REPLACE PROCEDURE REGISTRARESTADOMATCH
( pNombre IN VARCHAR2
) AS
BEGIN
	INSERT INTO estado_match(id_estado_match, nombre)
	VALUES(secu_estado_match.NextVal, pNombre);
--NULL;
END REGISTRARESTADOMATCH;

CREATE OR REPLACE PROCEDURE EDITARESTADOMATCH
( pid_estado_match IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update estado_match
	set nombre := pNombre
	WHERE id_estado_match = pid_estado_match;
--NULL;
END EDITARESTADOMATCH;

CREATE OR REPLACE PROCEDURE BORRARESTADOMATCH
( pid_estado_match IN NUMBER
) AS
BEGIN
	delete from estado_match
	WHERE id_estado_match = pid_estado_match;
--NULL;
END BORRARESTADOMATCH;

--Prueba



----------------------------------------------------
