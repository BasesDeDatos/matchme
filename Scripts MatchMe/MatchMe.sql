CREATE TABLESPACE MatchMe_DATA
       DATAFILE 'D:\app\User\oradata\dbprojets\MatchMedata01.dbf'
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;
       
---
--- PE: INDEX
---              
       
CREATE TABLESPACE MatchMe_Ind
       DATAFILE 'D:\app\User\oradata\dbprojets\MatchMeind01.dbf'
       SIZE 10M
       REUSE
       AUTOEXTEND ON
       NEXT 512k
       MAXSIZE 200M;
       
------------Conectado desde System
CREATE USER MatchMe
       IDENTIFIED BY MatchMe
       DEFAULT TABLESPACE MatchMe_data
       QUOTA 10M ON MatchMe_data
       TEMPORARY TABLESPACE temp
       QUOTA 5M ON system;
       --PROFILE app_user
       --PASSWORD EXPIRE;
       
CREATE ROLE MatchMe
       IDENTIFIED BY MatchMe;
       
GRANT CONNECT TO MatchMe;

GRANT CREATE TABLE TO MatchMe;

GRANT CONNECT, RESOURCE TO MatchMe;


------------------------------------------
CREATE TABLE Educacion
(
  ID_Educacion NUMBER(2),
  Nombre VARCHAR2(20), CONSTRAINT Educacion_Nombre_nn NOT NULL,
  CONSTRAINT Educacion_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_Educacion PRIMARY KEY (ID_Educacion)
); 

CREATE TABLE Idioma
(
  ID_Idioma NUMBER(4),
  Nombre VARCHAR2(30), CONSTRAINT Idioma_Nombre_nn NOT NULL,
  CONSTRAINT Idioma_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_Idioma PRIMARY KEY (ID_Idioma)
); 

CREATE TABLE Estado_Civil
(
  ID_EstadoCi NUMBER(2),
  Nombre VARCHAR2(30), CONSTRAINT Estado_Civil_Nombre_nn NOT NULL,
  CONSTRAINT Estado_Civil_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_EstadoCivil PRIMARY KEY (ID_EstadoCi)
); 

CREATE TABLE Religion
(
  ID_Religion NUMBER(4),
  Nombre VARCHAR2(30), CONSTRAINT Religion_Nombre_nn NOT NULL,
  CONSTRAINT Religion_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_Religion PRIMARY KEY (ID_Religion)
); 

CREATE TABLE Pais
(
  ID_Pais NUMBER(3),
  Nombre VARCHAR2(30), CONSTRAINT Pais_Nombre_nn NOT NULL,
  CONSTRAINT Pais_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_Pais PRIMARY KEY (ID_Pais)
); 

CREATE TABLE Estado
(
  ID_Estado NUMBER(5),
  Nombre VARCHAR2(30), CONSTRAINT Estado_Nombre_nn NOT NULL,
  ID_Pais NUMBER(3), CONSTRAINT Estado_ID_Pais_nn NOT NULL,
  CONSTRAINT pk_ID_Estado PRIMARY KEY (ID_Estado),
  CONSTRAINT fk_ID_Pais FOREIGN KEY (ID_Pais) REFERENCES Pais(ID_Pais)
);

CREATE TABLE Ciudad
(
  ID_Ciudad NUMBER(7),
  Nombre VARCHAR2(30), CONSTRAINT Ciudad_Nombre_nn NOT NULL,
  ID_Estado NUMBER(5), CONSTRAINT Ciudad_ID_Estado_nn NOT NULL,
  CONSTRAINT pk_ID_Ciudad PRIMARY KEY (ID_Ciudad),
  CONSTRAINT fk_ID_Estado FOREIGN KEY (ID_Estado) REFERENCES Estado(ID_Estado)
);

CREATE TABLE Evento
(
  ID_Evento NUMBER(5),
  Nombre VARCHAR2(30), CONSTRAINT Evento_Nombre_nn NOT NULL,
  Fecha DATE DEFAULT SYSDATE CONSTRAINT Evento_Fecha_nn NOT NULL,
  Descripcion VARCHAR2(40), CONSTRAINT Evento_Descripcion_nn NOT NULL,
  ID_Ciudad Number(7), CONSTRAINT Evento_ID_Ciudad_nn NOT NULL,
  CONSTRAINT pk_ID_Evento PRIMARY KEY (ID_Evento),
  CONSTRAINT fk_ID_Ciudad FOREIGN KEY (ID_Ciudad) REFERENCES Ciudad(ID_Ciudad)
); 

CREATE TABLE Color_Ojos
(
  ID_ColorOjos Number(5),
  Nombre VARCHAR2(20), CONSTRAINT ColorOjos_Nombre_nn NOT NULL,
  CONSTRAINT ColorOjos_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_ColorOjos PRIMARY KEY (ID_ColorOjos)
);

CREATE TABLE Color_Piel
(
  ID_ColorPiel Number(5),
  Nombre VARCHAR2(20), CONSTRAINT ColorPiel_Nombre_nn NOT NULL,
  CONSTRAINT ColorPiel_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_ColorPiel PRIMARY KEY (ID_ColorPiel)
);

CREATE TABLE Color_Pelo
(
  ID_ColorPelo Number(5),
  Nombre VARCHAR2(20), CONSTRAINT ColorPelo_Nombre_nn NOT NULL,
  CONSTRAINT ColorPelo_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_ColorPelo PRIMARY KEY (ID_ColorPelo)
);

CREATE TABLE Contextura
(
  ID_Contextura Number(5),
  Nombre VARCHAR2(20), CONSTRAINT Contextura_Nombre_nn NOT NULL,
  CONSTRAINT Contextura_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_Contextura PRIMARY KEY (ID_Contextura)
);

CREATE TABLE Aspecto_Fisico
(
  ID_AspectoF Number(10),
  Altura Number(5),CONSTRAINT AspectoF_Altura_nn NOT NULL,
  CONSTRAINT AspectoF_Altura_min CHECK (Altura>40),
  Peso Number(6),CONSTRAINT AspectoF_Peso_nn NOT NULL,
  CONSTRAINT AspectoF_Peso_min CHECK (Peso>40),
  ID_ColorOjos Number(5), CONSTRAINT AspectoF_ID_ColorOjos_nn NOT NULL,
  ID_ColorPiel Number(5),CONSTRAINT AspectoF_ID_Piel_nn NOT NULL,
  ID_ColorPelo Number(5),CONSTRAINT AspectoF_ID_Pelo_nn NOT NULL,
  ID_Contextura Number(5),CONSTRAINT AspectoF_ID_Contextura_nn NOT NULL,
  CONSTRAINT pk_ID_AspectoFi PRIMARY KEY (ID_AspectoFi),
  CONSTRAINT fk_ID_ColorOjos FOREIGN KEY (ID_ColorOjos) REFERENCES Color_Ojos(ID_ColorOjos),
  CONSTRAINT fk_ID_ColorPiel FOREIGN KEY (ID_ColorPiel) REFERENCES Color_Piel(ID_ColorPiel),
  CONSTRAINT fk_ID_ColorPelo FOREIGN KEY (ID_ColorPelo) REFERENCES Color_Pelo(ID_ColorPelo),
  CONSTRAINT fk_ID_Contextura FOREIGN KEY (ID_Contextura) REFERENCES Contextura(ID_Contextura)
);

CREATE TABLE Tipo_Pareja
(
  ID_TipoPareja NUMBER(2),
  Genero VARCHAR2(20), CONSTRAINT Tipo_Pareja_Genero_nn NOT NULL,
  CONSTRAINT Tipo_Pareja_Genero_uk UNIQUE(genero),
  CONSTRAINT pk_ID_TipoPareja PRIMARY KEY (ID_TipoPareja)
); 

CREATE TABLE ActividadAL
(
  ID_ActividadAL Number(10),
  Nombre VARCHAR2(20), CONSTRAINT ActividadAL_Nombre_nn NOT NULL,
  CONSTRAINT ActividadAL_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_ActividadAL PRIMARY KEY (ID_ActividadAL)
);

CREATE TABLE Hobby
(
  ID_Hobby Number(5),
  Nombre VARCHAR2(20), CONSTRAINT Hobby_Nombre_nn NOT NULL,
  CONSTRAINT Hobby_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_Hobby PRIMARY KEY (ID_Hobby)
);

CREATE TABLE Interes_Gusto
(
  ID_InteresG Number(10),
  Rango_EdadI Number(2),CONSTRAINT InteresG_RangoEdadI_nn NOT NULL,
  CONSTRAINT prod_Rango_EdadI_min CHECK (Rango_EdadI>15),
  Rango_EdadF Number(2),CONSTRAINT InteresG_RangoEdadF_nn NOT NULL, 
  CONSTRAINT prod_Rango_EdadF_min CHECK (Rango_EdadF>Rango_EdadI),
  ID_TipoPareja NUMBER(2),CONSTRAINT Interes_TipoPareja_nn NOT NULL,
  CONSTRAINT pk_ID_InteresG PRIMARY KEY (ID_InteresG),
  CONSTRAINT fk_ID_TipoPareja FOREIGN KEY (ID_TipoPareja) REFERENCES Tipo_Pareja(ID_TipoPareja)
);

CREATE TABLE InteresXActividad
(
  ID_InteresXActividad Number(10),
  ID_InteresG Number(10), CONSTRAINT InteresXActividad_ID_InteresG_nn NOT NULL,
  ID_ActividadAL Number(10), CONSTRAINT InteresXActividad_ID_ActividadAL_nn NOT NULL,
  CONSTRAINT pk_ID_InteresXActividad PRIMARY KEY (ID_InteresXActividad),
  CONSTRAINT fk_ID_InteresG FOREIGN KEY (ID_InteresG ) REFERENCES Interes_Gustos(ID_InteresG),
  CONSTRAINT fk_ID_ActividadAL FOREIGN KEY (ID_ActividadAL ) REFERENCES ActividadAL(ID_ActividadAL)
);

CREATE TABLE InteresXHobby
(
  ID_InteresXHobby Number(10),
  ID_InteresG Number(10), CONSTRAINT InteresXHobby_ID_InteresG_nn NOT NULL,
  ID_Hobby Number(5), CONSTRAINT InteresXHobby_ID_Hobby_nn NOT NULL,
  CONSTRAINT pk_ID_InteresXHobby PRIMARY KEY (ID_InteresXHobby),
  CONSTRAINT fk_ID_InteresG FOREIGN KEY (ID_InteresG ) REFERENCES Interes_Gustos(ID_InteresG),
  CONSTRAINT fk_ID_Hobby FOREIGN KEY (ID_Hobby ) REFERENCES Hobby(ID_Hobby)
);

CREATE TABLE Tipo_Bebedor
(
  ID_TipoBebedor Number(2),
  Clase VARCHAR2(10), CONSTRAINT Tipo_Bebedor_Clase_nn NOT NULL,
  CONSTRAINT pk_ID_InfoMascota PRIMARY KEY (ID_InfoMascota)
);

CREATE TABLE Estilo_Vida
(
  ID_EstiloVida Number(10),
  Fuma VARCHAR2(2), CONSTRAINT Estilo_Vida_Fuma_nn NOT NULL,
  FrecEjercicios VARCHAR2(20), CONSTRAINT Estilo_Vida_FreEjercicios_nn NOT NULL,
  CantidadHijos NUMBER(2), CONSTRAINT Estilo_Vida_CantidadHijos_nn NOT NULL,
  CONSTRAINT prod_CantidadHijos_min CHECK (CantidadHijos>=0),
  QuiereHIjos VARCHAR2(2), CONSTRAINT Estilo_Vida_QuiereHijos_nn NOT NULL,
  SalarioPromedio NUMBER(8),
  Slogan VARCHAR2(400), CONSTRAINT Estilo_Vida_Slogan_nn NOT NULL,  
  ID_TipoBebedor Number(2),CONSTRAINT Estilo_Vida_TipoBebedor_nn NOT NULL,
  CONSTRAINT pk_ID_InteresG PRIMARY KEY (ID_InteresG),
  CONSTRAINT fk_ID_TipoBebedor FOREIGN KEY (ID_TipoBebedor ) REFERENCES Tipo_Bebedor(ID_TipoBebedor), 
);

CREATE TABLE Bitacora_Visita
(
  ID_Visita Number(2),
  Fecha DATE DEFAULT SYSDATE CONSTRAINT BitacoraVisita_Fecha_nn NOT NULL,
  ID_Visitante NUMBER(10) CONSTRAINT BitacoraVisita_ID_Visitante_nn NOT NULL,
  ID_Visitado NUMBER(10) CONSTRAINT BitacoraVisita_ID_Visitado_nn NOT NULL,
  CONSTRAINT pk_ID_Visita PRIMARY KEY (ID_Visita),
  CONSTRAINT fk_Visitante FOREIGN KEY (ID_Visitante) REFERENCES Usuario(ID_Usuario),
  CONSTRAINT fk_ID_Visitado FOREIGN KEY (ID_Visitado) REFERENCES Usuario(ID_Usuario)
);

CREATE TABLE Bitacora_Conocido
(
  ID_Conocido Number(2),
  Fecha DATE DEFAULT SYSDATE CONSTRAINT BitacoraConocido_Fecha_nn NOT NULL,
  ID_Propio NUMBER(10) CONSTRAINT BitacoraConocido_ID_Visitante_nn NOT NULL,
  ID_Conocido NUMBER(10) CONSTRAINT BitacoraConocido_ID_Visitado_nn NOT NULL,
  CONSTRAINT pk_ID_Conocido PRIMARY KEY (ID_Conocido),
  CONSTRAINT fk_Propio FOREIGN KEY (ID_Propio) REFERENCES Usuario(ID_Usuario),
  CONSTRAINT fk_ID_Conocido FOREIGN KEY (ID_Conocido) REFERENCES Usuario(ID_Usuario)
);

CREATE TABLE Estado_Match
(
  ID_Estado Number(2),
  Nombre VARCHAR2(20), CONSTRAINT Estado_Match_Nombre_nn NOT NULL,
  CONSTRAINT pk_ID_Estado PRIMARY KEY (ID_Estado)
);

CREATE TABLE Match
(
  ID_Match Number(2),
  Fecha DATE DEFAULT SYSDATE CONSTRAINT Match_Fecha_nn NOT NULL,
  ID_Estado NUMBER(2), CONSTRAINT Match_ID_Estado_nn NOT NULL,
  ID_Propio NUMBER(10) CONSTRAINT Match_ID_propio_nn NOT NULL,
  ID_Recomendacion NUMBER(10) CONSTRAINT Match_ID_Recomendado_nn NOT NULL,
  CONSTRAINT pk_ID_Conocido PRIMARY KEY (ID_Conocido),
  CONSTRAINT fk_Estado FOREIGN KEY (ID_Estado) REFERENCES Estado_Match(ID_Estado),
  CONSTRAINT fk_Propio FOREIGN KEY (ID_Propio) REFERENCES Usuario(ID_Usuario),
  CONSTRAINT fk_ID_Recomendacion FOREIGN KEY (ID_Recomendacion) REFERENCES Usuario(ID_Usuario)
);

CREATE TABLE Signo_Zodiacal
(
  ID_Signo_Zodiacal NUMBER(2),
  Nombre VARCHAR2(20), CONSTRAINT Educacion_Nombre_nn NOT NULL,
  CONSTRAINT Signo_Zodiacal_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_Signo_Zodiacal PRIMARY KEY (ID_Signo_Zodiacal)
); 

CREATE TABLE Ocupacion
(
  ID_Ocupacion Number(2),
  Nombre VARCHAR2(20), CONSTRAINT Ocupacion_Nombre_nn NOT NULL,
  CONSTRAINT pk_ID_Ocupacion PRIMARY KEY (ID_Ocupacion)
);


CREATE TABLE Usuario
(
  ID_Usuario NUMBER(10),
  Nombre VARCHAR2(30), CONSTRAINT Usuario_Nombre_nn NOT NULL,
  Primer_Apellido VARCHAR2(30), CONSTRAINT Usuario_Primer_Apellido_nn NOT NULL,
  Segundo_Apellido VARCHAR2(30),
  Fecha_Nac DATE DEFAULT SYSDATE CONSTRAINT Evento_Fecha_Nac_nn NOT NULL,
  Email VARCHAR2(50), CONSTRAINT Usuario_email_nn NOT NULL,
  CONSTRAINT Usuario_Email_uk UNIQUE(Email),
  Foto VARCHAR2(200),-- CONSTRAINT Usuario_Foto_nn NOT NULL,
  Genero VARCHAR2(10), CONSTRAINT Usuario_Genero_nn NOT NULL,
  Clave VARCHAR2(20), CONSTRAINT Usuario_Clave_nn NOT NULL,
  Rol VARCHAR2(10), CONSTRAINT Usuario_Rol_nn NOT NULL,
  Gustan_Mascota VARCHAR2(2), CONSTRAINT Info_Mascota_Gustan_nn NOT NULL,
  Tiene_Mascota  VARCHAR2(2), CONSTRAINT Info_Mascota_Tiene_nn NOT NULL,
  Tendria_Mascota  VARCHAR2(2), CONSTRAINT Info_Mascota_Tendria_nn NOT NULL,
  ID_Religion NUMBER(4),CONSTRAINT Usuario_ID_Religion_nn NOT NULL,
  ID_EstadoCi NUMBER(2),CONSTRAINT Usuario_ID_EstadoCi_nn NOT NULL,
  ID_Educacion NUMBER(2),CONSTRAINT Usuario_ID_Educacion_nn NOT NULL,
  ID_Ciudad Number(7), CONSTRAINT Usuario_ID_Estado_nn NOT NULL,
  ID_AspectoFi Number(10), CONSTRAINT Usuario_ID_AspectoFi_nn NOT NULL,
  ID_Hobby Number(10), CONSTRAINT Usuario_ID_Hobby_nn NOT NULL,
  ID_ActividadAL Number(10), CONSTRAINT Usuario_ID_ActividadAL_nn NOT NULL,
  ID_EstiloVida Number(10), CONSTRAINT Usuario_ID_EstiloVida_nn NOT NULL,
  ID_Ocupacion Number(2), CONSTRAINT Usuario_Ocupacion_nn NOT NULL,
  ID_Signo_Zodiacal NUMBER(2), CONSTRAINT Usuario_Signo_Zodiacal_nn NOT NULL,
  CONSTRAINT pk_ID_Usuario PRIMARY KEY (ID_Usuario),
  CONSTRAINT fk_ID_Religion FOREIGN KEY (ID_Religion) REFERENCES Religion(ID_Religion),
  CONSTRAINT fk_ID_EstadoCi FOREIGN KEY (ID_EstadoCi) REFERENCES Estado_Civil(ID_EstadoCi),
  CONSTRAINT fk_ID_Educacion FOREIGN KEY (ID_Educacion) REFERENCES Educacion(ID_Educacion),
  CONSTRAINT fk_ID_Ciudad FOREIGN KEY (ID_Ciudad) REFERENCES Ciudad(ID_Ciudad),
  CONSTRAINT fk_ID_AspectoFi FOREIGN KEY (ID_AspectoFi) REFERENCES Aspecto_Fisico(ID_AspectoFi),
  CONSTRAINT fk_ID_Hobby FOREIGN KEY (ID_Hobby ) REFERENCES Hobby(ID_Hobby),
  CONSTRAINT fk_ID_ActividadAL FOREIGN KEY (ID_ActividadAL ) REFERENCES ActividadAL(ID_ActividadAL),
  CONSTRAINT fk_ID_EstiloVida FOREIGN KEY (ID_EstiloVida ) REFERENCES Estilo_Vida(ID_EstiloVida),
  CONSTRAINT fk_ID_Ocupacion FOREIGN KEY (ID_Ocupacion ) REFERENCES Ocupacion(ID_Ocupacion),
  CONSTRAINT fk_ID_Signo_Zodiacal FOREIGN KEY (ID_Signo_Zodiacal) REFERENCES Signo_Zodiacal(ID_Signo_Zodiacal)
); 

CREATE TABLE UsuarioXEvento
(
  ID_UsuarioXEvento NUMBER(10),
  ID_Evento NUMBER(5), CONSTRAINT Evento_Nombre_nn NOT NULL,
  ID_Usuario NUMBER(10),CONSTRAINT Evento_ID_Ciudad_nn NOT NULL
  CONSTRAINT pk_ID_UsuarioXEvento PRIMARY KEY (ID_UsuarioXEvento),
  CONSTRAINT fk_ID_Evento FOREIGN KEY (ID_Evento) REFERENCES Evento(ID_Evento),
  CONSTRAINT fk_ID_Usuario FOREIGN KEY (ID_Usuario) REFERENCES Ciudad(ID_Usuario)
); 

CREATE TABLE UsuarioXIdioma
(
  ID_UsuarioXIdioma NUMBER(10),
  ID_Usuario NUMBER(10), CONSTRAINT UsuarioXIdioma_ID_Usuario_nn NOT NULL,
  ID_Idioma NUMBER(4), CONSTRAINT UsuarioXIdioma_ID_Idioma_nn NOT NULL,
  CONSTRAINT pk_ID_UsuarioXIdioma PRIMARY KEY (ID_UsuarioXIdioma),
  CONSTRAINT fk_ID_Usuario FOREIGN KEY (ID_Usuario) REFERENCES Ciudad(ID_Usuario),
  CONSTRAINT fk_ID_Idioma FOREIGN KEY (ID_Idioma) REFERENCES Idioma(ID_Idioma)
); 

CREATE TABLE Wink
(
  ID_Wink NUMBER(10),
  Fecha DATE DEFAULT SYSDATE CONSTRAINT Wink_Fecha_nn NOT NULL,
  ID_Enviado NUMBER(10), CONSTRAINT Wink_ID_Enviado_nn NOT NULL,
  ID_Recibido NUMBER(10), CONSTRAINT Wink_ID_Recibido_nn NOT NULL,
  CONSTRAINT pk_ID_Wink PRIMARY KEY (ID_Wink),
  CONSTRAINT fk_ID_Enviado FOREIGN KEY (ID_Enviado) REFERENCES Usuario(ID_Usuario),
  CONSTRAINT fk_ID_Recibido FOREIGN KEY (ID_Recibido) REFERENCES Usuario(ID_Usuario)
); 