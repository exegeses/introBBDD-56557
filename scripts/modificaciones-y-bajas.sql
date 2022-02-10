--  Modificaciones y bajas

-- modificaciones FÓRMULA
-- UPDATE nombreTabla
--  SET nombreCampo = valor

UPDATE regiones
    SET regNombre = 'África'
    WHERE idRegion = 9;

--  cambiar idRegion a 9 y además precio a 8250
UPDATE destinos
    SET
        idRegion = 9,
        destPrecio = 8250
    WHERE idDestino = 10;

---
-- bajas ( eliminar ) FÓRMULA
-- DELETE FROM nombreTabla
--   WHERE condicion

DELETE FROM regiones
    WHERE idRegion = 10;

-- ver enlace
-- https://www.youtube.com/watch?v=i_cVJgIz_Cs