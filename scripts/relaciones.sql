-- Relaciones entre tablas
-- para traer datos de más de una tabla

SELECT destNombre, destPrecio, regNombre
    FROM destinos, regiones
    WHERE destinos.idRegion = regiones.idRegion

