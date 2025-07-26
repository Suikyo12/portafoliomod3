CREATE DATABASE tcgduelos;
USE tcgduelos;

-- Jugadores
CREATE TABLE jugadores (
    id_jugador INT PRIMARY KEY AUTO_INCREMENT,
    nombre_usuario VARCHAR(50) NOT NULL UNIQUE,
    correo VARCHAR(100) NOT NULL UNIQUE,
    fecha_registro DATE DEFAULT (CURRENT_DATE),
    puntos INT DEFAULT 0
);

-- Ubicaciones  eventualmente locales donde se puedan generar torneos, limitados--
CREATE TABLE ubicaciones (
    id_ubicacion INT PRIMARY KEY AUTO_INCREMENT,
    nombre_lugar VARCHAR(100) NOT NULL,
    direccion TEXT
);

-- Duelos
CREATE TABLE duelos (
    id_duelo INT PRIMARY KEY AUTO_INCREMENT,
    id_jugador1 INT,
    id_jugador2 INT,
    fecha DATE NOT NULL,
    id_ubicacion INT,
    FOREIGN KEY (id_jugador1) REFERENCES jugadores(id_jugador),
    FOREIGN KEY (id_jugador2) REFERENCES jugadores(id_jugador),
    FOREIGN KEY (id_ubicacion) REFERENCES ubicaciones(id_ubicacion)
);

-- Resultados
CREATE TABLE resultado_duelo (
    id_resultado INT PRIMARY KEY AUTO_INCREMENT,
    id_duelo INT UNIQUE,
    ganador_id INT,
    perdedor_id INT,
    empate BOOLEAN DEFAULT FALSE,
    puntos_ganador INT,
    puntos_perdedor INT,
    FOREIGN KEY (id_duelo) REFERENCES duelos(id_duelo),
    FOREIGN KEY (ganador_id) REFERENCES jugadores(id_jugador),
    FOREIGN KEY (perdedor_id) REFERENCES jugadores(id_jugador)
);

-- Beneficios
CREATE TABLE beneficios (
    id_beneficio INT PRIMARY KEY AUTO_INCREMENT,
    descripcion VARCHAR(100),
    puntos_necesarios INT
);

-- Historial de beneficios canjeados
CREATE TABLE historial_beneficios (
    id_historial INT PRIMARY KEY AUTO_INCREMENT,
    id_jugador INT,
    id_beneficio INT,
    fecha_canje DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (id_jugador) REFERENCES jugadores(id_jugador),
    FOREIGN KEY (id_beneficio) REFERENCES beneficios(id_beneficio)
);
