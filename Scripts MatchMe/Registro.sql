--################ Signo_Zodiacal ################--
CREATE OR REPLACE FUNCTION REGISTRAR_Signo_Zodiacal(
	pNombre IN VARCHAR2, 
	pfecha_inicio IN DATE, 
	pfecha_final IN DATE) 	RETURN NUMBER AS
BEGIN
	INSERT INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, pNombre, pfecha_inicio, pfecha_final);
	RETURN secu_signo_zodiacal.currval;
END Registrar_Signo_Zodiacal;

create or replace
PROCEDURE EDITAR_Signo_Zodiacal( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2, 
	pfecha_inicio IN DATE, 
	pfecha_final IN DATE ) AS
BEGIN
	Update Signo_Zodiacal
	set Nombre = pNombre, fecha_inicio = pfecha_inicio, fecha_final = pfecha_final 
	WHERE ID_Signo_Zodiacal = pID;
END EDITAR_Signo_Zodiacal;

CREATE OR REPLACE PROCEDURE BORRAR_Signo_Zodiacal( pID IN NUMBER ) AS
BEGIN
	delete from Signo_Zodiacal
	WHERE ID_Signo_Zodiacal = pID;
END BORRAR_Signo_Zodiacal;


--################ estado ################--

CREATE OR REPLACE FUNCTION REGISTRAR_estado( pNombre IN VARCHAR2, pPais In Number ) 	RETURN NUMBER AS
BEGIN
	INSERT INTO estado(ID_estado, Nombre, ID_pais)
    	VALUES(secu_estado.NextVal, pNombre, pPais);
	RETURN secu_Hobby.currval;
END Registrar_estado;

CREATE OR REPLACE PROCEDURE EDITAR_estado(pID In Number, pNombre IN VARCHAR2, pPais In Number) AS
BEGIN
	Update estado
		set nombre = pNombre,  ID_pais = pPais
	    WHERE ID_estado = pID;
END EDITAR_estado;

CREATE OR REPLACE PROCEDURE BORRAR_estado( pID IN NUMBER ) AS
BEGIN
	delete from estado
	WHERE ID_estado = pID;
END BORRAR_estado;


--################ UsuariosXWink ################--

create or replace
FUNCTION REGISTRAR_UsuariosXWink(
	pFecha IN DATE, 
	pID_Enviado IN NUMBER, 
	pID_Recibido IN NUMBER) 	RETURN NUMBER AS
BEGIN
	INSERT INTO UsuariosXWink(ID_Wink, Fecha, ID_Enviado, ID_Recibido)
		VALUES(secu_Wink.NextVal, pFecha, pID_Enviado, pID_Recibido);
	RETURN secu_Hobby.currval;
END Registrar_UsuariosXWink;


CREATE OR REPLACE PROCEDURE EDITAR_UsuariosXWink( 
	pID IN NUMBER, 	
	pFecha IN DATE, 
	pID_Enviado IN NUMBER, 
	pID_Recibido IN NUMBER) AS
BEGIN
	Update UsuariosXWink
		set Fecha = pFecha, ID_Enviado = pID_Enviado, ID_Recibido = pID_Recibido
	    WHERE ID_UsuariosXWink = pID;
END EDITAR_UsuariosXWink;

CREATE OR REPLACE PROCEDURE BORRAR_UsuariosXWink( pID IN NUMBER ) AS
BEGIN
	delete from Wink
	WHERE ID_UsuariosXWink = pID;
END BORRAR_UsuariosXWink;

--################ Idioma ################--

CREATE OR REPLACE FUNCTION REGISTRAR_Idioma(
	pNombre IN VARCHAR2) 	RETURN NUMBER AS
BEGIN
	INSERT INTO Idioma(ID_Idioma, Nombre)
		VALUES(secu_Idioma.NextVal, pNombre);
	RETURN secu_Hobby.currval;
END Registrar_Idioma;

CREATE OR REPLACE PROCEDURE EDITAR_Idioma( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2) AS
BEGIN
	Update Idioma
		set Nombre = pNombre
	    WHERE ID_Idioma = pID;
END EDITAR_Idioma;

CREATE OR REPLACE PROCEDURE BORRAR_Idioma( pID IN NUMBER ) AS
BEGIN
	delete from Idioma
	WHERE ID_Idioma = pID;
END BORRAR_Idioma;

--################ Estilo_Vida ################--

CREATE OR REPLACE FUNCTION REGISTRAR_Estilo_Vida(
	pFuma IN VARCHAR2, 
    pFrecEjercicios IN VARCHAR2, 
    pCantidadHijos IN NUMBER, 
    pQuiereHIjos IN VARCHAR2, 
    pSalarioPromedio IN NUMBER, 
    pSlogan IN VARCHAR2, 
    pID_TipoBebedor IN Number) 	RETURN NUMBER AS
BEGIN
	INSERT INTO Estilo_Vida(
		ID_Estilo_Vida,
		Fuma, 
        FrecEjercicios, 
        CantidadHijos, 
        QuiereHIjos, 
        SalarioPromedio, 
        Slogan, 
        ID_TipoBebedor)
    VALUES(
    	secu_Estilo_Vida.NextVal, 
    	pFuma, 
        pFrecEjercicios, 
        pCantidadHijos, 
        pQuiereHIjos, 
        pSalarioPromedio, 
        pSlogan, 
        pSlogan);
	RETURN secu_Hobby.currval;
END Registrar_Estilo_Vida;

CREATE OR REPLACE PROCEDURE EDITAR_Estilo_Vida( 
	pID IN NUMBER, 	
	pFuma IN VARCHAR2, 
    pFrecEjercicios IN VARCHAR2, 
    pCantidadHijos IN NUMBER, 
    pQuiereHIjos IN VARCHAR2, 
    pSalarioPromedio IN NUMBER, 
    pSlogan IN VARCHAR2, 
    pID_TipoBebedor IN Number) AS
BEGIN
	Update Estilo_Vida
	set 
        Fuma = pFuma, 
        FrecEjercicios = pFrecEjercicios, 
        CantidadHijos = pCantidadHijos, 
        QuiereHIjos = pQuiereHIjos, 
        SalarioPromedio = pSalarioPromedio, 
        Slogan = pSlogan, 
        ID_TipoBebedor = pSlogan
    
    WHERE ID_EstiloVida = pID;
END EDITAR_Estilo_Vida;

CREATE OR REPLACE PROCEDURE BORRAR_Estilo_Vida( pID IN NUMBER ) AS
BEGIN
	delete from Estilo_Vida
	WHERE ID_Estilo_Vida = pID;
END BORRAR_Estilo_Vida;


--################ genero ################--

CREATE OR REPLACE FUNCTION REGISTRAR_Genero(
	pNombre IN VARCHAR2) 	RETURN NUMBER AS
BEGIN
	INSERT INTO genero(ID_Genero, Nombre)
		VALUES(secu_Genero.NextVal, pNombre);
	RETURN secu_Genero.currval;
END Registrar_Genero;

CREATE OR REPLACE PROCEDURE EDITAR_Genero( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2) AS
BEGIN
	Update Genero
		set Nombre = pNombre
	    WHERE ID_Genero = pID;
END EDITAR_Genero;

CREATE OR REPLACE PROCEDURE BORRAR_Genero( pID IN NUMBER ) AS
BEGIN
	delete from Genero
	WHERE ID_Genero = pID;
END BORRAR_Genero;

--################ Aspecto_Fisico ################--

CREATE OR REPLACE FUNCTION REGISTRAR_Aspecto_Fisico(
    pAltura IN NUMBER, pPeso IN NUMBER,
    pID_ColorOjos IN NUMBER, pID_ColorPiel IN NUMBER,
    pID_ColorPelo IN NUMBER, pID_Contextura IN NUMBER) 	
    RETURN NUMBER AS
BEGIN
	INSERT INTO Aspecto_Fisico(ID_AspectoF, altura, peso, id_colorojos, id_colorpiel, id_colorpelo, id_contextura )
		VALUES(secu_Aspecto_Fisico.NextVal, paltura,  ppeso, pid_colorojos, pid_colorpiel, pid_colorpelo, pid_contextura);
	RETURN secu_Aspecto_Fisico.currval;
END Registrar_Aspecto_Fisico;

CREATE OR REPLACE PROCEDURE EDITAR_Aspecto_Fisico( 
	pID IN NUMBER, 	
	pGenero IN VARCHAR2) AS
BEGIN
	Update Aspecto_Fisico
		set Genero = pGenero
	    WHERE ID_genero = pID;
END EDITAR_Aspecto_Fisico;

CREATE OR REPLACE PROCEDURE BORRAR_Aspecto_Fisico( pID IN NUMBER ) AS
BEGIN
	delete from Aspecto_Fisico
	WHERE ID_AspectoF = pID;
END BORRAR_Aspecto_Fisico;


--################ Color_Pelo ################--

CREATE OR REPLACE FUNCTION REGISTRAR_Color_Pelo(
	pNombre IN VARCHAR2) 	RETURN NUMBER AS
BEGIN
	INSERT INTO Color_Pelo(ID_ColorPelo, Nombre)
		VALUES(secu_Color_Pelo.NextVal, pNombre);
	RETURN secu_Hobby.currval;
END Registrar_Color_Pelo;

CREATE OR REPLACE PROCEDURE EDITAR_Color_Pelo( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2) AS
BEGIN
	Update Color_Pelo
		set Nombre = pNombre
	    WHERE ID_ColorPelo = pID;
END EDITAR_Color_Pelo;

CREATE OR REPLACE PROCEDURE BORRAR_Color_Pelo( pID IN NUMBER ) AS
BEGIN
	delete from Color_Pelo
	WHERE ID_ColorPelo = pID;
END BORRAR_Color_Pelo;

--################ UsuariosXMatch ################--

CREATE OR REPLACE FUNCTION REGISTRAR_UsuariosXMatch(
	pFecha IN DATE,
	pID_Estado_match IN NUMBER,
	pID_Propio IN NUMBER, 
	pID_Recomendacion IN NUMBER) 	RETURN NUMBER AS
BEGIN
	INSERT INTO UsuariosXMatch(ID_UsuariosXMatch, Fecha, ID_Estado_match, ID_Propio, ID_Recomendacion)
		VALUES(secu_UsuariosXMatch.NextVal, pFecha, pID_Estado_match, pID_Propio, pID_Recomendacion);
	RETURN secu_UsuariosXMatch.currval;
END Registrar_UsuariosXMatch;


CREATE OR REPLACE PROCEDURE EDITAR_UsuariosXMatch( 
	pID IN NUMBER, 	
	pFecha IN DATE, 
	pID_Estado_match IN NUMBER,
	pID_Propio IN NUMBER, 
	pID_Recomendacion IN NUMBER) AS
BEGIN
	Update UsuariosXMatch
		set Fecha = pFecha, ID_Estado_match = pID_Estado_match, ID_Propio = pID_Propio, ID_Recomendacion = pID_Recomendacion
	    WHERE ID_UsuariosXMatch = pID;
END EDITAR_UsuariosXMatch;

CREATE OR REPLACE PROCEDURE BORRAR_UsuariosXMatch( pID IN NUMBER ) AS
BEGIN
	delete from UsuariosXMatch
	WHERE ID_UsuariosXMatch = pID;
END BORRAR_UsuariosXMatch;

--################ HobbyXUsuario ################--

CREATE OR REPLACE FUNCTION REGISTRAR_HobbyXUsuario(
	pID_Usuario IN NUMBER,
	pID_Hobby IN NUMBER) 	RETURN NUMBER AS
BEGIN
	INSERT INTO HobbyXUsuario(ID_HobbyXUsuario, ID_Usuario, ID_Hobby)
		VALUES(secu_HobbyXUsuario.NextVal, pID_Usuario, pID_Hobby);
	RETURN secu_HobbyXUsuario.currval;
END Registrar_HobbyXUsuario;

CREATE OR REPLACE PROCEDURE EDITAR_HobbyXUsuario( 
	pID IN NUMBER, 	
	pID_Usuario IN NUMBER,
	pID_Hobby IN NUMBER) AS
BEGIN
	Update HobbyXUsuario
		set ID_Usuario = pID_Usuario, ID_Hobby = pID_Hobby
	    WHERE ID_HobbyXUsuario = pID;
END EDITAR_HobbyXUsuario;

CREATE OR REPLACE PROCEDURE BORRAR_HobbyXUsuario( pID IN NUMBER ) AS
BEGIN
	delete from HobbyXUsuario
	WHERE ID_HobbyXUsuario = pID;
END BORRAR_HobbyXUsuario;



--################ ActividadXUsuario ################--

create or replace
FUNCTION REGISTRAR_ActividadXUsuario(
	pID_Usuario IN NUMBER,
	pID_actividadA IN NUMBER) 	RETURN NUMBER AS
BEGIN
	INSERT INTO ActividadXUsuario(ID_ActividadXUsuario, ID_Usuario, ID_actividadAL)
		VALUES(secu_ActividadXUsuario.NextVal, pID_Usuario, pID_actividadA);
	RETURN secu_ActividadXUsuario.currval;
END Registrar_ActividadXUsuario;


CREATE OR REPLACE PROCEDURE EDITAR_ActividadXUsuario( 
	pID IN NUMBER, 	
	pID_Usuario IN NUMBER,
	pID_actividadAL IN NUMBER) AS
BEGIN
	Update ActividadXUsuario
		set ID_Usuario = pID_Usuario, ID_actividadAL = pID_actividadAL
	    WHERE ID_ActividadXUsuario = pID;
END EDITAR_ActividadXUsuario;

CREATE OR REPLACE PROCEDURE BORRAR_ActividadXUsuario( pID IN NUMBER ) AS
BEGIN
	delete from ActividadXUsuario
	WHERE ID_ActividadXUsuario = pID;
END BORRAR_ActividadXUsuario;

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
	set nombre = pNombre
	WHERE id_actividadAL = pID_ActividadAL;
END EDITAR_ACTIVIDADAL;

CREATE OR REPLACE PROCEDURE BORRAR_ACTIVIDADAL
( pID_ActividadAL IN NUMBER
) AS
BEGIN
	delete from actividadAL
	WHERE id_actividadAL = pID_ActividadAL;
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

create or replace
PROCEDURE EDITAR_PAIS
( pID_pais IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update pais
	set nombre = pNombre
	WHERE id_pais = pID_pais;
END EDITAR_PAIS;


CREATE OR REPLACE PROCEDURE BORRAR_PAIS
( pID_pais IN NUMBER
) AS
BEGIN
	delete from pais
	WHERE id_pais = pID_pais;
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
	set nombre = pNombre
	WHERE id_ocupacion = pID_ocupacion;
END EDITAR_OCUPACION;

CREATE OR REPLACE PROCEDURE BORRAR_OCUPACION
( pID_ocupacion IN NUMBER
) AS
BEGIN
	delete from ocupacion
	WHERE id_ocupacion = pID_ocupacion;

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

create or replace
FUNCTION REGISTRAR_EVENTO
( pNombre IN VARCHAR2, pDescripcion IN VARCHAR2, pFecha IN VARCHAR2, pId_Ciudad IN NUMBER
) RETURN NUMBER AS
BEGIN
	INSERT INTO evento(id_evento, nombre, descripcion, fecha, id_ciudad)
	VALUES(secu_evento.NextVal, pNombre, pDescripcion, TO_DATE(pFecha, 'DDMMYYYY hh24:mi:ss'), pId_Ciudad);
	RETURN secu_evento.CurrVal;
END REGISTRAR_EVENTO;


create or replace
PROCEDURE EDITAR_EVENTO
( pID_evento IN NUMBER, pNombre IN VARCHAR2, pDescripcion IN VARCHAR2, pFecha IN VARCHAR2, pId_Ciudad IN NUMBER
) AS
BEGIN
	Update evento
	set nombre = pNombre,	descripcion = pDescripcion,	
  fecha = TO_DATE(pFecha, 'DDMMYYYY hh24:mi:ss'),	id_ciudad = pId_Ciudad
	WHERE id_evento = pID_evento;
END EDITAR_EVENTO;

CREATE OR REPLACE PROCEDURE BORRAR_EVENTO
( pID_evento IN NUMBER
) AS
BEGIN
	delete from evento
	WHERE id_evento = pID_evento;
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

create or replace
FUNCTION REGISTRAR_COLOR_PIEL
( pNombre IN VARCHAR2
) RETURN NUMBER AS
BEGIN
	INSERT INTO color_piel(id_colorpiel, nombre)
	VALUES(secu_color_piel.NextVal, pNombre);
	RETURN secu_color_piel.CurrVal;
END REGISTRAR_COLOR_PIEL;

create or replace
PROCEDURE EDITAR_COLORPIEL
( pid_colorpiel IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update color_piel
	set nombre = pNombre
	WHERE id_colorpiel = pid_colorpiel;
END EDITAR_COLORPIEL;

CREATE OR REPLACE PROCEDURE BORRAR_COLORPIEL
( pid_colorpiel IN NUMBER
) AS
BEGIN
	delete from color_piel
	WHERE id_colorpiel = pid_colorpiel;
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
END REGISTRAR_ESTADO_MATCH;

CREATE OR REPLACE PROCEDURE EDITAR_ESTADOMATCH
( pid_estado_match IN NUMBER, pNombre IN VARCHAR2
) AS
BEGIN
	Update estado_match
	set nombre = pNombre
	WHERE id_estado_match = pid_estado_match;
END EDITAR_ESTADOMATCH;

CREATE OR REPLACE PROCEDURE BORRAR_ESTADOMATCH
( pid_estado_match IN NUMBER
) AS
BEGIN
	delete from estado_match
	WHERE id_estado_match = pid_estado_match;

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

create or replace
PROCEDURE EDITAR_INTERES
( pid_interesg IN NUMBER, pRango_edadi IN NUMBER, pRango_edadf IN NUMBER, pId_genero IN NUMBER
) AS
BEGIN
Update interes_gusto
	set rango_edadi = pRango_edadi,
		rango_edadf = pRango_edadf,
		Id_genero = pId_genero
	WHERE id_interesg = pid_interesg;
END EDITAR_INTERES;

CREATE OR REPLACE PROCEDURE BORRAR_INTERES
( pid_interesg IN NUMBER
) AS
BEGIN
	delete from interes_gusto
	WHERE id_interesg = pid_interesg;

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

create or replace
PROCEDURE EDITAR_USUARIOXIDIOMA
( pId_UsuarioXIdioma IN NUMBER, pId_usuario IN NUMBER, pId_idioma IN NUMBER
) AS
BEGIN
	Update UsuarioXIdioma
	set id_idioma = pId_idioma,
		id_usuario = pId_usuario
	WHERE ID_UsuarioXIdioma = pId_UsuarioXIdioma;
END EDITAR_USUARIOXIDIOMA;


CREATE OR REPLACE PROCEDURE BORRAR_USUARIOXIDIOMA
( pId_UsuarioXIdioma IN NUMBER
) AS
BEGIN
	delete from UsuarioXIdioma
	WHERE ID_UsuarioXIdioma = pId_UsuarioXIdioma;
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
	set id_ocupacion = pId_ocupacion,
		id_usuario = pId_usuario
	WHERE ID_UsuarioXOcupacion = pID_UsuarioXOcupacion;
END EDITAR_USUARIOXOCUPACION;

CREATE OR REPLACE PROCEDURE BORRAR_USUARIOXOCUPACION
( pID_UsuarioXOcupacion IN NUMBER
) AS
BEGIN
	delete from UsuarioXOcupacion
	WHERE ID_UsuarioXOcupacion = pID_UsuarioXOcupacion;
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

CREATE OR REPLACE FUNCTION REGISTRAR_USUARIO( pNombre IN VARCHAR2, 
	pPrimer_apellido IN VARCHAR2, pSegundo_apellido IN VARCHAR2, 
	pFecha_nac IN VARCHAR2, pEmail IN VARCHAR2, 
	pFoto IN VARCHAR2, pClave IN VARCHAR2, 
	pGustan_mascota IN VARCHAR2, pTiene_mascota IN VARCHAR2, 
	pTendria_mascota IN VARCHAR2, pid_religion IN NUMBER, 
	pid_estadoCi IN NUMBER, pid_educacion IN NUMBER, 
	pid_cuidad IN NUMBER, pid_aspectoFi IN NUMBER, 
	pid_hobby IN NUMBER, pid_actividadAL IN NUMBER, 
	pid_estilovida IN NUMBER, pid_ocupacion IN NUMBER, 
	pid_rol IN NUMBER, pid_signo_zodiacal IN NUMBER,
	pid_interes_gusto IN NUMBER, pid_Genero IN NUMBER
) RETURN NUMBER AS
BEGIN
	INSERT INTO Usuario(ID_Usuario, nombre, primer_apellido, 
					segundo_apellido, fecha_nac, email, foto, 
					genero, clave, gustan_mascota, tiene_mascota, 
					tendria_mascota, id_religion, id_estadoCi, 
					id_educacion, id_cuidad, id_aspectoFi, 
					id_hobby, id_actividadAL,	id_estilovida, 
					id_ocupacion, id_rol, id_signo_zodiacal
					id_interes_gusto,id_genero)
          
	VALUES(secu_Usuario.NextVal,  pNombre,  pPrimer_apellido, 
		   pSegundo_apellido, TO_DATE(pFecha_nac, 'DDMMYYYY'), 
		   pEmail,  pFoto, pGenero,   pClave,  pGustan_mascota, 
		   pTiene_mascota, pTendria_mascota, pid_religion, 
		   pid_estadoCi, pid_educacion, pid_cuidad, 
		   pid_aspectoFi,  pid_hobby,  pid_actividadAL, 
		   pid_estilovida,  pid_ocupacion,  pid_rol, 
		   pid_signo_zodiacal, pid_interes_gusto,
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
	set nombre = pNombre, 
	   primer_apellido = pPrimer_apellido, 
	   segundo_apellido = pSegundo_apellido, 
	   fecha_nac = TO_DATE(pFecha_nac, 'DDMMYYYY'), 
	   email = pEmail, 
	   foto = pFoto,
	   genero = pGenero,  
	   clave = pClave, 
	   gustan_mascota = pGustan_mascota, 
	   tiene_mascota = pTiene_mascota, 
	   tendria_mascota = pTendria_mascota, 
	   id_religion = pid_religion, 
	   id_estadoCi = pid_estadoCi, 
	   id_educacion = pid_educacion, 
	   id_cuidad = pid_cuidad, 
	   id_aspectoFi = pid_aspectoFi, 
	   id_estilovida = pid_estilovida, 
	   id_rol = pid_rol, 
	   id_signo_zodiacal = pid_signo_zodiacal,
	   id_genero = pid_Genero
	WHERE ID_Usuario = pID_Usuario;

END EDITAR_USUARIO;

CREATE OR REPLACE PROCEDURE BORRAR_USUARIO
( pID_Usuario IN NUMBER
) AS
BEGIN
	delete from Usuario
	WHERE ID_Usuario = pID_Usuario;

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

CREATE OR REPLACE FUNCTION REGISTRAR_Rol(
	pNombre IN VARCHAR2) AS
BEGIN
	INSERT INTO Rol(ID_Rol, Nombre)
	VALUES(secu_Rol.NextVal, pNombre);
	RETURN secu_Rol.CurrVal;
END REGISTRAR_Rol;

CREATE OR REPLACE PROCEDURE EDITAR_Rol( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2) AS
BEGIN
	Update Rol
		set Nombre = pNombre
	    WHERE ID_Rol = pID;
END EDITAR_Rol;

CREATE OR REPLACE PROCEDURE BORRAR_Rol( pID IN NUMBER ) AS
BEGIN
	delete from Rol
	WHERE ID_Rol = pID;
END BORRAR_Rol;

--------------------------------------------------
create or replace
FUNCTION REGISTRAR_Bitacora_Visita(
	pFecha IN DATE, 
	pID_Visitante IN NUMBER, 
	pID_Visitado IN NUMBER) RETURN NUMBER AS
BEGIN
	INSERT INTO Bitacora_Visita(ID_Visita, Fecha, ID_Visitante, ID_visitado)
    VALUES(secu_Bitacora_Visita.NextVal, pFecha, pID_Visitante, pID_visitado);
    	RETURN secu_Bitacora_Visita.CurrVal;
END REGISTRAR_Bitacora_Visita;

create or replace
PROCEDURE EDITAR_Bitacora_Visita( 
	pID IN NUMBER, 	
	pFecha IN DATE, 
	pID_Visitante IN NUMBER, 
	pID_Visitado IN NUMBER) AS
BEGIN
	Update Bitacora_Visita
	set Fecha = pFecha, ID_Visitante = pID_Visitante, ID_Visitado = pID_visitado
    WHERE ID_visita = pID;
END EDITAR_Bitacora_Visita;

CREATE OR REPLACE PROCEDURE BORRAR_Bitacora_Visita( pID IN NUMBER ) AS
BEGIN
	delete from Bitacora_Visita
	WHERE ID_Bitacora_Visita = pID;
END BORRAR_Bitacora_Visita;

---------------------------------------------------------------------
create or replace
FUNCTION REGISTRAR_Ciudad( pNombre IN VARCHAR2, pID_estado IN NUMBER ) 
RETURN NUMBER AS
BEGIN
	INSERT INTO Ciudad(ID_Ciudad, Nombre, ID_estado)
    	VALUES(secu_Ciudad.NextVal, pNombre, pID_estado);
    	RETURN secu_Ciudad.CurrVal;
END REGISTRAR_Ciudad;

CREATE OR REPLACE PROCEDURE EDITAR_Ciudad(pNombre IN VARCHAR2) AS
BEGIN
	Update Ciudad
		set Nombre = pNombre
	    WHERE ID_Ciudad = pID;
END EDITAR_Ciudad;

CREATE OR REPLACE PROCEDURE BORRAR_Ciudad( pID IN NUMBER ) AS
BEGIN
	delete from Ciudad
	WHERE ID_Ciudad = pID;
END BORRAR_Ciudad;


---------------------------------------------------------------------
CREATE OR REPLACE FUNCTION REGISTRAR_Religion(
	pNombre IN VARCHAR2)  RETURN NUMBER AS
BEGIN
	INSERT INTO Religion(ID_Religion, Nombre)
		VALUES(secu_Religion.NextVal, pNombre);
		RETURN secu_Religion.CurrVal;
END REGISTRAR_Religion;

create or replace
PROCEDURE EDITAR_Ciudad(pID In Number, pNombre IN VARCHAR2) AS
BEGIN
	Update Ciudad
		set Nombre = pNombre
	    WHERE ID_Ciudad = pID;
END EDITAR_Ciudad;

CREATE OR REPLACE PROCEDURE BORRAR_Religion( pID IN NUMBER ) AS
BEGIN
	delete from Religion
	WHERE ID_Religion = pID;
END BORRAR_Religion;


------------------------------------------------------------------
CREATE OR REPLACE FUNCTION REGISTRAR_Educacion(
	pNombre IN VARCHAR2)  RETURN NUMBER  AS
BEGIN
	INSERT INTO Educacion(ID_Educacion, Nombre)
		VALUES(secu_Educacion.NextVal, pNombre);
		RETURN secu_Educacion.CurrVal;
END REGISTRAR_Educacion;

CREATE OR REPLACE PROCEDURE EDITAR_Educacion( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2) AS
BEGIN
	Update Educacion
		set Nombre = pNombre
	    WHERE ID_Educacion = pID;
END EDITAR_Educacion;

CREATE OR REPLACE PROCEDURE BORRAR_Educacion( pID IN NUMBER ) AS
BEGIN
	delete from Educacion
	WHERE ID_Educacion = pID;
END BORRAR_Educacion;
---------------------------------------------------------------------
create or replace FUNCTION Registrar_Hobby
( pNombre IN VARCHAR2
) RETURN NUMBER AS
BEGIN
	INSERT INTO Hobby(ID_Hobby, Nombre)
		VALUES(secu_Hobby.NextVal, pNombre);
  RETURN secu_Hobby.currval;
END Registrar_Hobby;

CREATE OR REPLACE PROCEDURE EDITAR_Hobby( 
 pID IN NUMBER,  
 pGenero IN VARCHAR2) AS
BEGIN
 Update Hobby
  set (Genero = pGenero)
     WHERE ID_Hobby = pID;
END EDITAR_Hobby;

CREATE OR REPLACE PROCEDURE BORRAR_Hobby( pID IN NUMBER ) AS
BEGIN
 delete from Hobby
 WHERE ID_Hobby = pID;
END BORRAR_Hobby;


------------------------------------------------
create or replace
FUNCTION REGISTRAR_Tipo_Bebedor(
 pClase IN VARCHAR2)  RETURN NUMBER  AS
BEGIN
 INSERT INTO Tipo_Bebedor(ID_TipoBebedor, clase)
  VALUES(secu_Tipo_Bebedor.NextVal, pClase);
  RETURN secu_Tipo_Bebedor.CurrVal;
END REGISTRAR_Tipo_Bebedor;

create or replace
PROCEDURE EDITAR_Tipo_Bebedor( 
 pID IN NUMBER,  
 pClase IN VARCHAR2) AS
BEGIN
 Update Tipo_Bebedor
  set Clase = pClase
     WHERE ID_TipoBebedor = pID;
END EDITAR_Tipo_Bebedor;

CREATE OR REPLACE PROCEDURE BORRAR_Tipo_Bebedor( pID IN NUMBER ) AS
BEGIN
 delete from Tipo_Bebedor
 WHERE ID_TipoBebedor = pID;
END BORRAR_Tipo_Bebedor;
-------------------------------------------------
CREATE OR REPLACE FUNCTION REGISTRAR_Color_Ojos(
 pNombre IN VARCHAR2)  RETURN NUMBER AS
BEGIN
 INSERT INTO Color_Ojos(ID_ColorOjos, Nombre)
  VALUES(secu_Color_Ojos.NextVal, pNombre);
  RETURN secu_Color_Ojos.CurrVal;
END REGISTRAR_Color_Ojos;

CREATE OR REPLACE PROCEDURE EDITAR_Color_Ojos( 
 pID IN NUMBER,  
 pNombre IN VARCHAR2) AS
BEGIN
 Update Color_Ojos
  set Nombre = pNombre
     WHERE ID_ColorOjos = pID;
END EDITAR_Color_Ojos;

CREATE OR REPLACE PROCEDURE BORRAR_Color_Ojos( pID IN NUMBER ) AS
BEGIN
 delete from Color_Ojos
 WHERE ID_ColorOjos = pID;
END BORRAR_Color_Ojos;

-----------------------------------------------------
CREATE OR REPLACE FUNCTION REGISTRAR_Contextura(
 pNombre IN VARCHAR2)  RETURN NUMBER  AS
BEGIN
 INSERT INTO Contextura(ID_Contextura, Nombre)
  VALUES(secu_Contextura.NextVal, pNombre);
  RETURN secu_Contextura.CurrVal;
END REGISTRAR_Contextura;

CREATE OR REPLACE PROCEDURE EDITAR_Contextura( 
 pID IN NUMBER,  
 pNombre IN VARCHAR2) AS
BEGIN
 Update Contextura
  set Nombre = pNombre
     WHERE ID_Contextura = pID;
END EDITAR_Contextura;

CREATE OR REPLACE PROCEDURE BORRAR_Contextura( pID IN NUMBER ) AS
BEGIN
 delete from Contextura
 WHERE ID_Contextura = pID;
END BORRAR_Contextura;

---------------------------------------------------------------
create or replace
FUNCTION REGISTRAR_EventoXUsuario(
 pID_Usuario IN NUMBER,
 pID_Evento IN NUMBER) RETURN NUMBER  AS
BEGIN
 INSERT INTO UsuarioXEvento(ID_UsuarioXEvento, ID_Usuario, ID_Evento)
  VALUES(secu_UsuarioXEvento.NextVal, pID_Usuario, pID_Evento);
  RETURN secu_UsuarioXEvento.CurrVal;
END REGISTRAR_EventoXUsuario;

create or replace
PROCEDURE EDITAR_EventoXUsuario( 
 pID IN NUMBER,  
 pID_Usuario IN NUMBER,
 pID_Evento IN NUMBER) AS
BEGIN
 Update UsuarioXEvento
  set ID_Usuario = pID_Usuario, ID_Evento = pID_Evento
     WHERE ID_UsuarioXEvento = pID;
END EDITAR_EventoXUsuario;


create or replace
PROCEDURE BORRAR_EventoXUsuario( pID IN NUMBER ) AS
BEGIN
 delete from UsuarioXEvento
 WHERE ID_UsuarioXEvento = pID;
END BORRAR_EventoXUsuario;

