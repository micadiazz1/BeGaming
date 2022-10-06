<?php
    class CategoriaModel {
        
        private $db;

        function __construct(){
            $this->db = new PDO('mysql:host=localhost;'.'dbname=db_begaming;charset=utf8', 'root', '');
        }
        function getCategorias(){
            //Enviamos la consulta y nos devuelve el resultado
            $query = $this->db->prepare( 'SELECT * from categoria');
            $query->execute();
            $categorias = $query->fetchAll(PDO::FETCH_OBJ);
        
            return $categorias;
                
        }

        // VERIFICAR SI ESTA BIEN EL INNER JOIN
        function getCategoria($id){
            $query = $this->db->prepare('SELECT producto.*, categoria.nombre_categoria FROM producto INNER JOIN categoria ON producto.id_categoria_fk = categoria.id_categoria WHERE producto.id_categoria_fk = ?');
            $query->execute([$id]);
            $detailCategoria = $query->fetchAll(PDO::FETCH_OBJ);
            
            return $detailCategoria;
        }

        function getCategoriaID($id){
            $query = $this->db->prepare('SELECT * from categoria WHERE id_categoria = ?');
            $query->execute([$id]);
            $detailCategoria = $query->fetch(PDO::FETCH_OBJ);
            
            return $detailCategoria;
        }

        function inssertCategoria($nombre){
            $query = $this->db->prepare('INSERT INTO categoria(nombre_categoria) VALUES(?)');
            $query->execute([$nombre]);
        }
        function deleteCategoria($id){
            $query = $this->db->prepare('DELETE FROM categoria WHERE id_categoria=?');
            $query->execute([$id]);
        }
        function updateCategoria($nombre,$id){
            $query = $this->db->prepare("UPDATE categoria SET nombre_categoria = ? WHERE id_categoria = ?");
            $query->execute([$nombre,$id]);
        }
        
    }