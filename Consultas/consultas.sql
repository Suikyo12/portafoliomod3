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

--DML
-- insertar un nuevo jugador
INSERT INTO jugadores (nombre_usuario, correo, puntos)
VALUES ('darkwizard', 'wizard@example.com', 0);

-- insertar una ubicación
INSERT INTO ubicaciones (nombre_lugar, direccion)
VALUES ('Café TCG Central', 'Av. Cartas 123');

-- insertar un duelo
INSERT INTO duelos (id_jugador1, id_jugador2, fecha, id_ubicacion)
VALUES (1, 2, '2025-07-26', 1);

-- UPDATE, sumar puntos al jugador ganador (id_jugador = 1)
UPDATE jugadores
SET puntos = puntos + 50
WHERE id_jugador = 1;

-- Primero eliminar su resultado si existe (por restricciones de clave foránea)
DELETE FROM resultado_duelo
WHERE id_duelo = 5;

-- DELETE, eliminar el duelo
DELETE FROM duelos
WHERE id_duelo = 5;


--DLL