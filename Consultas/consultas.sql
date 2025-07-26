USE tcgduelos;

--todos los duelos de un jugador.
SELECT * FROM duelos
WHERE id_jugador1 = 1 OR id_jugador2 = 1;


--sumar los puntos  de todos los jugadores y ordenarlos
SELECT nombre_usuario, puntos
FROM jugadores
ORDER BY puntos DESC;

--historial de beneficios del jugador.
SELECT b.descripcion, h.fecha_canje
FROM historial_beneficios h
JOIN beneficios b ON h.id_beneficio = b.id_beneficio
WHERE h.id_jugador = 1;

