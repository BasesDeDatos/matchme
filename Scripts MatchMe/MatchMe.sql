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
  ID_Idioma NUMBER(4),ID_Educacion NUMBER(2),
  Nombre VARCHAR2(30), CONSTRAINT Idioma_Nombre_nn NOT NULL,
  CONSTRAINT Idioma_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_Idioma PRIMARY KEY (ID_Idioma)
); 

CREATE TABLE Estado_Civil
(
  ID_EstadoCi NUMBER(2),
  Nombre VARCHAR2(30), CONSTRAINT Pais_Nombre_nn NOT NULL,
  CONSTRAINT EstadoCi_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_EstadoCi PRIMARY KEY (ID_EstadoCi)
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
  CONSTRAINT Estado_Nombre_uk UNIQUE(Nombre),
  ID_Pais NUMBER(3), CONSTRAINT Estado_ID_Pais_nn NOT NULL,
  CONSTRAINT pk_ID_Estado PRIMARY KEY (ID_Estado),
  CONSTRAINT fk_ID_Pais FOREIGN KEY (ID_Pais) REFERENCES Pais(ID_Pais)
);

CREATE TABLE Ciudad
(
  ID_Ciudad NUMBER(7),
  Nombre VARCHAR2(30), CONSTRAINT Ciudad_Nombre_nn NOT NULL,
  CONSTRAINT Ciudad_Nombre_uk UNIQUE(Nombre),
  ID_Estado NUMBER(5), CONSTRAINT Ciudad_ID_Estado_nn NOT NULL,
  CONSTRAINT pk_ID_Ciudad PRIMARY KEY (ID_Ciudad),
  CONSTRAINT fk_ID_Estado FOREIGN KEY (ID_Estado) REFERENCES Estado(ID_Estado)
);

CREATE TABLE Evento
(
  ID_Evento NUMBER(3),
  Nombre VARCHAR2(30), CONSTRAINT Evento_Nombre_nn NOT NULL,
  Fecha DATE DEFAULT SYSDATE CONSTRAINT Evento_Fecha_nn NOT NULL,
  ID_Ciudad Number(7), CONSTRAINT Evento_ID_Ciudad_nn NOT NULL,
  CONSTRAINT pk_ID_Evento PRIMARY KEY (ID_Evento),
  CONSTRAINT fk_ID_Ciudad FOREIGN KEY (ID_Ciudad) REFERENCES Ciudad(ID_Ciudad)
); 

CREATE TABLE Color_Ojos
(
  ID_ColorOjos Number(10),
  Nombre VARCHAR2(20), CONSTRAINT ColorO_Nombre_nn NOT NULL,
  CONSTRAINT ColorOjos_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_ColorOjos PRIMARY KEY (ID_ColorOjos)
);

CREATE TABLE Color_Piel
(
  ID_ColorPiel Number(10),
  Nombre VARCHAR2(20), CONSTRAINT ColorPiel_Nombre_nn NOT NULL,
  CONSTRAINT ColorPiel_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_ColorPiel PRIMARY KEY (ID_ColorPiel)
);

CREATE TABLE Color_Pelo
(
  ID_ColorPelo Number(10),
  Nombre VARCHAR2(20), CONSTRAINT ColorPelo_Nombre_nn NOT NULL,
  CONSTRAINT ColorPelo_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_ColorPelo PRIMARY KEY (ID_ColorPelo)
);

CREATE TABLE Contextura
(
  ID_Contextura Number(10),
  Nombre VARCHAR2(20), CONSTRAINT Contextura_Nombre_nn NOT NULL,
  CONSTRAINT Contextura_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_Contextura PRIMARY KEY (ID_Contextura)
);

CREATE TABLE Aspecto_Fisico
(
  ID_AspectoF Number(10),
  Altura Number(10),CONSTRAINT AspectoF_Altura_nn NOT NULL,
  CONSTRAINT AspectoF_Altura_min CHECK (Altura>40),
  Peso Number(10),CONSTRAINT AspectoF_Peso_nn NOT NULL,
  CONSTRAINT AspectoF_Peso_min CHECK (Peso>40),
  ID_ColorOjos Number(10), CONSTRAINT AspectoF_ID_ColorOjos_nn NOT NULL,
  ID_ColorPiel Number(10),CONSTRAINT AspectoF_ID_Piel_nn NOT NULL,
  ID_ColorPelo Number(10),CONSTRAINT AspectoF_ID_Pelo_nn NOT NULL,
  ID_Contextura Number(10),CONSTRAINT AspectoF_ID_Contextura_nn NOT NULL,
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

CREATE TABLE ActividadAL
(
  ID_ActividadAL Number(10),
  Nombre VARCHAR2(20), CONSTRAINT ActividadA_Nombre_nn NOT NULL,
  CONSTRAINT ActividadA_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_ActividadAL PRIMARY KEY (ID_ActividadAL)
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

CREATE TABLE Hobby
(
  ID_Hobby Number(10),
  Nombre VARCHAR2(20), CONSTRAINT Hobby_Nombre_nn NOT NULL,
  CONSTRAINT Hobby_Nombre_uk UNIQUE(Nombre),
  CONSTRAINT pk_ID_Hobby PRIMARY KEY (ID_Hobby)
);

CREATE TABLE InteresXHobby
(
  ID_InteresXHobby Number(10),
  ID_InteresG Number(10), CONSTRAINT InteresXHobby_ID_InteresG_nn NOT NULL,
  ID_Hobby Number(10), CONSTRAINT InteresXHobby_ID_Hobby_nn NOT NULL,
  CONSTRAINT pk_ID_InteresXHobby PRIMARY KEY (ID_InteresXHobby),
  CONSTRAINT fk_ID_InteresG FOREIGN KEY (ID_InteresG ) REFERENCES Interes_Gustos(ID_InteresG),
  CONSTRAINT fk_ID_Hobby FOREIGN KEY (ID_Hobby ) REFERENCES Hobby(ID_Hobby)
);

CREATE TABLE Info_Mascota
(
  ID_InfoMascota Number(10),
  Gustan VARCHAR2(2), CONSTRAINT Info_Mascota_Gustan_nn NOT NULL,
  Tiene VARCHAR2(2), CONSTRAINT Info_Mascota_Tiene_nn NOT NULL,
  Tendria VARCHAR2(2), CONSTRAINT Info_Mascota_Tendria_nn NOT NULL,
  CONSTRAINT pk_ID_InfoMascota PRIMARY KEY (ID_InfoMascota)
);

CREATE TABLE Tipo_Bebedor
(
  ID_TipoBebedor Number(2),
  Clase VARCHAR2(2), CONSTRAINT Tipo_Bebedor_Clase_nn NOT NULL,
  CONSTRAINT pk_ID_InfoMascota PRIMARY KEY (ID_InfoMascota)
);

CREATE TABLE Ocupacion
(
  ID_Ocupacion Number(2),
  Nombre VARCHAR2(2), CONSTRAINT Ocupacion_Nombre_nn NOT NULL,
  CONSTRAINT pk_ID_Ocupacion PRIMARY KEY (ID_Ocupacion)
);

CREATE TABLE Estilo_Vida
(
  ID_EstiloVida Number(10),
  Fuma VARCHAR2(2), CONSTRAINT Estilo_Vida_Fuma_nn NOT NULL,
  FrecEjercicios VARCHAR2(20), CONSTRAINT Estilo_Vida_FreEjercicios_nn NOT NULL,
  CantidadHijos NUMBER(2), CONSTRAINT Estilo_Vida_CantidadHijos_nn NOT NULL,
  CONSTRAINT prod_CantidadHijos_min CHECK (CantidadHijos>=0),
  QuiereHIjos VARCHAR2(2), CONSTRAINT Estilo_Vida_QuiereHijos_nn NOT NULL,
  SalarioPromedio NUMBER(6),
  Slogan VARCHAR2(200), CONSTRAINT Estilo_Vida_Slogan_nn NOT NULL,  
  ID_InfoMascota Number(10),CONSTRAINT Estilo_Vida_InfoMascota_nn NOT NULL,
  ID_TipoBebedor Number(2),CONSTRAINT Estilo_Vida_TipoBebedor_nn NOT NULL,
  ID_Ocupacion Number(2),CONSTRAINT Estilo_Vida_Ocupacion_nn NOT NULL,
  CONSTRAINT pk_ID_InteresG PRIMARY KEY (ID_InteresG),
  CONSTRAINT fk_ID_InfoMascota FOREIGN KEY (ID_InfoMascota ) REFERENCES Info_Mascota(ID_InfoMascota),
  CONSTRAINT fk_ID_TipoBebedor FOREIGN KEY (ID_TipoBebedor ) REFERENCES Tipo_Bebedor(ID_TipoBebedor),
  CONSTRAINT fk_ID_Ocupacion FOREIGN KEY (ID_Ocupacion ) REFERENCES Ocupacion(ID_Ocupacion) 
);

CREATE TABLE Usuario
(
  ID_Usuario NUMBER(10),
  Nombre VARCHAR2(30), CONSTRAINT Usuario_Nombre_nn NOT NULL,
  Apellido VARCHAR2(30), CONSTRAINT Usuario_Apellido_nn NOT NULL,
  Fecha_Nac DATE DEFAULT SYSDATE CONSTRAINT Evento_Fecha_Nac_nn NOT NULL,
  Email VARCHAR2(50), CONSTRAINT Usuario_email_nn NOT NULL,
  CONSTRAINT Usuario_Email_uk UNIQUE(Email),
  Foto VARCHAR2(200),-- CONSTRAINT Usuario_Foto_nn NOT NULL,
  Genero VARCHAR2(10), CONSTRAINT Usuario_Genero_nn NOT NULL,
  Clave VARCHAR2(20), CONSTRAINT Usuario_Clave_nn NOT NULL,
  Signo VARCHAR2(11), CONSTRAINT Usuario_Signo_nn NOT NULL,
  Rol VARCHAR2(10), CONSTRAINT Usuario_Rol_nn NOT NULL,
  ID_Religion NUMBER(4),CONSTRAINT Usuario_ID_Religion_nn NOT NULL,
  ID_EstadoCi NUMBER(2),CONSTRAINT Usuario_ID_EstadoCi_nn NOT NULL,
  ID_Idioma NUMBER(4),CONSTRAINT Usuario_ID_Idioma_nn NOT NULL,
  ID_Educacion NUMBER(2),CONSTRAINT Usuario_ID_Educacion_nn NOT NULL,
  ID_Ciudad Number(7), CONSTRAINT Usuario_ID_Estado_nn NOT NULL,
  ID_AspectoFi Number(10), CONSTRAINT Usuario_ID_AspectoFi_nn NOT NULL,
  ID_Hobby Number(10), CONSTRAINT Usuario_ID_Hobby_nn NOT NULL,
  ID_ActividadAL Number(10), CONSTRAINT Usuario_ID_ActividadAL_nn NOT NULL,
  ID_EstiloVida Number(10), CONSTRAINT Usuario_ID_EstiloVida_nn NOT NULL,
  CONSTRAINT pk_ID_Usuario PRIMARY KEY (ID_Usuario),
  CONSTRAINT fk_ID_Religion FOREIGN KEY (ID_Religion) REFERENCES Religion(ID_Religion),
  CONSTRAINT fk_ID_EstadoCi FOREIGN KEY (ID_EstadoCi) REFERENCES Estado_Civil(ID_EstadoCi),
  CONSTRAINT fk_ID_Idioma FOREIGN KEY (ID_Idioma) REFERENCES Idioma(ID_Idioma),
  CONSTRAINT fk_ID_Educacion FOREIGN KEY (ID_Educacion) REFERENCES Educacion(ID_Educacion),
  CONSTRAINT fk_ID_Ciudad FOREIGN KEY (ID_Ciudad) REFERENCES Ciudad(ID_Ciudad),
  CONSTRAINT fk_ID_AspectoFi FOREIGN KEY (ID_AspectoFi) REFERENCES Aspecto_Fisico(ID_AspectoFi),
  CONSTRAINT fk_ID_Hobby FOREIGN KEY (ID_Hobby ) REFERENCES Hobby(ID_Hobby),
  CONSTRAINT fk_ID_ActividadAL FOREIGN KEY (ID_ActividadAL ) REFERENCES ActividadAL(ID_ActividadAL),
  CONSTRAINT fk_ID_EstiloVida FOREIGN KEY (ID_EstiloVida ) REFERENCES Estilo_Vida(ID_EstiloVida) 
); 

CREATE TABLE Wink
(
  ID_Wink NUMBER(10),
  Fecha DATE DEFAULT SYSDATE CONSTRAINT Evento_Fecha_nn NOT NULL,
  ID_Enviado NUMBER(10), CONSTRAINT Wink_ID_Enviado_nn NOT NULL,
  ID_Recibido NUMBER(10), CONSTRAINT Wink_ID_Recibido_nn NOT NULL,
  CONSTRAINT pk_ID_Wink PRIMARY KEY (ID_Wink),
  CONSTRAINT fk_ID_Enviado FOREIGN KEY (ID_Enviado) REFERENCES Usuario(ID_Usuario),
  CONSTRAINT fk_ID_Recibido FOREIGN KEY (ID_Recibido) REFERENCES Usuario(ID_Usuario)
); 