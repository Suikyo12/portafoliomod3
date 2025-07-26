# Sistema de Gestión de Duelos TCG

Este proyecto implementa el modelo de base de datos relacional para una plataforma de jugadores de TCG (Trading Card Game) que se conectan y acuerdan duelos presenciales, acumulan puntos y canjean beneficios.

## 📌 Propósito del Código

El código SQL incluido en esta carpeta:

- Crea las tablas necesarias para jugadores, duelos, resultados, ubicaciones y beneficios.
- Inserta datos de prueba.
- Permite realizar consultas para analizar el rendimiento de los jugadores.
- Administra la lógica de puntos y canjes.

## 📂 Estructura del Proyecto

- `clavef.sql`: Contiene la creación de todas las tablas y relaciones.
- `consultas.sql`: Consultas SELECT para análisis y reportes.
- `dmldll.sql`: Inserciones, actualizaciones y eliminaciones (DML), y DLL para crear, modificar y eliminar tablas.
- `mer.png`: Imagen del diagrama entidad-relación.

## ▶️ Cómo ejecutar las consultas

1. Abre tu gestor de base de datos (como DBeaver, phpMyAdmin, MySQL Workbench o consola).
2. Ejecuta primero el archivo `modelo.sql` para crear la base y sus tablas.
3. Luego ejecuta `dmldll.sql` para poblar los datos de prueba.
4. Usa `consultas.sql` para realizar análisis sobre la base.
5. Verifica relaciones en el archivo `diagrama-er.png`.

## 🔧 Requisitos

- MySQL o MariaDB (versión 5.7+ recomendada).
- Soporte para `AUTO_INCREMENT`, `FOREIGN KEY`, y tipos `ENUM`.

## 👨‍💻 Autor

Francisco Valencia  
| Proyecto de Portafolio  Skillnest
Año: 2025
