-- Funciones

CREATE OR REPLACE FUNCTION REGISTRAR_ACTIVIDADAL
( pNombre IN VARCHAR2
) RETURN NUMBER AS
BEGIN
	INSERT INTO actividadAL(id_actividadAL, nombre)
	VALUES(secu_actividadAL.NextVal, pNombre);
	RETURN secu_actividadAL.CurrVal;
END REGISTRAR_ACTIVIDADAL;

CREATE OR REPLACE PROCEDURE EDITAR_ACTIVIDADAL
( pID_ActividadAL IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update actividadAL
	set nombre := pNombre
	WHERE id_actividadAL = pID_ActividadAL;
--NULL;
END EDITAR_ACTIVIDADAL;

CREATE OR REPLACE PROCEDURE BORRAR_ACTIVIDADAL
( pID_ActividadAL IN NUMBER
) AS
BEGIN
	delete from actividadAL
	WHERE id_actividadAL = pID_ActividadAL;
--NULL;
END BORRAR_ACTIVIDADAL;

--Prueba

declare
  vNombre varchar2(30) := 'Escalar';
begin
  REGISTRAR_actividadal(vNombre);
end;

declare
  vNombre varchar2(30) := 'Correr';
  vID Number := 1;
begin
  EDITAR_actividadal(vID, vNombre);
end;

declare
  vID Number := 1;
begin
  BORRAR_actividadal(vID);
end;

----------------------------------------------------
----------------------------------------------------

-- Funciones----------------------------------------

CREATE OR REPLACE FUNCTION REGISTRAR_PAIS
( pNombre IN VARCHAR2
) RETURN NUMBER AS
BEGIN
	INSERT INTO pais(id_pais, nombre)
	VALUES(secu_pais.NextVal, pNombre);
	RETURN secu_pais.CurrVal;
END REGISTRAR_PAIS;

CREATE OR REPLACE PROCEDURE EDITAR_PAIS
( pID_pais IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update pais
	set nombre := pNombre
	WHERE id_pais = pID_pais;
--NULL;
END EDITAR_PAIS;

CREATE OR REPLACE PROCEDURE BORRAR_PAIS
( pID_pais IN NUMBER
) AS
BEGIN
	delete from pais
	WHERE id_pais = pID_pais;
--NULL;
END BORRAR_PAIS;

--Prueba-------------------------------------------

declare
  vNombre varchar2(30) := 'Cota Rica';
begin
  REGISTRAR_pais(vNombre);
end;

declare
  vNombre varchar2(30) := 'Costa Rica';
  vID Number := 1;
begin
  EDITAR_pais(vID, vNombre);
end;

declare
  vID Number := 1;
begin
  BORRAR_pais(vID);
end;

----------------------------------------------------
----------------------------------------------------

-- Funciones

CREATE OR REPLACE FUNCTION REGISTRAR_OCUPACION
( pNombre IN VARCHAR2
) RETURN NUMBER AS
BEGIN
	INSERT INTO ocupacion(id_ocupacion, nombre)
	VALUES(secu_ocupacion.NextVal, pNombre);
	RETURN secu_ocupacion.CurrVal;
END REGISTRAR_OCUPACION;

CREATE OR REPLACE PROCEDURE EDITAR_OCUPACION
( pID_ocupacion IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update ocupacion
	set nombre := pNombre
	WHERE id_ocupacion = pID_ocupacion;
END EDITAR_OCUPACION;

CREATE OR REPLACE PROCEDURE BORRAR_OCUPACION
( pID_ocupacion IN NUMBER
) AS
BEGIN
	delete from ocupacion
	WHERE id_ocupacion = pID_ocupacion;
--NULL;
END BORRAR_OCUPACION;

--Prueba-------------------------------------------

declare
  vNombre varchar2(30) := 'Programador';
begin
  REGISTRAR_ocupacion(vNombre);
end;

declare
  vNombre varchar2(30) := 'Profesor';
  vID Number := 1;
begin
  EDITAR_ocupacion(vID, vNombre);
end;

declare
  vID Number := 1;
begin
  BORRAR_ocupacion(vID);
end;

----------------------------------------------------
----------------------------------------------------

-- Funciones

CREATE OR REPLACE FUNCTION REGISTRAR_EVENTO
( pNombre IN VARCHAR2, pDescripcion IN VARCHAR2, pFecha IN VARCHAR2, pId_Ciudad IN NUMBER
) RETURN NUMBER AS
BEGIN
	INSERT INTO evento(id_evento, nombre, descripcion, fecha, id_cuidad)
	VALUES(secu_evento.NextVal, pNombre, pDescripcion, TO_DATE(pFecha, 'DDMMYYYY hh24:mi:ss'), pId_Ciudad);
	RETURN secu_evento.CurrVal;
END REGISTRAR_EVENTO;

CREATE OR REPLACE PROCEDURE EDITAR_EVENTO
( pID_evento IN NUMBER, pNombre IN VARCHAR2, pDescripcion IN VARCHAR2, pFecha IN VARCHAR2, pId_Ciudad IN NUMBER
) AS
BEGIN
	Update evento
	set nombre := pNombre,
		descripcion := pDescripcion,
		fecha := TO_DATE(pFecha, 'DDMMYYYY hh24:mi:ss')
		id_cuidad := pId_Ciudad
	WHERE id_evento = pID_evento;
END EDITAR_EVENTO;

CREATE OR REPLACE PROCEDURE BORRAR_EVENTO
( pID_evento IN NUMBER
) AS
BEGIN
	delete from evento
	WHERE id_evento = pID_evento;
--NULL;
END BORRAR_EVENTO;

--Prueba-------------------------------------------

declare
  vNombre varchar2(30) := 'Cuampleanos Roger';
  vDescripcion varchar2(400) := 'Celebrar el cumpleanos de Roger';
  vFecha varchar2(30) := '20032015 18:00:00';
  vCiudad Number := 1;
begin
  REGISTRAR_evento(vNombre, vDescripcion, vFecha, vCiudad);
end;

declare
  vNombre varchar2(30) := 'Cuampleanos Rogercito';
  vDescripcion varchar2(400) := 'Celebrar el cumpleanos de Rogercito';
  vFecha varchar2(30) := '20032015 20:00:00';
  vCiudad Number := 1;
  vID Number := 1;
begin
  EDITAR_evento(vID, vNombre, vDescripcion, vFecha, vCiudad);
end;

declare
  vID Number := 1;
begin
  BORRAR_evento(vID);
end;

----------------------------------------------------
----------------------------------------------------

-- Funciones

CREATE OR REPLACE FUNCTION REGISTRAR_COLOR_PIEL
( pNombre IN VARCHAR2
) RETURN NUMBER AS
BEGIN
	INSERT INTO color_piel(id_colorpiel, nombre)
	VALUES(secu_color_piel.NextVal, pNombre);
	RETURN secu_color_piel.CurrVal;
END REGISTRAR_COLORPIEL;

CREATE OR REPLACE PROCEDURE EDITAR_COLORPIEL
( pid_colorpiel IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update color_piel
	set nombre := pNombre
	WHERE id_colorpiel = pid_colorpiel;
--NULL;
END EDITAR_COLORPIEL;

CREATE OR REPLACE PROCEDURE BORRAR_COLORPIEL
( pid_colorpiel IN NUMBER
) AS
BEGIN
	delete from color_piel
	WHERE id_colorpiel = pid_colorpiel;
--NULL;
END BORRAR_COLORPIEL;

--Prueba-------------------------------------------

declare
  vNombre varchar2(30) := 'Amarillo';
begin
  REGISTRAR_colorpiel(vNombre);
end;

declare
  vNombre varchar2(30) := 'Blanco';
  vID Number := 1;
begin
  EDITAR_colorpiel(vID, vNombre);
end;

declare
  vID Number := 1;
begin
  BORRAR_colorpiel(vID);
end;

----------------------------------------------------
----------------------------------------------------

-- Funciones

CREATE OR REPLACE FUNCTION REGISTRAR_ESTADO_MATCH
( pNombre IN VARCHAR2
) RETURN NUMBER AS
BEGIN
	INSERT INTO estado_match(id_estado_match, nombre)
	VALUES(secu_estado_match.NextVal, pNombre);
	RETURN secu_estado_match.CurrVal;
END REGISTRAR_ESTADOMATCH;

CREATE OR REPLACE PROCEDURE EDITAR_ESTADOMATCH
( pid_estado_match IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update estado_match
	set nombre := pNombre
	WHERE id_estado_match = pid_estado_match;
--NULL;
END EDITAR_ESTADOMATCH;

CREATE OR REPLACE PROCEDURE BORRAR_ESTADOMATCH
( pid_estado_match IN NUMBER
) AS
BEGIN
	delete from estado_match
	WHERE id_estado_match = pid_estado_match;
--NULL;
END BORRAR_ESTADOMATCH;

--Prueba-------------------------------------------

declare
  vNombre varchar2(30) := 'Casado';
begin
  REGISTRAR_estadomatch(vNombre);
end;

declare
  vNombre varchar2(30) := 'Soltero';
  vID Number := 1;
begin
  EDITAR_estadomatch(vID, vNombre);
end;

declare
  vID Number := 1;
begin
  BORRAR_estadomatch(vID);
end;

----------------------------------------------------
----------------------------------------------------

-- Funciones

CREATE OR REPLACE FUNCTION REGISTRAR_INTERES
( pRango_edadi IN NUMBER, pRango_edadf IN NUMBER, pId_tipopareja IN NUMBER
) RETURN NUMBER AS
BEGIN
	INSERT INTO interes_gusto(id_interesg, rango_edadi, rango_edadf, id_tipopareja)
	VALUES(secu_interes_gusto.NextVal, pRango_edadi, pRango_edadf, pId_tipopareja);
	RETURN secu_interes_gusto.CurrVal;
END REGISTRAR_INTERES;

CREATE OR REPLACE PROCEDURE EDITAR_INTERES
( pid_interesg IN NUMBER, pRango_edadi IN NUMBER, pRango_edadf IN NUMBER, pId_tipopareja IN NUMBER
) AS
BEGIN
Update interes_gusto
	set rango_edadi := pRango_edadi,
		rango_edadf := pRango_edadf,
		id_tipopareja := pId_tipopareja
	WHERE id_interesg = pid_interesg;
--NULL;
END EDITAR_INTERES;

CREATE OR REPLACE PROCEDURE BORRAR_INTERES
( pid_interesg IN NUMBER
) AS
BEGIN
	delete from interes_gusto
	WHERE id_interesg = pid_interesg;
--NULL;
END BORRAR_INTERES;

--Prueba-------------------------------------------

declare
  vRango_edadi Number := 15;
  vRango_edadf Number := 30;
  vTipo_pareja Number := 1;
begin
  REGISTRAR_interes(vRango_edadi, vRango_edadf, vTipo_pareja);
end;

declare
  vRango_edadi Number := 17;
  vRango_edadf Number := 35;
  vTipo_pareja Number := 1;
  vID Number := 1;
begin
  EDITAR_interes(vID, vRango_edadi, vRango_edadf, vTipo_pareja);
end;

declare
  vID Number := 1;
begin
  BORRAR_interes(vID);
end;

----------------------------------------------------
----------------------------------------------------

-- Funciones

CREATE OR REPLACE FUNCTION REGISTRAR_USUARIOXIDIOMA
( pId_usuario IN NUMBER, pId_idioma IN NUMBER
) RETURN NUMBER AS
BEGIN
	INSERT INTO UsuarioXIdioma(ID_UsuarioXIdioma, id_usuario, id_idioma)
	VALUES(secu_UsuarioXIdioma.NextVal, pId_usuario, pId_idioma);
	RETURN secu_UsuarioXIdioma.CurrVal;
END REGISTRAR_USUARIOXIDIOMA;

CREATE OR REPLACE PROCEDURE EDITAR_USUARIOXIDIOMA
( pId_UsuarioXIdioma IN NUMBER, pId_usuario IN NUMBER, pId_idioma IN NUMBER
) AS
BEGIN
	Update UsuarioXIdioma
	set id_idioma := pId_idioma,
		id_usuario := pId_usuario
	WHERE ID_UsuarioXIdioma = pId_UsuarioXIdioma;
--NULL;
END EDITAR_USUARIOXIDIOMA;

CREATE OR REPLACE PROCEDURE BORRAR_USUARIOXIDIOMA
( pId_UsuarioXIdioma IN NUMBER
) AS
BEGIN
	delete from UsuarioXIdioma
	WHERE ID_UsuarioXIdioma = pId_UsuarioXIdioma;
--NULL;
END BORRAR_USUARIOXIDIOMA;

--Prueba-------------------------------------------

declare
  vId_Usuario Number := 1;
  vId_idioma Number := 1;
begin
  REGISTRAR_usuarioxidioma(vId_Usuario, vId_idioma);
end;

declare
  vId_Usuario Number := 2;
  vId_idioma Number := 1;
  vID Number := 1;
begin
  EDITAR_usuarioxidioma(vID, vId_Usuario, vId_idioma);
end;

declare
  vID Number := 1;
begin
  BORRAR_usuarioxidioma(vID);
end;

----------------------------------------------------
----------------------------------------------------

-- Funciones

CREATE OR REPLACE FUNCTION REGISTRAR_USUARIOXOCUPACION
( pId_usuario IN NUMBER, pId_ocupacion IN NUMBER
) RETURN NUMBER AS
BEGIN
	INSERT INTO UsuarioXOcupacion(ID_UsuarioXOcupacion, id_usuario, id_ocupacion)
	VALUES(secu_UsuarioXOcupacion.NextVal, pId_usuario, pId_ocupacion);
	RETURN secu_UsuarioXOcupacion.CurrVal;
END REGISTRAR_USUARIOXOCUPACION;

CREATE OR REPLACE PROCEDURE EDITAR_USUARIOXOCUPACION
( pID_UsuarioXOcupacion IN NUMBER, pId_usuario IN NUMBER, pId_ocupacion IN NUMBER
) AS
BEGIN
	Update UsuarioXOcupacion
	set id_ocupacion := pId_ocupacion,
		id_usuario := pId_usuario
	WHERE ID_UsuarioXOcupacion = pID_UsuarioXOcupacion;
--NULL;
END EDITAR_USUARIOXOCUPACION;

CREATE OR REPLACE PROCEDURE BORRAR_USUARIOXOCUPACION
( pID_UsuarioXOcupacion IN NUMBER
) AS
BEGIN
	delete from UsuarioXOcupacion
	WHERE ID_UsuarioXOcupacion = pID_UsuarioXOcupacion;
--NULL;
END BORRAR_USUARIOXOCUPACION;

--Prueba

declare
  vId_Usuario Number := 1;
  vId_ocupacion Number := 1;
begin
  REGISTRAR_usuarioxocupacion(vId_Usuario, vId_ocupacion);
end;

declare
  vId_Usuario Number := 2;
  vId_ocupacion Number := 1;
  vID Number := 1;
begin
  EDITAR_usuarioxocupacion(vID, vId_Usuario, vId_ocupacion);
end;

declare
  vID Number := 1;
begin
  BORRAR_usuarioxocupacion(vID);
end;

----------------------------------------------------
----------------------------------------------------

-- Funciones

CREATE OR REPLACE FUNCTION REGISTRAR_USUARIO
( pNombre IN VARCHAR2, 
	pPrimer_apellido IN VARCHAR2, 
	pSegundo_apellido IN VARCHAR2, 
	pFecha_nac IN VARCHAR2, 
	pEmail IN VARCHAR2, 
	pFoto IN VARCHAR2, 
	pClave IN VARCHAR2, 
	pGustan_mascota IN VARCHAR2, 
	pTiene_mascota IN VARCHAR2, 
	pTendria_mascota IN VARCHAR2, 
	pid_religion IN NUMBER, 
	pid_estadoCi IN NUMBER, 
	pid_educacion IN NUMBER, 
	pid_cuidad IN NUMBER, 
	pid_aspectoFi IN NUMBER, 
	pid_hobby IN NUMBER, 
	pid_actividadAL IN NUMBER, 
	pid_estilovida IN NUMBER, 
	pid_ocupacion IN NUMBER, 
	pid_rol IN NUMBER, 
	pid_signo_zodiacal IN NUMBER,
	pid_interes_gusto IN NUMBER,
	pid_Genero IN NUMBER
) RETURN NUMBER AS
BEGIN
	INSERT INTO Usuario(ID_Usuario, 
					nombre, 
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
					id_aspectoFi, 
					id_hobby, 
					id_actividadAL, 
					id_estilovida, 
					id_ocupacion, 
					id_rol, 
					id_signo_zodiacal
					id_interes_gusto,
					id_genero)
	VALUES(secu_Usuario.NextVal, 
		   pNombre, 
		   pPrimer_apellido, 
		   pSegundo_apellido, 
		   TO_DATE(pFecha_nac, 'DDMMYYYY'), 
		   pEmail, 
		   pFoto,
		   pGenero,  
		   pClave, 
		   pGustan_mascota, 
		   pTiene_mascota, 
		   pTendria_mascota, 
		   pid_religion, 
		   pid_estadoCi, 
		   pid_educacion, 
		   pid_cuidad, 
		   pid_aspectoFi, 
		   pid_hobby, 
		   pid_actividadAL, 
		   pid_estilovida, 
		   pid_ocupacion, 
		   pid_rol, 
		   pid_signo_zodiacal,
		   pid_interes_gusto,
			 pid_Genero);
	RETURN secu_Usuario.CurrVal;
END REGISTRAR_USUARIO;

CREATE OR REPLACE PROCEDURE EDITAR_USUARIO
( pID_Usuario IN NUMBER,
	pNombre IN VARCHAR2, 
	pPrimer_apellido IN VARCHAR2, 
	pSegundo_apellido IN VARCHAR2, 
	pFecha_nac IN VARCHAR2, 
	pEmail IN VARCHAR2, 
	pFoto IN VARCHAR2, 
	pGenero IN NUMBER, 
	pClave IN VARCHAR2, 
	pGustan_mascota IN VARCHAR2, 
	pTiene_mascota IN VARCHAR2, 
	pTendria_mascota IN VARCHAR2, 
	pid_religion IN NUMBER, 
	pid_estadoCi IN NUMBER, 
	pid_educacion IN NUMBER, 
	pid_cuidad IN NUMBER, 
	pid_aspectoFi IN NUMBER, 
	pid_hobby IN NUMBER, 
	pid_actividadAL IN NUMBER, 
	pid_estilovida IN NUMBER, 
	pid_ocupacion IN NUMBER, 
	pid_rol IN NUMBER, 
	pid_signo_zodiacal IN NUMBER,
	pid_interes_gusto IN NUMBER,
	pid_Genero IN NUMBER
) AS
BEGIN
	Update Usuario
	set nombre := pNombre, 
	   primer_apellido := pPrimer_apellido, 
	   segundo_apellido := pSegundo_apellido, 
	   fecha_nac := TO_DATE(pFecha_nac, 'DDMMYYYY'), 
	   email := pEmail, 
	   foto := pFoto,
	   genero := pGenero,  
	   clave := pClave, 
	   gustan_mascota := pGustan_mascota, 
	   tiene_mascota := pTiene_mascota, 
	   tendria_mascota := pTendria_mascota, 
	   id_religion := pid_religion, 
	   id_estadoCi := pid_estadoCi, 
	   id_educacion := pid_educacion, 
	   id_cuidad := pid_cuidad, 
	   id_aspectoFi := pid_aspectoFi, 
	   id_hobby := pid_hobby, 
	   id_actividadAL := pid_actividadAL, 
	   id_estilovida := pid_estilovida, 
	   id_ocupacion := pid_ocupacion, 
	   id_rol := pid_rol, 
	   id_signo_zodiacal := pid_signo_zodiacal,
	   id_interes_gusto := pid_interes_gusto,
	   id_genero := pid_Genero
	WHERE ID_Usuario = pID_Usuario;
--NULL;
END EDITAR_USUARIO;

CREATE OR REPLACE PROCEDURE BORRAR_USUARIO
( pID_Usuario IN NUMBER
) AS
BEGIN
	delete from Usuario
	WHERE ID_Usuario = pID_Usuario;
--NULL;
END BORRAR_USUARIO;

--Prueba

declare
	vnombre := 'Rolland';
	vprimer_apellido := 'Payne';
	vsegundo_apellido := 'Elliot';
	vfecha_nac := TO_DATE('10091995', 'DDMMYYYY');
	vemail := 'rp90elliott@randatmail.com';
	vfoto := null;
	vgenero := 'Hombre';
	vclave  := '123456789'
	vgustan_mascota := 'no';
	vtiene_mascota  := 'no';
	vtendria_mascota := 'no'
	vid_religion := 1;
	vid_estadoCi  := 1;
	vid_educacion := 1;
	vid_ciudad := 1;
	vid_aspectoF := 1;
	vid_estilovida := 1;
	vid_rol := 1;
	vid_signo_zodiacal := 1;
begin
  REGISTRAR_usuario(vnombre, vprimer_apellido, vsegundo_apellido, vfecha_nac
  vemail, vfoto, vgenero, vclave, vgustan_mascota, vtiene_mascota, vtendria_mascota,
  vid_religion, vid_estadoCi, vid_educacion, vid_ciudad, vid_aspectoF, vid_estilovida,
  vid_rol, vid_signo_zodiacal);
end;

declare
	vnombre := 'Roland';
	vprimer_apellido := 'Peine';
	vsegundo_apellido := 'Elliot';
	vfecha_nac := TO_DATE('10091995', 'DDMMYYYY');
	vemail := 'rp90ellitto@randatmail.com';
	vfoto := null;
	vgenero := 'Hombre';
	vclave  := '123456789'
	vgustan_mascota := 'no';
	vtiene_mascota  := 'no';
	vtendria_mascota := 'no'
	vid_religion := 1;
	vid_estadoCi  := 1;
	vid_educacion := 1;
	vid_ciudad := 1;
	vid_aspectoF := 1;
	vid_estilovida := 1;
	vid_rol := 1;
	vid_signo_zodiacal := 1;
	vID Number := 1;
begin
  EDITAR_usuario(vID, vnombre, vprimer_apellido, vsegundo_apellido, vfecha_nac
  vemail, vfoto, vgenero, vclave, vgustan_mascota, vtiene_mascota, vtendria_mascota,
  vid_religion, vid_estadoCi, vid_educacion, vid_ciudad, vid_aspectoF, vid_estilovida,
  vid_rol, vid_signo_zodiacal);
end;

declare
  vID Number := 1;
begin
  BORRAR_usuario(vID);
end;

----------------------------------------------------
