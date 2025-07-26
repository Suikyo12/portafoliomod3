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
--crear nueva tabla, caras favoritas de cada jugador.
CREATE TABLE cartas_favoritas (
    id_favorito INT PRIMARY KEY AUTO_INCREMENT,
    id_jugador INT,
    nombre_carta VARCHAR(100),
    edicion VARCHAR(50),
    FOREIGN KEY (id_jugador) REFERENCES jugadores(id_jugador)
);

--modificar una tabla, agregando columna nivel del jugador.
ALTER TABLE jugadores
ADD nivel ENUM('novato', 'intermedio', 'avanzado') DEFAULT 'novato';

--eliminar una tabla.
DROP TABLE cartas_favoritas;
