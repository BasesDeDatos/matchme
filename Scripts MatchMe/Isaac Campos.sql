-- INSERTS  UDATES  DELETES --


--################ Signo_Zodiacal ################--

INSERT ALL
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Aries', TO_DATE('2003', 'DDMM'), TO_DATE('1904', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Tauro', TO_DATE('2004', 'DDMM'), TO_DATE('2005', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Géminis', TO_DATE('2105', 'DDMM'), TO_DATE('2006', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Cáncer', TO_DATE('2106', 'DDMM'), TO_DATE('2207', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Leo', TO_DATE('2307', 'DDMM'), TO_DATE('2208', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Virgo', TO_DATE('2308', 'DDMM'), TO_DATE('2209', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Libra', TO_DATE('2309', 'DDMM'), TO_DATE('2210', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Escorpio', TO_DATE('2310', 'DDMM'), TO_DATE('2111', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Sagitario', TO_DATE('2211', 'DDMM'), TO_DATE('2112', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Capricornio', TO_DATE('2212', 'DDMM'), TO_DATE('1901', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Acuario', TO_DATE('2001', 'DDMM'), TO_DATE('1702', 'DDMM'))
    
    INTO Signo_Zodiacal (ID_Signo_Zodiacal, Nombre, fecha_inicio, fecha_final)
    VALUES(secu_signo_zodiacal.NextVal, 'Piscis', TO_DATE('1802', 'DDMM'), TO_DATE('1903', 'DDMM'))
SELECT * FROM Signo_Zodiacal;

Update Signo_Zodiacal
    set (nombre = 'GEMINIS', fecha_inicio = TO_DATE('1802', 'DDMM'), fecha_final = TO_DATE('1903', 'DDMM'))
    WHERE ID_Signo_Zodiacal = 1;

delete from Signo_Zodiacal
    WHERE ID_Signo_Zodiacal = 1;


--################ Bitacora_Conocido ################--

INSERT INTO Bitacora_Conocido(ID_Bitacora_Conocido, Fecha, ID_Propio, ID_Conocido)
    VALUES(secu_Bitacora_Conocido.NextVal, null, 1, 2);

Update Bitacora_Conocido
    set (Fecha = TO_DATE('18022015', 'DDMMYYYY'), ID_Propio = 1, ID_Conocido = 1)
    WHERE ID_Bitacora_Conocido = 1;

delete from Bitacora_Conocido
    WHERE ID_Bitacora_Conocido = 1;

--################ Estado_Match ################--
INSERT INTO Estado_Match(ID_Estado, Nombre)
    VALUES(secu_estado_Match.NextVal, Nombre = "Aceptado");

Update Estado_Match
    set nombre = 'Aceptado'
    WHERE employee_id = 1;

delete from Estado_UsuariosXMatch
    WHERE id = 1;


--################ Color_Pelo ################--

INSERT INTO Color_Pelo(ID_Color_Pelo, Fecha, ID_Enviado, ID_Recibido)
    VALUES(secu_Color_Pelo.NextVal, null, 1, 2);

Update Color_Pelo
    set (Fecha = TO_DATE('18022015', 'DDMMYYYY'), ID_Enviado = 1, ID_Recibido = 2)
    WHERE ID_Color_Pelo = 1;

delete from Color_Pelo
    WHERE ID_Color_Pelo = 1;
    
    
    
--################ Color_Pelo ################--

INSERT INTO Color_Pelo(ID_Color_Pelo, Nombre)
    VALUES(secu_Color_Pelo.NextVal, 'Espanol');

Update Color_Pelo
    set (Nombre = "Español")
    WHERE ID_Color_Pelo = 1;

delete from Color_Pelo
    WHERE ID_Color_Pelo = 1;
    
    
--################ Estilo_Vida ################--

INSERT INTO Estilo_Vida( 
    ID_EstiloVida, 
    Fuma, 
    FrecEjercicios, 
    CantidadHijos, 
    QuiereHIjos, 
    SalarioPromedio, 
    Slogan, 
    ID_TipoBebedor
)
VALUES(secu_Estilo_Vida.NextVal, 'sí', 3, 2, 'sí', '2000', '¿por qué aquí, por qué ahora?', 1);

Update Estilo_Vida
    set (
        Fuma = 'sí', 
        FrecEjercicios = 3, 
        CantidadHijos = 2, 
        QuiereHIjos = 'sí', 
        SalarioPromedio = '2000', 
        Slogan = '¿por qué aquí, por qué ahora?', 
        ID_TipoBebedor = 1
    )
    WHERE ID_EstiloVida = 1;

delete from Estilo_Vida
    WHERE ID_EstiloVida = 1;
    
--################ Tipo_Pareja ################--

INSERT INTO Tipo_Pareja(ID_TipoPareja, Genero)
    VALUES(secu_Tipo_Pareja.NextVal, "Masculino");

Update Tipo_Pareja
    set Genero = 'Hombres'
    WHERE ID_TipoPareja = 1;

delete from Tipo_Pareja
    WHERE ID_TipoPareja = 1;
   
--################ Aspecto_Fisico ################--

INSERT INTO Aspecto_Fisico(
    ID_AspectoF,
    Altura,
    Peso,
    ID_ColorOjos,
    ID_ColorPiel,
    ID_ColorPelo,
    ID_Contextura
)
VALUES( 
    secu_Aspecto_Fisico.NextVal,
    140,
    50,
    1,
    1,
    1,
    1
);

Update Aspecto_Fisico
    set (
        Altura = 145,
        Peso = 55,
        ID_ColorOjos = 1,
        ID_ColorPiel = 1,
        ID_ColorPelo = 1,
        ID_Contextura = 1
    )
    WHERE ID_AspectoF = 1;

delete from Aspecto_Fisico
    WHERE ID_AspectoF = 1;
    
    
--################ Color_Pelo ################--

INSERT INTO Color_Pelo(ID_ColorPelo, Nombre)
    VALUES(secu_Color_Pelo.NextVal, "Cafe");

Update Color_Pelo
    set Genero = 'Castaño'
    WHERE ID_ColorPelo = 1;

delete from Color_Pelo
    WHERE ID_ColorPelo = 1;
    
    
--################ UsuariosXMatch ################--

INSERT INTO UsuariosXMatch(ID_UsuariosXMatch, Fecha, ID_Estado_match, ID_Propio, ID_Recomendacion)
VALUES(secu_UsuariosXMatch, null, 1, 1, 2);

Update UsuariosXMatch
    set (ID_Estado_UsuariosXMatch = 1)
    WHERE ID_UsuariosXMatch = 1;

delete from UsuariosXMatch
    WHERE ID_UsuariosXMatch = 1;
    
--################ HobbyXUsuario ################--

INSERT INTO HobbyXUsuario(ID_HobbyXUsuario, ID_Usuario, ID_hobby)
VALUES(secu_HobbyXUsuario, 1, 1);

Update HobbyXUsuario
    set (ID_hobby = 1)
    WHERE ID_HobbyXUsuario = 1;

delete from HobbyXUsuario
    WHERE ID_HobbyXUsuario = 1;
    
    --################ ActividadXUsuario ################--

INSERT INTO ActividadXUsuario(ID_ActividadXUsuario, ID_Usuario, ID_actividadAl)
VALUES(secu_ActividadXUsuario, 1, 1);

Update ActividadXUsuario
    set (ID_actividadAl = 1)
    WHERE ID_ActividadXUsuario = 1;

delete from ActividadXUsuario
    WHERE ID_ActividadXUsuario = 1;