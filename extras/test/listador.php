<?php
    require 'Conexion.php';
    require 'Producto.php';
    $Producto = new Producto;
    $resultado = $Producto->buscar();
echo '<pre>';
    print_r($resultado);
echo '</pre>';