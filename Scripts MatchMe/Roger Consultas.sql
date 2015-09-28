--------------Get_Rol-------------
create or replace
PROCEDURE GET_Rol( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Rol, nombre
  FROM Rol
  WHERE ID_Rol = nvl(pID, ID_Rol)
  ORDER BY nombre;
END GET_Rol;


--------------Test_get_rol-------------

SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Rol.ID_Rol%TYPE;
  l_nombre    Rol.nombre%TYPE;
BEGIN
  get_Rol(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Ciudad---------------
create or replace
PROCEDURE GET_Ciudad( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Ciudad, nombre
  FROM Ciudad
  WHERE ID_Ciudad = nvl(pID, ID_Ciudad)
  ORDER BY nombre;
END GET_Ciudad;

------------------Test_GET_Ciudad-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Ciudad.ID_Ciudad%TYPE;
  l_nombre    Ciudad.nombre%TYPE;
BEGIN
  get_Ciudad(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Religion---------------
create or replace
PROCEDURE GET_Religion( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Religion, nombre
  FROM Religion
  WHERE ID_Religion = nvl(pID, ID_Religion)
  ORDER BY nombre;
END GET_Religion;

------------------Test_GET_Religion-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Religion.ID_Religion%TYPE;
  l_nombre    Religion.nombre%TYPE;
BEGIN
  get_Religion(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Educacion---------------
create or replace
PROCEDURE GET_Educacion( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Educacion, nombre
  FROM Educacion
  WHERE ID_Educacion = nvl(pID, ID_Educacion)
  ORDER BY nombre;
END GET_Educacion;

------------------Test_GET_Educacion-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Educacion.ID_Educacion%TYPE;
  l_nombre    Educacion.nombre%TYPE;
BEGIN
  get_Educacion(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;

-------------GET_Hobby---------------
create or replace
PROCEDURE GET_Hobby( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Hobby, nombre
  FROM Hobby
  WHERE ID_Hobby = nvl(pID, ID_Hobby)
  ORDER BY nombre;
END GET_Hobby;

------------------Test_GET_Hobby-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Hobby.ID_Hobby%TYPE;
  l_nombre    Hobby.nombre%TYPE;
BEGIN
  get_Hobby(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;

-------------GET_Tipo_Bebedor---------------
create or replace
PROCEDURE GET_Tipo_Bebedor( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_TipoBebedor, Clase
  FROM Tipo_Bebedor
  WHERE ID_TipoBebedor = nvl(pID, ID_TipoBebedor)
  ORDER BY clase;
END GET_Tipo_Bebedor;

------------------Test_GET_Tipo_Bebedor-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Tipo_Bebedor.ID_TipoBebedor%TYPE;
  l_clase    Tipo_Bebedor.clase%TYPE;
BEGIN
  get_Tipo_Bebedor(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_clase;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_clase);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Color_Ojos---------------
create or replace
PROCEDURE GET_Color_Ojos( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_ColorOjos, nombre
  FROM Color_Ojos
  WHERE ID_ColorOjos = nvl(pID, ID_ColorOjos)
  ORDER BY nombre;
END GET_Color_Ojos;

------------------Test_GET_Color_Ojos-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Color_Ojos.ID_ColorOjos%TYPE;
  l_nombre    Color_Ojos.nombre%TYPE;
BEGIN
  get_Color_Ojos(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;


-------------GET_Contextura---------------
create or replace
PROCEDURE GET_Contextura( 
 pID IN NUMBER,
 p_recordset OUT SYS_REFCURSOR
 ) AS
BEGIN
 OPEN p_recordset FOR
  SELECT ID_Contextura, nombre
  FROM Contextura
  WHERE ID_Contextura = nvl(pID, ID_Contextura)
  ORDER BY nombre;
END GET_Contextura;

------------------Test_GET_Contextura-------------------
SET SERVEROUTPUT ON SIZE 1000000
DECLARE
  l_cursor  SYS_REFCURSOR;
  l_ID    Contextura.ID_Contextura%TYPE;
  l_nombre    Contextura.nombre%TYPE;
BEGIN
  get_Contextura(null,
              p_recordset => l_cursor);        
  LOOP 
    FETCH l_cursor
    INTO   l_ID, l_nombre;
    EXIT WHEN l_cursor%NOTFOUND;
    DBMS_OUTPUT.PUT_LINE(l_ID || ' | ' || l_nombre);
  END LOOP;
  CLOSE l_cursor;
END;