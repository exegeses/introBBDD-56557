<?php

    class Conexion
    {
        static $link;
        static $stmt;

        static function conectar()
        {
            self::$link = new PDO(
                'mysql:host=localhost;dbname=introDB2',
                'root',
                'root'
            );
            return self::$link;
        }
        static function getStatement( $sql ){

            self::$stmt = self::conectar()->prepare( $sql );
            return self::$stmt;
        }
    }