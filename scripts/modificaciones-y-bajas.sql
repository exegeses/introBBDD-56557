--  Modificaciones y bajas

-- FÓRMULA
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