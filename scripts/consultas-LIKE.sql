-- búsquedas por subcadena || que contenga

-- que en le nombre contenga 'Marshall'
SELECT prdNombre, prdDescripcion, prdPrecio
    FROM productos
    WHERE prdNombre LIKE '%Marshall%';

-- que en la descripción contenga 'Bluetooth'
SELECT prdNombre, prdDescripcion, prdPrecio
    FROM productos
    WHERE prdDescripcion LIKE '%Bluetooth%';

-- ahora con más tablas
-- nombre, precio, marca, descripción
-- dónde en la descripción contenga 'Altavoz'

SELECT prdNombre, prdPrecio,prdDescripcion, mkNombre
    FROM productos
     JOIN marcas
      ON productos.idMarca=marcas.idmarca
    WHERE prdDescripcion LIKE '%Altavoz%';

SELECT prdNombre, prdDescripcion, mkNombre,prdPrecio
    FROM productos, marcas
    WHERE productos.idMarca = marcas.idMarca
    AND prdDescripcion LIKE '%Altavoz%';

