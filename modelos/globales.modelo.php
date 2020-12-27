<?php

require_once "conexion.php";

class ModeloGlobales{
    
	  /*=============================================
		  MOSTRAR PARAMETROS
    =============================================*/
    
    static public function mdlMostrarParametros($tabla, $item, $valor){
       if($item != null){

            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");
            $stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
            $stmt -> execute();
            return $stmt -> fetch();

        } else {

            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");
            $stmt -> execute();
            return $stmt -> fetchAll();

        }

        $stmt -> close();
        $stmt = null;
        	
    }

    /*=============================================
		  EDITAR PARAMETROS
    =============================================*/
    
    static public function mdlEditarParametro($tabla,$datos){
        
        $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET valor = :valor WHERE id_parametro = :id_parametro");

        $stmt -> bindParam(":valor", $datos["valor"], PDO::PARAM_STR);
        $stmt -> bindParam(":id_parametro", $datos["id_parametro"], PDO::PARAM_INT);

        if($stmt->execute()){

            return "ok";

        }else{

            return "error";
        
        }

        $stmt->close();
        $stmt = null;
    }

     /*=============================================
          EDITAR ROLES
    =============================================*/
    
    static public function mdlEditarRol($tabla,$datos){
        
        $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET rol = :rol, descripcion = :descripcion WHERE id_rol = :id_rol");

        $stmt -> bindParam(":rol", $datos["rol"], PDO::PARAM_STR);
        $stmt -> bindParam(":descripcion", $datos["descripcion"], PDO::PARAM_STR);
        $stmt -> bindParam(":id_rol", $datos["id_rol"], PDO::PARAM_INT);

        if($stmt->execute()){

            return true;

        }else{

            return false;
        
        }

        $stmt->close();
        $stmt = null;
    }



    /*=============================================
          EDITAR MATRICULA
    =============================================*/
    
    static public function mdlEditarMatricula($tabla,$datos){
        
        $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET tipo_matricula = :tipo_matricula, precio_matricula = :precio_matricula WHERE id_matricula = :id_matricula");

        $stmt -> bindParam(":tipo_matricula", $datos["tipo_matricula"], PDO::PARAM_STR);
        $stmt -> bindParam(":precio_matricula", $datos["precio_matricula"], PDO::PARAM_STR);
        $stmt -> bindParam(":id_matricula", $datos["id_matricula"], PDO::PARAM_INT);

        if($stmt->execute()){

            return true;

        }else{

            return false;
        
        }

        $stmt->close();
        $stmt = null;
    }


        /*=============================================
          EDITAR DESCUENTO
    =============================================*/
    
    static public function mdlEditarDescuento($tabla,$datos){
        
        $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET tipo_descuento = :tipo_descuento, valor_descuento = :valor_descuento WHERE id_descuento = :id_descuento");

        $stmt -> bindParam(":tipo_descuento", $datos["tipo_descuento"], PDO::PARAM_STR);
        $stmt -> bindParam(":valor_descuento", $datos["valor_descuento"], PDO::PARAM_STR);
        $stmt -> bindParam(":id_descuento", $datos["id_descuento"], PDO::PARAM_INT);

        if($stmt->execute()){

            return true;

        }else{

            return false;
        
        }

        $stmt->close();
        $stmt = null;
    }


    /*=============================================
            BORRAR MATRICULA
	=============================================*/
	static public function mdlBorrarMatricula($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id_matricula = :id_matricula");

		$stmt->bindParam(":id_matricula", $datos, PDO::PARAM_INT);

		if($stmt->execute()){

			return true;

		} else {
		
			return $stmt->errorInfo();

		}

		$stmt->close();

		$stmt = null;
    }
    
    /*=============================================
            BORRAR DESCUENTO
	=============================================*/
	static public function mdlBorrarDescuento($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id_descuento = :id_descuento");

		$stmt->bindParam(":id_descuento", $datos, PDO::PARAM_INT);

		if($stmt->execute()){

			return true;

		} else {
		
			return $stmt->errorInfo();

		}

		$stmt->close();

		$stmt = null;
    }
    
    /*=============================================
            BORRAR ROLES
	=============================================*/
	static public function mdlBorrarRoles($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id_rol = :id_rol");

		$stmt->bindParam(":id_rol", $datos, PDO::PARAM_INT);

		if($stmt->execute()){

			return true;

		} else {
		
			return $stmt->errorInfo();

		}

		$stmt->close();

		$stmt = null;
    }
    
    /*=============================================
			RANGO DINAMICO INSCRIPCION
	=============================================*/
	static public function mdlRangoInscripcion($tabla, $rango){
	
		if($rango == null){

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla");
            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} else {

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla  where inscripcion LIKE '%$rango%'");

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 	
    }
    

    /*=============================================
			RANGO DINAMICO MATRICULA
	=============================================*/
	static public function mdlRangoMatricula($tabla, $rango){
	
		if($rango == null){

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla");
            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} else {

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla  where matricula LIKE '%$rango%'");

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 	
    }
    
    /*=============================================
			RANGO DINAMICO DESCUENTO
	=============================================*/
	static public function mdlRangoDescuento($tabla, $rango){
	
		if($rango == null){

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla");
            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} else {

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla  where descuento LIKE '%$rango%'");

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 	
    }
    
    /*=============================================
			RANGO DINAMICO ROL
	=============================================*/
	static public function mdlRangoRol($tabla, $rango){
	
		if($rango == null){

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla");
            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} else {

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla  where roles LIKE '%$rango%'");

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 	
    }
    

     /*=============================================
			RANGO DINAMICO PARAMETRO
	=============================================*/
	static public function mdlRangoParametro($tabla, $rango){
	
		if($rango == null){

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla");
            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} else {

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla  where parametross LIKE '%$rango%'");

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 	
    }
    
    /*=============================================
			RANGO DINAMICO ADMINISTRAR
	=============================================*/
	static public function mdlRangoAdministrar($tabla, $rango){
	
		if($rango == null){

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla");
            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} else {

			$stmt = Conexion::conectar() ->prepare("SELECT * FROM $tabla  where administrarrol LIKE '%$rango%'");

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 	
	}











}