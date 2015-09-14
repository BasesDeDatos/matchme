--################ Signo_Zodiacal ################--
CREATE OR REPLACE PROCEDURE REGISTRAR_Signo_Zodiacal(
	pNombre IN VARCHAR2, 
	pfecha_inicio IN DATE, 
	pfecha_final IN DATE) AS
BEGIN
	INSERT INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, pNombre, pfecha_inicio, pfecha_final);
END REGISTRAR_Signo_Zodiacal;

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


--################ Bitacora_Conocido ################--

CREATE OR REPLACE PROCEDURE REGISTRAR_Bitacora_Conocido(
	pFecha IN DATE, 
	pID_Propio IN NUMBER, 
	pID_Conocido IN NUMBER) AS
BEGIN
	INSERT INTO Bitacora_Conocido(ID_Bitacora_Conocido, Fecha, ID_Propio, ID_Conocido)
    VALUES(secu_Bitacora_Conocido.NextVal, pFecha, pID_Propio, pID_Conocido);
END REGISTRAR_Bitacora_Conocido;

CREATE OR REPLACE PROCEDURE EDITAR_Bitacora_Conocido( 
	pID IN NUMBER, 	
	pFecha IN DATE, 
	pID_Propio IN NUMBER, 
	pID_Conocido IN NUMBER) AS
BEGIN
	Update Bitacora_Conocido
	set (Fecha := pFecha, ID_Propio = pID_Propio, ID_Conocido = pID_Conocido)
    	WHERE ID_Bitacora_Conocido = pID;
END EDITAR_Bitacora_Conocido;

CREATE OR REPLACE PROCEDURE BORRAR_Bitacora_Conocido( pID IN NUMBER ) AS
BEGIN
	delete from Bitacora_Conocido
	WHERE ID_Bitacora_Conocido = pID;
END BORRAR_Bitacora_Conocido;

--################ Estado_Match ################--

CREATE OR REPLACE PROCEDURE REGISTRAR_Estado_Match( pNombre IN VARCHAR2 ) AS
BEGIN
	INSERT INTO Estado_Match(ID_Estado, Nombre)
    	VALUES(secu_estado_Match.NextVal, pNombre);
END REGISTRAR_Estado_Match;

CREATE OR REPLACE PROCEDURE EDITAR_Estado_Match(pNombre IN VARCHAR2) AS
BEGIN
	Update Estado_Match
		set (nombre := pNombre)
	    WHERE ID_Estado_Matchdo = pID;
END EDITAR_Estado_Match;

CREATE OR REPLACE PROCEDURE BORRAR_Estado_Match( pID IN NUMBER ) AS
BEGIN
	delete from Estado_Match
	WHERE ID_Estado_Matchdo = pID;
END BORRAR_Estado_Match;


--################ Wink ################--

CREATE OR REPLACE PROCEDURE REGISTRAR_Wink(
	pFecha IN DATE, 
	pID_Enviado IN NUMBER, 
	pID_Recibido IN NUMBER) AS
BEGIN
	INSERT INTO Wink(ID_Wink, Fecha, ID_Enviado, ID_Recibido)
		VALUES(secu_wink.NextVal, pFecha, pID_Enviado, pID_Recibido);
END REGISTRAR_Wink;

CREATE OR REPLACE PROCEDURE EDITAR_Wink( 
	pID IN NUMBER, 	
	pFecha IN DATE, 
	pID_Enviado IN NUMBER, 
	pID_Recibido IN NUMBER) AS
BEGIN
	Update Wink
		set (Fecha := pFecha, ID_Enviado := pID_Enviado, ID_Recibido := pID_Recibido)
	    WHERE ID_Wink = pID;
END EDITAR_Wink;

CREATE OR REPLACE PROCEDURE BORRAR_Wink( pID IN NUMBER ) AS
BEGIN
	delete from Wink
	WHERE ID_Wink = pID;
END BORRAR_Wink;

--################ Idioma ################--

CREATE OR REPLACE PROCEDURE REGISTRAR_Idioma(
	pNombre IN VARCHAR2) AS
BEGIN
	INSERT INTO Idioma(ID_Idioma, Nombre)
		VALUES(secu_Idioma.NextVal, pNombre);
END REGISTRAR_Idioma;

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

CREATE OR REPLACE PROCEDURE REGISTRAR_Estilo_Vida(
	pFuma IN VARCHAR2, 
    pFrecEjercicios IN VARCHAR2, 
    pCantidadHijos IN NUMBER, 
    pQuiereHIjos IN VARCHAR2, 
    pSalarioPromedio IN NUMBER, 
    pSlogan IN VARCHAR2, 
    pID_TipoBebedor IN Number) AS
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
END REGISTRAR_Estilo_Vida;

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


--################ Tipo_Pareja ################--

CREATE OR REPLACE PROCEDURE REGISTRAR_Tipo_Pareja(
	Genero IN VARCHAR2) AS
BEGIN
	INSERT INTO Tipo_Pareja(ID_TipoPareja, Genero)
		VALUES(secu_Tipo_Pareja.NextVal, pGenero);
END REGISTRAR_Tipo_Pareja;

CREATE OR REPLACE PROCEDURE EDITAR_Tipo_Pareja( 
	pID IN NUMBER, 	
	pGenero IN VARCHAR2) AS
BEGIN
	Update Tipo_Pareja
		set (Genero := pGenero)
	    WHERE ID_TipoPareja = pID;
END EDITAR_Tipo_Pareja;

CREATE OR REPLACE PROCEDURE BORRAR_Tipo_Pareja( pID IN NUMBER ) AS
BEGIN
	delete from Tipo_Pareja
	WHERE ID_Tipo_Pareja = pID;
END BORRAR_Tipo_Pareja;


--################ Aspecto_Fisico ################--

CREATE OR REPLACE PROCEDURE REGISTRAR_Aspecto_Fisico(
    Altura IN NUMBER,
    Peso,
    ID_ColorOjos,
    ID_ColorPiel,
    ID_ColorPelo,
    ID_Contextura) AS
BEGIN
	INSERT INTO Aspecto_Fisico(ID_TipoPareja, Genero)
		VALUES(secu_Aspecto_Fisico.NextVal, pGenero);
END REGISTRAR_Aspecto_Fisico;

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

CREATE OR REPLACE PROCEDURE REGISTRAR_Color_Pelo(
	pNombre IN VARCHAR2) AS
BEGIN
	INSERT INTO Color_Pelo(ID_ColorPelo, Nombre)
		VALUES(secu_Color_Pelo.NextVal, pNombre);
END REGISTRAR_Color_Pelo;

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

CREATE OR REPLACE PROCEDURE REGISTRAR_UsuariosXMatch(
	pFecha IN DATE,
	pID_Estado_match IN NUMBER,
	pID_Propio IN NUMBER, 
	pID_Recomendacion IN NUMBER) AS
BEGIN
	INSERT INTO UsuariosXMatch(ID_UsuariosXMatch, Fecha, ID_Estado_match, ID_Propio, ID_Recomendacion)
		VALUES(secu_UsuariosXMatch.NextVal, pFecha, pID_Estado_match, pID_Propio, pID_Recomendacion);
END REGISTRAR_UsuariosXMatch;

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

CREATE OR REPLACE PROCEDURE REGISTRAR_HobbyXUsuario(
	pID_Usuario IN NUMBER,
	pID_Hobby IN NUMBER) AS
BEGIN
	INSERT INTO HobbyXUsuario(ID_HobbyXUsuario, ID_Usuario, ID_Hobby)
		VALUES(secu_HobbyXUsuario.NextVal, pID_Usuario, pID_Hobby);
END REGISTRAR_HobbyXUsuario;

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

CREATE OR REPLACE PROCEDURE REGISTRAR_ActividadXUsuario(
	pID_Usuario IN NUMBER,
	pID_actividadA IN NUMBER) AS
BEGIN
	INSERT INTO ActividadXUsuario(ID_ActividadXUsuario, ID_Usuario, ID_actividadA)
		VALUES(secu_ActividadXUsuario.NextVal, pID_Usuario, pID_actividadA);
END REGISTRAR_ActividadXUsuario;

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