-- Insertar datos en una tabla
-- FORMULA
-- INSERT INTO nombreTabla
--     ( campo1, campo2, campo3, ... )
--   VALUES
--     ( vCampo1, vCampo2, vCampo3, ... )

INSERT INTO billeteras
        ( id, nombre, precio, stock )
    VALUES
        ( DEFAULT, 'Ledger Nano S', 16000, 30 ),
        ( DEFAULT, 'Trezor One', 19500, 30 ),
        ( DEFAULT, 'Trezor T', 78000, 20 ),
        ( DEFAULT, 'Ledger Nano X', 56000, 20 );

-- Una variante del comando INSERT
-- no mencionamos los campos
INSERT INTO billeteras
    VALUE
        ( DEFAULT, 'Coolwallet Pro', 56600, 15 );