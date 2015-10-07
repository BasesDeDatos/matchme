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

CREATE OR REPLACE PROCEDURE EDITAR_Signo_Zodiacal( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2, 
	pfecha_inicio IN DATE, 
	pfecha_final IN DATE ) AS
BEGIN
	Update Signo_Zodiacal
	set (Nombre := pNombre, fecha_inicio := pfecha_inicio, fecha_final := pfecha_final)
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
		set (nombre := pNombre,  ID_pais := pPais)
	    WHERE ID_estadodo = pID;
END EDITAR_estado;

CREATE OR REPLACE PROCEDURE BORRAR_estado( pID IN NUMBER ) AS
BEGIN
	delete from estado
	WHERE ID_estadodo = pID;
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
		set (Fecha := pFecha, ID_Enviado := pID_Enviado, ID_Recibido := pID_Recibido)
	    WHERE ID_UsuariosXWink = pID;
END EDITAR_UsuariosXWink;

CREATE OR REPLACE PROCEDURE BORRAR_UsuariosXWink( pID IN NUMBER ) AS
BEGIN
	delete from UsuariosXWink
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
		set (Nombre := pNombre)
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
	set (
        Fuma := pFuma, 
        FrecEjercicios := pFrecEjercicios, 
        CantidadHijos := pCantidadHijos, 
        QuiereHIjos := pQuiereHIjos, 
        SalarioPromedio := pSalarioPromedio, 
        Slogan := pSlogan, 
        ID_TipoBebedor := pSlogan
    )
    WHERE ID_Estilo_Vida = pID;
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
	pGenero IN VARCHAR2) AS
BEGIN
	Update Genero
		set (Nombre := pNombre)
	    WHERE ID_Genero = pID;
END EDITAR_Genero;

CREATE OR REPLACE PROCEDURE BORRAR_Genero( pID IN NUMBER ) AS
BEGIN
	delete from Genero
	WHERE ID_Genero = pID;
END BORRAR_Generoa;


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
		set (Genero := pGenero)
	    WHERE ID_TipoPareja = pID;
END EDITAR_Aspecto_Fisico;

CREATE OR REPLACE PROCEDURE BORRAR_Aspecto_Fisico( pID IN NUMBER ) AS
BEGIN
	delete from Aspecto_Fisico
	WHERE ID_Aspecto_Fisico = pID;
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
		set (Nombre := pNombre)
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
		set (Fecha := pFecha, ID_Estado_match := pID_Estado_match, ID_Propio := pID_Propio, ID_Recomendacion := pID_Recomendacion)
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
		set (ID_Usuario := pID_Usuario, ID_Hobby := pID_Hobby)
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
	pID_actividadA IN NUMBER) AS
BEGIN
	Update ActividadXUsuario
		set (ID_Usuario := pID_Usuario, ID_actividadA := pID_actividadA)
	    WHERE ID_ActividadXUsuario = pID;
END EDITAR_ActividadXUsuario;

CREATE OR REPLACE PROCEDURE BORRAR_ActividadXUsuario( pID IN NUMBER ) AS
BEGIN
	delete from ActividadXUsuario
	WHERE ID_ActividadXUsuario = pID;
END BORRAR_ActividadXUsuario;