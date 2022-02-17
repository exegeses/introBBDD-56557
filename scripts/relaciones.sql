-- Relaciones entre tablas (table relation)
-- para traer datos de más de una tabla

SELECT destNombre, destPrecio, regNombre
    FROM destinos, regiones
    WHERE destinos.idRegion = regiones.idRegion;

-- traer de nombre, precio y la marca de productos

SELECT prdNombre, prdPrecio, mkNombre
    FROM productos, marcas
    WHERE productos.idMarca = marcas.idMarca;

-- traer de nombre, precio, la marca y la categoría de productos

SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos, marcas, categorias
    WHERE productos.idMarca = marcas.idMarca
      AND productos.idCategoria = categorias.idCategoria;

-------------------------------------------
-- JOINS o uniones entre tablas
-- traer de nombre, precio, la marca

SELECT prdNombre, prdPrecio, mkNombre
    FROM productos
     JOIN marcas
      ON productos.idMarca = marcas.idMarca;

-- traer de nombre, precio, la marca y la categoría

SELECT prdNombre, prdPrecio, mkNombre, catNombre
    FROM productos
     JOIN marcas
      ON productos.idMarca = marcas.idMarca
     JOIN categorias
      ON productos.idCategoria = categorias.idCategoria;

