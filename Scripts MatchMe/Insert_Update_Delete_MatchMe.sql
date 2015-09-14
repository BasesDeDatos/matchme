INSERT INTO idioma(ID_idioma, Nombre)
    VALUES(secu_idioma.NextVal, 'Espanol');

Update idioma
    set (Nombre = "Español")
    WHERE ID_idioma = 1;

delete from idioma
    WHERE ID_idioma = 1;

-----------------------------------------------------
INSERT INTO Educacion(id_educacion, nombre)
    VALUES(secu_Educacion.NextVal, 'Bachiller');
    
Update educacion
    set nombre = 'Bachillerato'
    WHERE id_educacion = 1;

delete from educacion
    WHERE id_educacion = 1;
    
----------------------------------------------------    
Insert into rol(id_rol, nombre)
  values(secu_rol.NextVal, 'Admin');

Update rol
  set nombre = 'Administrador'
  WHERE id_rol = 1;

delete from rol
  WHERE id_rol = 1;
  
--------------------------------------
INSERT INTO pais(id_pais, nombre)
VALUES(secu_pais.NextVal, 'Cota Rica');

Update pais
set nombre = 'Costa Rica'
WHERE id_pais = 1;

delete from pais
WHERE id_pais = 1;

-------------------------------------
INSERT INTO Estado(id_estado, nombre, id_pais)
    VALUES(secu_Estado.NextVal, 'SanJose', 1);

Update Estado
    set nombre = 'San José'
    WHERE id_estado = 1;

delete from Estado
    WHERE id_estado = 1;
    
---------------------------------------
INSERT INTO Ciudad(id_ciudad, nombre, id_estado)
    VALUES(secu_Ciudad.NextVal, 'SanJose', 1);

Update Ciudad
    set nombre = 'San José'
    WHERE id_Ciudad = 1;

delete from ciudad
    WHERE id_ciudad = 1;

----------------------------------------
INSERT INTO Religion(id_religion, nombre)
    VALUES(secu_Religion.NextVal,'Pastafar');

Update Religion
    set nombre = 'Pastafari'
    WHERE id_religion = 1;

delete from Religion
    WHERE id_religion = 1;

-----------------------------------------
INSERT INTO hobby(id_hobby, nombre)
  VALUES(secu_Hobby.NextVal, 'VideoGames');

Update hobby
    set nombre = 'Videojuegos'
    WHERE id_hobby = 1;

delete from hobby
    WHERE id_hobby = 1;
 
-----------------------------------------
INSERT INTO actividadAL(id_actividadAL, nombre)
  VALUES(secu_actividadAL.NextVal, 'Escalar');

Update actividadAL
  set nombre = 'Escalar montañas'
  WHERE id_actividadAL = 1;

delete from actividadAL
  WHERE id_actividadAL = 1; 
 
------------------------------------------
INSERT INTO tipo_bebedor(id_tipobebedor, clase)
  VALUES(secu_tipo_bebedor.NextVal, 'Sovial');

Update tipo_bebedor
    set clase = 'Social'
    WHERE id_tipobebedor = 1;

delete from tipo_bebedor
    WHERE id_tipobebedor = 1;   
    
------------------------------------------
INSERT INTO color_ojos(id_colorojos, nombre)
  VALUES(secu_color_ojos.NextVal, 'Azúl');

Update color_ojos
    set nombre = 'Azul'
    WHERE id_colorojos = 1;

delete from color_ojos
    WHERE id_colorojos = 1; 

--------------------------------
INSERT INTO color_piel(id_colorpiel, nombre)
VALUES(secu_color_piel.NextVal, 'Amarillo');

Update color_piel
set nombre = 'Blanco'
WHERE id_colorpiel = 1;

delete from color_piel
WHERE id_colorpiel = 1;


---------------------------------------
INSERT INTO Color_Pelo(ID_ColorPelo, Nombre)
    VALUES(secu_Color_Pelo.NextVal, "Cafe");

Update Color_Pelo
    set Genero = 'Castaño'
    WHERE ID_ColorPelo = 1;

delete from Color_Pelo
    WHERE ID_ColorPelo = 1;
    
------------------------------------------
INSERT INTO contextura(id_contextura, nombre)
  VALUES(secu_contextura.NextVal, 'Delgado');

Update contextura
    set nombre = 'Delgada'
    WHERE id_contextura = 1;

delete from contextura
    WHERE id_contextura = 1;     
  
------------------------------------------
INSERT INTO Estado_Civil(id_estadoci, nombre)
  VALUES(secu_Estado_Civil.NextVal, 'Solo');

Update Estado_Civil
    set nombre = 'Soltero'
    WHERE id_estadoci = 1;

delete from Estado_Civil
    WHERE id_estadoci = 1;  
 
--------------------------------
INSERT INTO ocupacion(id_ocupacion, nombre)
  VALUES(secu_ocupacion.NextVal, 'Programador');

INSERT INTO ocupacion(id_ocupacion, nombre)
  VALUES(secu_ocupacion.NextVal, 'Profesor');

Update ocupacion
  set nombre = 'DBA'
  WHERE id_ocupacion = 1;

delete from ocupacion
  WHERE id_ocupacion = 1;

--------------------------------
INSERT INTO estado_match(id_estado_match, nombre)
  VALUES(secu_estado_match.NextVal, 'Encontro pareja');

Update estado_match
  set nombre = 'Casado'
  WHERE id_estado_match = 1;

delete from estado_match
  WHERE id_estado_match = 1; 

---------------------------------------------
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

Update Signo_Zodiacal
    set (nombre = 'GEMINIS', fecha_inicio = TO_DATE('1802', 'DDMM'), fecha_final = TO_DATE('1903', 'DDMM'))
    WHERE ID_Signo_Zodiacal = 1;

delete from Signo_Zodiacal
    WHERE ID_Signo_Zodiacal = 1;
 
---------------------------------------------
INSERT INTO Tipo_Pareja(ID_TipoPareja, Genero)
    VALUES(secu_Tipo_Pareja.NextVal, 'Masculino');

Update Tipo_Pareja
    set Genero = 'Hombres'
    WHERE ID_TipoPareja = 1;

delete from Tipo_Pareja
    WHERE ID_TipoPareja = 1;

--------------------------------------------------
INSERT INTO Estilo_Vida( ID_EstiloVida, Fuma, 
    FrecEjercicios, CantidadHijos, QuiereHIjos, 
    SalarioPromedio, Slogan, ID_TipoBebedor
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

------------------------------------------------
INSERT INTO Aspecto_Fisico(ID_AspectoF,Altura,
    Peso,ID_ColorOjos,ID_ColorPiel,
    ID_ColorPelo,ID_Contextura
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
    
------------------------------------------------
INSERT INTO Usuario(ID_Usuario, nombre, primer_apellido, 
					segundo_apellido, fecha_nac, email, foto, 
          genero, clave, gustan_mascota, tiene_mascota,
          tendria_mascota, id_religion, id_estadoCi, 
          id_educacion, id_ciudad, id_aspectof, id_estilovida, 
					id_rol, id_signo_zodiacal)
          
VALUES(secu_Usuario.NextVal, 
	   'Annabella', 
	   'Harper', 
	   null, 
	   TO_DATE('20031990', 'DDMMYYYY'), 
	   'a.harper@randatmail.com', 
	   null, 
	   '123456789', 
	   'si', 
	   'si', 
	   'si', 
	   1, 
	   1, 
	   1, 
	   1, 
	   1, 
	   1, 
	   1, 
	   1, 
	   1);
     
INSERT INTO Usuario(ID_Usuario, nombre, primer_apellido, 
					segundo_apellido, fecha_nac, email, 
					foto, genero, clave, gustan_mascota, 
					tiene_mascota, tendria_mascota, id_religion, 
					id_estadoCi, id_educacion, id_cuidad, id_aspectoFi, 
					id_estidlovida, id_rol, id_signo_zodiacal)
          
VALUES(secu_Usuario.NextVal, 
	   'Rolland', 
	   'Payne', 
	   'Elliot', 
	   TO_DATE('10091995', 'DDMMYYYY'), 
	   'rp_elliott@randatmail.com', 
	   null, 
	   '123456789', 
	   'no', 
	   'no', 
	   'no', 
	   1, 
	   1, 
	   1, 
	   1, 
	   1, 
	   1, 
	   1, 
	   1, 
	   1);

Update Usuario
set nombre = 'Annie',
	segundo_apellido = 'Higgins',
	tendria_mascota = 'no',
	tiene_mascota = 'no',
	gustan_mascota = 'no'
WHERE ID_Usuario = 1;

delete from Usuario
WHERE ID_Usuario = 1;

---------------------------------------------------------
INSERT INTO Wink(ID_Wink, fecha, id_enviado, id_recibido)
    VALUES(secu_wink.NextVal, sysdate, 0, 1);

Update Wink
    set (Fecha = TO_DATE('18022015', 'DDMMYYYY'), ID_Enviado = 1, ID_Recibido = 2)
    WHERE ID_Wink = 1;

delete from Wink
    WHERE ID_Wink = 1;

------------------------------------------
INSERT INTO UsuarioXEvento(id_usuarioxevento, id_evento, id_usuario) 
  VALUES(secu_UsuarioXEvento.NextVal, 1, 1);

Update UsuarioXEvento
    set id_usuario = 2
    WHERE id_UsuarioXEvento = 1;

delete from UsuarioXEvento
    WHERE id_UsuarioXEvento = 1;   
    
---------------------------------------
Insert into bitacora_visita(id_visita, fecha, id_visitante, id_visitado)
  values(secu_bitacora_visita.NextVal, null, 1, 2);

Update Bitacora_visita
    set (Fecha = TO_DATE('18022015', 'DDMMYYYY'), id_visitante = 1, id_visitado = 1)
    WHERE ID_visita = 1;

delete from Bitacora_visita
    WHERE id_visita = 1;

---------------------------------------------
INSERT INTO Bitacora_Conocido(id_bitacora_conocido, Fecha, ID_Propio, ID_Conocido)
    VALUES(secu_Bitacora_conocidos.NextVal, sysdate, 0, 1);

Update Bitacora_Conocido
    set (Fecha = TO_DATE('18022015', 'DDMMYYYY'), ID_Propio = 1, ID_Conocido = 1)
    WHERE id_bitacora_conocido = 1;

delete from Bitacora_Conocido
    WHERE id_bitacora_conocido = 1;

----------------------------------------------
INSERT INTO evento(id_evento, nombre, descripcion, fecha, id_ciudad)
  VALUES(secu_evento.NextVal, 'Cumpleanos de Roger', 'Vamos a celebrar cumpleaños de Roger', TO_DATE('20032015 20:00:00', 'DDMMYYYY hh24:mi:ss'), 1);

Update evento
  set nombre = 'Cumpleaños de Roger',
	descripcion = 'Vamos a celebrar cumpleaños de Rogercito',
	fecha = TO_DATE('20032015 18:00:00', 'DDMMYYYY hh24:mi:ss')
  WHERE id_evento = 1;

delete from evento
  WHERE id_evento = 1;

--------------------------------
INSERT INTO interes_gusto(id_interesg, rango_edadi, rango_edadf, id_tipopareja)
VALUES(secu_interes_gusto.NextVal, 18, 40, 1);

Update interes_gusto
set rango_edadi = 15,
	rango_edadf = 30
WHERE id_interesg = 1;

delete from interes_gusto
WHERE id_interesg = 1;

--------------------------------
INSERT INTO UsuariosXMatch(ID_UsuariosXMatch, Fecha, ID_Estado_match, ID_Propio, ID_Recomendacion)
VALUES(secu_UsuariosXMatch.NextVal, Sysdate, 1, 0, 1);

Update UsuariosXMatch
    set (ID_Estado_UsuariosXMatch = 1)
    WHERE ID_UsuariosXMatch = 1;

delete from UsuariosXMatch
    WHERE ID_UsuariosXMatch = 1;
    
--------------------------------
INSERT INTO UsuarioXIdioma(ID_UsuarioXIdioma, id_usuario, id_idioma)
  VALUES(secu_UsuarioXIdioma.NextVal, 0, 1);

Update UsuarioXIdioma
  set id_idioma = 2
  WHERE ID_UsuarioXIdioma = 1;

delete from UsuarioXIdioma
  WHERE ID_UsuarioXIdioma = 1;

--------------------------------
INSERT INTO UsuarioXOcupacion(ID_UsuarioXOcupacion, id_usuario, id_ocupacion)
VALUES(secu_UsuarioXOcupacion.NextVal, 1, 1);

Update UsuarioXOcupacion
set ID_ocupacion = 2
WHERE ID_UsuarioXOcupacion = 1;

delete from UsuarioXOcupacion
WHERE ID_UsuarioXOcupacion = 1;

---------------------------------------
INSERT INTO HobbyXUsuario(ID_HobbyXUsuario, ID_Usuario, ID_hobby)
VALUES(secu_HobbyXUsuario.NextVal, 0, 1);

Update HobbyXUsuario
    set (ID_hobby = 1)
    WHERE ID_HobbyXUsuario = 1;

delete from HobbyXUsuario
    WHERE ID_HobbyXUsuario = 1;

-----------------------------------------------------------
INSERT INTO ActividadXUsuario(ID_ActividadXUsuario, ID_Usuario, ID_actividadAl)
VALUES(secu_UsuariosXMatch.NextVal, 0, 1);

Update ActividadXUsuario
    set (ID_actividadAl = 1)
    WHERE ID_ActividadXUsuario = 1;

delete from ActividadXUsuario
    WHERE ID_ActividadXUsuario = 1;