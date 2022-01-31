-- Crear una base de datos
CREATE DATABASE introDB2;

-- Activar una base
USE introDB2;

-- Crear una tabla
-- fórmula
-- CREATE TABLE nombre
-- (
--     nCampo tipoDato características,
--     nCampo tipoDato características,
--     nCampo tipoDato características
--)
CREATE TABLE billeteras
(
    id int primary key auto_increment not null,
    nombre varchar(50) not null,
    precio float( 9, 2 ) not null,
    stock int not null
)