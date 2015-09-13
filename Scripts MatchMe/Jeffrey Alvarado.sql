INSERT INTO actividadAL(id_actividadAL, nombre)
VALUES(secu_actividadAL.NextVal, 'Escalar');

Update actividadAL
set nombre = 'Escalar montañas'
WHERE id_actividadAL = 1;

delete from actividadAL
WHERE id_actividadAL = 1;

--------------------------------

INSERT INTO pais(id_pais, nombre)
VALUES(secu_pais.NextVal, 'Cota Rica');

Update pais
set nombre = 'Costa Rica'
WHERE id_pais = 1;

delete from pais
WHERE id_pais = 1;

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

INSERT INTO evento(id_evento, nombre, descripcion, fecha, cuidad)
VALUES(secu_evento.NextVal, 'Cumpleaños de Roger', 'Vamos a celebrar cumpleaños de Roger', TO_DATE('20032015 20:00:00', 'DDMMYYYY hh24:mi:ss'), 1);

Update evento
set nombre = 'Cumpleaños de Roger',
	descripcion = 'Vamos a celebrar cumpleaños de Rogercito',
	fecha = TO_DATE('20032015 18:00:00', 'DDMMYYYY hh24:mi:ss')
WHERE id_evento = 1;

delete from evento
WHERE id_evento = 1;

--------------------------------

INSERT INTO color_piel(id_colorpiel, nombre)
VALUES(secu_color_piel.NextVal, 'Amarillo');

Update color_piel
set nombre = 'Blanco'
WHERE id_color_piel = 1;

delete from color_piel
WHERE id_color_piel = 1;

--------------------------------

INSERT INTO estado_match(id_estado_match, nombre)
VALUES(secu_estado_match.NextVal, 'Encontro pareja');

Update estado_match
set nombre = 'Casado'
WHERE id_estado_match = 1;

delete from estado_match
WHERE id_estado_match = 1;

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

INSERT INTO match(id_match, fecha, id_estado_match, id_propio, id_recomendacion)
VALUES(secu_match.NextVal, TO_DATE('20032015', 'DDMMYYYY'), 1, 1, 2);

Update match
set fecha = TO_DATE('20032015', 'DDMMYYYY')
WHERE id_match = 1;

delete from match
WHERE id_match = 1;

--------------------------------

INSERT INTO UsuarioXIdioma(ID_UsuarioXIdioma, id_usuario, id_idioma)
VALUES(secu_UsuarioXIdioma.NextVal, 1, 1);

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
