<?php

    class Producto
    {
        public function buscar()
        {
            $busqueda = $_GET['busqueda'];
            // nombre, precio, marca, categoria, descripcion
            $sql = "SELECT 
                            prdNombre, prdPrecio, 
                            mkNombre, catNombre, 
                            prdDescripcion
                        FROM productos p, marcas m, categorias c
                        WHERE p.idMarca = m.idMarca 
                          AND p.idCategoria = c.idCategoria 
                          AND prdDescripcion LIKE '%".$busqueda."%'";
            $stmt = Conexion::getStatement( $sql );
            //$stmt->bindParam(':busqueda', $busqueda);
            $stmt->execute();
            $resultado = $stmt->fetchAll(PDO::FETCH_OBJ);
            return $resultado;
        }
    }