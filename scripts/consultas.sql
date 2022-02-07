-- Consultas en SQL
-- palabra reservada SELECT

-- sólo dos columnas - TODOS los registros
SELECT destNombre, destPrecio
  FROM destinos;

-- FILTROS
-- palabra reservada WHERE
SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio <= 8000;

SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio <= 8000
      AND destPrecio >= 6600;

SELECT destNombre, destPrecio
    FROM destinos
    WHERE ( idRegion = 5 OR idRegion = 7 )
    AND destPrecio <= 7000;

-- UNA SUBCONSULTA
SELECT destNombre, destPrecio
    FROM destinos
    WHERE destPrecio =
      ( SELECT min(destPrecio) from destinos )

