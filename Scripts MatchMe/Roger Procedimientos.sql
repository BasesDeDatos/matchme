CREATE OR REPLACE PROCEDURE REGISTRAR_Rol(
	pNombre IN VARCHAR2) AS
BEGIN
	INSERT INTO Rol(ID_Rol, Nombre)
		VALUES(secu_Rol.NextVal, pNombre);
END REGISTRAR_Rol;

CREATE OR REPLACE PROCEDURE EDITAR_Rol( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2) AS
BEGIN
	Update Rol
		set (Nombre := pNombre)
	    WHERE ID_Rol = pID;
END EDITAR_Rol;

CREATE OR REPLACE PROCEDURE BORRAR_Rol( pID IN NUMBER ) AS
BEGIN
	delete from Rol
	WHERE ID_Rol = pID;
END BORRAR_Rol;

--------------------------------------------------
CREATE OR REPLACE PROCEDURE REGISTRAR_Bitacora_Visita(
	pFecha IN DATE, 
	pID_Visita IN NUMBER, 
	pID_Conocido IN NUMBER) AS
BEGIN
	INSERT INTO Bitacora_Conocido(ID_Visita, Fecha, ID_Visitante, ID_visitado)
    VALUES(secu_Bitacora_Visita.NextVal, pFecha, pID_Visitante, pID_viditado);
END REGISTRAR_Bitacora_Visita;

CREATE OR REPLACE PROCEDURE EDITAR_Bitacora_Visita( 
	pID IN NUMBER, 	
	pFecha IN DATE, 
	pID_Visitante IN NUMBER, 
	pID_Visitado IN NUMBER) AS
BEGIN
	Update Bitacora_Visita
	set (Fecha := pFecha, ID_Visitante = pID_Visitante, ID_Visitado = pID_visitado)
    	WHERE ID_Bitacora_Conocido = pID;
END EDITAR_Bitacora_Visita;

CREATE OR REPLACE PROCEDURE BORRAR_Bitacora_Visita( pID IN NUMBER ) AS
BEGIN
	delete from Bitacora_Visita
	WHERE ID_Bitacora_Visita = pID;
END BORRAR_Bitacora_Visita;

---------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE REGISTRAR_Ciudad( pNombre IN VARCHAR2 ) AS
BEGIN
	INSERT INTO Ciudad(ID_Ciudad, Nombre, ID_estado)
    	VALUES(secu_Ciudad.NextVal, pNombre, pID_estado);
END REGISTRAR_Ciudad;

CREATE OR REPLACE PROCEDURE EDITAR_Ciudad(pNombre IN VARCHAR2) AS
BEGIN
	Update Ciudad
		set (nombre := pNombre)
	    WHERE ID_Ciudad = pID;
END EDITAR_Ciudad;

CREATE OR REPLACE PROCEDURE BORRAR_Ciudad( pID IN NUMBER ) AS
BEGIN
	delete from Ciudad
	WHERE ID_Ciudad = pID;
END BORRAR_Ciudad;


---------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE REGISTRAR_Religion(
	pNombre IN VARCHAR2) AS
BEGIN
	INSERT INTO Religion(ID_Religion, Nombre)
		VALUES(secu_Religion.NextVal, pNombre);
END REGISTRAR_Religion;

CREATE OR REPLACE PROCEDURE EDITAR_Religion( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2) AS
BEGIN
	Update Religion
		set (Nombre := pNombre)
	    WHERE ID_Religion = pID;
END EDITAR_Religion;

CREATE OR REPLACE PROCEDURE BORRAR_Religion( pID IN NUMBER ) AS
BEGIN
	delete from Religion
	WHERE ID_Religion = pID;
END BORRAR_Religion;


------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE REGISTRAR_Educacion(
	pNombre IN VARCHAR2) AS
BEGIN
	INSERT INTO Educacion(ID_Educacion, Nombre)
		VALUES(secu_Educacion.NextVal, pNombre);
END REGISTRAR_Educacion;

CREATE OR REPLACE PROCEDURE EDITAR_Educacion( 
	pID IN NUMBER, 	
	pNombre IN VARCHAR2) AS
BEGIN
	Update Educacion
		set (Nombre := pNombre)
	    WHERE ID_Educacion = pID;
END EDITAR_Educacion;

CREATE OR REPLACE PROCEDURE BORRAR_Educacion( pID IN NUMBER ) AS
BEGIN
	delete from Educacion
	WHERE ID_Educacion = pID;
END BORRAR_Educacion;
---------------------------------------------------------------------
CREATE OR REPLACE PROCEDURE REGISTRAR_Hobby(
 Genero IN VARCHAR2) AS
BEGIN
 INSERT INTO Hobby(ID_Hobby, Genero)
  VALUES(secu_Hobby.NextVal, pGenero);
END REGISTRAR_Hobby;

CREATE OR REPLACE PROCEDURE EDITAR_Hobby( 
 pID IN NUMBER,  
 pGenero IN VARCHAR2) AS
BEGIN
 Update Hobby
  set (Genero := pGenero)
     WHERE ID_Hobby = pID;
END EDITAR_Hobby;

CREATE OR REPLACE PROCEDURE BORRAR_Hobby( pID IN NUMBER ) AS
BEGIN
 delete from Hobby
 WHERE ID_Hobby = pID;
END BORRAR_Hobby;


------------------------------------------------
CREATE OR REPLACE PROCEDURE REGISTRAR_Tipo_Bebedor(
 Genero IN VARCHAR2) AS
BEGIN
 INSERT INTO Tipo_Bebedor(ID_Tipo_Bebedor, Genero)
  VALUES(secu_TTipo_Bebedor.NextVal, pGenero);
END REGISTRAR_Tipo_Bebedor;

CREATE OR REPLACE PROCEDURE EDITAR_Tipo_Bebedor( 
 pID IN NUMBER,  
 pGenero IN VARCHAR2) AS
BEGIN
 Update Tipo_Bebedor
  set (Genero := pGenero)
     WHERE ID_Tipo_Bebedor = pID;
END EDITAR_Tipo_Bebedor;

CREATE OR REPLACE PROCEDURE BORRAR_Tipo_Bebedor( pID IN NUMBER ) AS
BEGIN
 delete from Tipo_Bebedor
 WHERE ID_Tipo_Bebedor = pID;
END BORRAR_Tipo_Bebedor;
-------------------------------------------------
CREATE OR REPLACE PROCEDURE REGISTRAR_Color_Ojos(
 pNombre IN VARCHAR2) AS
BEGIN
 INSERT INTO Color_Ojos(ID_ColorOjos, Nombre)
  VALUES(secu_Color_Ojos.NextVal, pNombre);
END REGISTRAR_Color_Ojos;

CREATE OR REPLACE PROCEDURE EDITAR_Color_Ojos( 
 pID IN NUMBER,  
 pNombre IN VARCHAR2) AS
BEGIN
 Update Color_Ojos
  set (Nombre := pNombre)
     WHERE ID_ColorOjos = pID;
END EDITAR_Color_Ojos;

CREATE OR REPLACE PROCEDURE BORRAR_Color_Ojos( pID IN NUMBER ) AS
BEGIN
 delete from Color_Ojos
 WHERE ID_ColorOjos = pID;
END BORRAR_Color_Ojos;

-----------------------------------------------------
CREATE OR REPLACE PROCEDURE REGISTRAR_Contextura(
 pNombre IN VARCHAR2) AS
BEGIN
 INSERT INTO Contextura(ID_Contextura, Nombre)
  VALUES(secu_Contextura.NextVal, pNombre);
END REGISTRAR_Contextura;

CREATE OR REPLACE PROCEDURE EDITAR_Contextura( 
 pID IN NUMBER,  
 pNombre IN VARCHAR2) AS
BEGIN
 Update Contextura
  set (Nombre := pNombre)
     WHERE ID_Contextura = pID;
END EDITAR_Contextura;

CREATE OR REPLACE PROCEDURE BORRAR_Contextura( pID IN NUMBER ) AS
BEGIN
 delete from Contextura
 WHERE ID_Contextura = pID;
END BORRAR_Contextura;

---------------------------------------------------------------
CREATE OR REPLACE PROCEDURE REGISTRAR_EventoXUsuario(
 pID_Usuario IN NUMBER,
 pID_Evento IN NUMBER) AS
BEGIN
 INSERT INTO EventoXUsuario(ID_EventoXUsuario, ID_Usuario, ID_Evento)
  VALUES(secu_EventoXUsuario.NextVal, pID_Usuario, pID_Evento);
END REGISTRAR_EventoXUsuario;

CREATE OR REPLACE PROCEDURE EDITAR_EventoXUsuario( 
 pID IN NUMBER,  
 pID_Usuario IN NUMBER,
 pID_Evento IN NUMBER) AS
BEGIN
 Update EventoXUsuario
  set (ID_Usuario := pID_Usuario, ID_Evento := pID_Evento)
     WHERE ID_EventoXUsuario = pID;
END EDITAR_EventoXUsuario;

CREATE OR REPLACE PROCEDURE BORRAR_EventoXUsuario( pID IN NUMBER ) AS
BEGIN
 delete from EventoXUsuario
 WHERE ID_EventoXUsuario = pID;
END BORRAR_EventoXUsuario;

