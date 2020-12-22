<?php 

class ModeloClientes{
    
    /*=============================================
			CREAR CLIENTES	
	=============================================*/
	 
	static public function mdlCrearCliente($tabla, $datos){

		if ($datos['tipo_cliente'] == "Gimnasio"){
	
			$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(id_persona, tipo_cliente, id_matricula, id_descuento) VALUES (:id_persona, :tipo_cliente, :id_matricula, :id_descuento)");
	
			$stmt->bindParam(":id_persona", $datos["id_persona"], PDO::PARAM_INT);
			$stmt->bindParam(":tipo_cliente", $datos["tipo_cliente"], PDO::PARAM_STR);
			$stmt->bindParam(":id_matricula", $datos["id_matricula"], PDO::PARAM_INT);
			$stmt->bindParam(":id_descuento", $datos["id_descuento"], PDO::PARAM_INT);
			
			// $stmt->bindParam(":compras", $datos["compras"], PDO::PARAM_STR);
			// $stmt->bindParam(":ultima_compra", $datos["ultima_compra"], PDO::PARAM_STR);
			// $stmt->bindParam(":fecha_vencimiento", $datos["fecha_vencimiento"], PDO::PARAM_STR);
			// $stmt->bindParam(":fecha_proximo_pago", $datos["fecha_proximo_pago"], PDO::PARAM_STR);
	
			if($stmt->execute()){
	
				return true;	
				// return Conexion::conectar()->lastInsertId();

			}else{
	
				return $stmt->errorInfo();
			
			}

		} else {

			$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(id_persona, tipo_cliente) VALUES (:id_persona, :tipo_cliente)");
	
			$stmt->bindParam(":id_persona", $datos["id_persona"], PDO::PARAM_INT);
			$stmt->bindParam(":tipo_cliente", $datos["tipo_cliente"], PDO::PARAM_STR);
			
	
			if($stmt->execute()){
	
				return true;	
	
			}else{
	
				return false;
				// return $stmt->errorInfo();
			
			}
		}

		$stmt->close();
		
		$stmt = null;

	}

    /*=============================================
		MOSTRAR CLIENTES
	=============================================*/
	
	static public function mdlMostrarClientes($tabla1, $tabla2, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, m.precio_matricula FROM $tabla1 as p\n"
			. "LEFT JOIN $tabla2 as c ON p.id_personas = c.id_persona\n"
			. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			. "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			. "LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
			. "LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
			. "LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
			. "WHERE $item = :$item"); 

			$stmt -> bindParam(":$item", $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetch();

		} else {
			 

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, i.fecha_creacion, i.tipo_inscripcion, pd.tipo_descuento, valor_descuento, pc.* FROM $tabla1 as p\n"
			. "LEFT JOIN $tabla2 as c ON p.id_personas = c.id_persona\n"
			. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			. "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			. "LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
            . "LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
			. "LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
		    . "WHERE p.tipo_persona = 'clientes'");
			
			$stmt -> execute();
			return $stmt -> fetchAll();

		} 
		

		$stmt -> close();
		$stmt = null;	

	}

	

	/*=============================================
		MOSTRAR CLIENTES SIN PAGO
	=============================================*/
	
	static public function mdlMostrarClientesSinPago($tabla1, $tabla2, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, m.precio_matricula FROM $tabla1 as p\n"
			. "LEFT JOIN $tabla2 as c ON p.id_personas = c.id_persona\n"
			. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			// . "LEFT JOIN tbl_inscripcion as i ON c.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON c.id_cliente = pc.id_cliente\n"
			. " WHERE $item = :$item"); 

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetch();

		} else {

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, m.* FROM $tabla1 as p\n"
            . "LEFT JOIN $tabla2 as c ON p.id_personas = c.id_persona\n"
            . "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
            // . "LEFT JOIN tbl_inscripcion as i ON c.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON c.id_cliente = pc.id_cliente\n"
		    . "WHERE p.tipo_persona = 'clientes'");
			
			$stmt -> execute();
			return $stmt -> fetchAll();

		}

		$stmt -> close();
		$stmt = null;	

	}



	/*=============================================
		MOSTRAR CLIENTES INSCRIPCION (mdlMostrarClientesPagos)
	=============================================*/
	
	static public function mdlMostrarClientesInscripcionPagos($tabla1, $tabla2, $item1, $valor1, $item2, $valor2, $max){

		if($max != null){

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.tipo_inscripcion, pc.pago_matricula, pc.id_descuento, pc.pago_descuento, pc.id_inscripcion, pc.pago_inscripcion, pc.pago_total, pc.fecha_ultimo_pago, pc.fecha_vencimiento FROM tbl_personas as p\n"

			. "	LEFT JOIN tbl_clientes as c ON p.id_personas = c.id_persona\n"
		
			. "	LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
		
			. "	LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
		
			. "	LEFT JOIN tbl_pagos_cliente as pc ON c.id_cliente = pc.id_cliente\n"
		
			. "	LEFT JOIN tbl_inscripcion as i ON pc.id_inscripcion = i.id_inscripcion\n"
		
			. "	LEFT JOIN tbl_descuento as pd ON pc.id_descuento = pd.id_descuento\n"
		
			. "	WHERE c.tipo_cliente = 'Gimnasio' AND pc.fecha_vencimiento = (SELECT MAX(fecha_vencimiento) FROM tbl_pagos_cliente as 			pc1 WHERE pc1.id_cliente = pc.id_cliente)\n"
		
			. " GROUP BY c.id_cliente"); 

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetchAll();

		} else {

	
			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.* FROM $tabla1 as p\n"
			. "LEFT JOIN $tabla2 as c ON p.id_personas = c.id_persona\n"
			. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			. "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			. "LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
			. "LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON c.id_cliente = pc.id_cliente\n"
			. "WHERE $item1 = :$item1 AND ci.$item2 = :$item2\n"
			. "ORDER BY ci.id_cliente_inscripcion DESC"); 

			$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_STR);
			$stmt -> bindParam(":".$item2, $valor2, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetchAll();
		}

		$stmt -> close();
		$stmt = null;	
		
	}


	 /*=============================================
		MOSTRAR PAGOS POR CLIENTE 
	=============================================*/
	
	static public function mdlMostrarPagoPorCliente($tabla1, $tabla2, $item, $valor){

		// if($max != null){

			
			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.* FROM $tabla1 as p\n"
			. "LEFT JOIN $tabla2 as c ON p.id_personas = c.id_persona\n"
			. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			. "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			. "LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
			. "LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON c.id_cliente = pc.id_cliente\n"
			. "WHERE c.$item = :$item AND ci.estado = 1"); 

			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetch();

			
			###--MOSTRAR ULTIMO REGISTRO
			// $stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.tipo_inscripcion, i.precio_inscripcion, pc.pago_matricula, pc.id_descuento, pc.pago_descuento, pc.id_inscripcion, pc.pago_inscripcion, pc.pago_total, pc.fecha_vencimiento FROM $tabla1 as p\n"
			// . "LEFT JOIN $tabla2 as c ON p.id_personas = c.id_persona\n"
			// . "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			// . "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON c.id_cliente = pc.id_cliente\n"
			// . "LEFT JOIN tbl_inscripcion as i ON pc.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_descuento as pd ON pc.id_descuento = pd.id_descuento\n"
			// . "WHERE $item = :$item\n"
			// . "ORDER BY fecha_vencimiento DESC LIMIT 1"); 

			// $stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			// $stmt -> execute();
			// return $stmt -> fetch();

		// } 
		// else {

	
		// 	$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.tipo_inscripcion, pc.* FROM $tabla1 as p\n"
		// 	. "LEFT JOIN $tabla2 as c ON p.id_personas = c.id_persona\n"
		// 	. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
		// 	. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
		// 	. "LEFT JOIN tbl_inscripcion as i ON c.id_inscripcion = i.id_inscripcion\n"
		// 	. "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
		// 	. "LEFT JOIN tbl_pagos_cliente as pc ON c.id_cliente = pc.id_cliente\n"
		// 	. "WHERE $item = :$item"); 

		// 	$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
		// 	$stmt -> execute();
		// 	return $stmt -> fetchAll();
		// }

		$stmt -> close();
		$stmt = null;	

	}


	/*=============================================
		MOSTRAR TODOS LOS PAGOS DE LOS CLIENTES
	=============================================*/
	static public function mdlMostrarPagosClientes($item, $valor){

		if($item != null){
			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.*, pc.* FROM tbl_personas as p\n"

			. "	LEFT JOIN tbl_clientes as c ON p.id_personas = c.id_persona\n"
		
			. "	LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
		
			. "	LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
		
			. "	LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
		
			. "	LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
		
			. "	LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
		
			. "	LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
		
			. "	WHERE tipo_cliente = 'Gimnasio' AND $item = :$item\n"
		
			. "ORDER BY ci.id_cliente_inscripcion DESC");

			$stmt->bindParam(":".$item, $valor, PDO::PARAM_STR);

			$stmt -> execute();
			return $stmt -> fetch();
		
		} else {

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.*, pc.* FROM tbl_personas as p\n"
	
			. "	LEFT JOIN tbl_clientes as c ON p.id_personas = c.id_persona\n"
		
			. "	LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
		
			. "	LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
		
			. "	LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
		
			. "	LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
		
			. "	LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
		
			. "	LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
		
			. "	WHERE tipo_cliente = 'Gimnasio'\n"
		
			. "ORDER BY ci.id_cliente_inscripcion DESC");
	
			$stmt -> execute();
			return $stmt -> fetchAll();
			
		}
		
		$stmt -> close();
		$stmt = null;	

	}	


	/*=============================================
	MOSTRAR TODOS LOS CLIENTES QUE NO TENGAN INSCRIPCION		
	=============================================*/
	static public function mdlMostrarClientesSinInscripcion(){
		
		$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.* FROM tbl_personas as p\n"

		. "	LEFT JOIN tbl_clientes as c ON p.id_personas = c.id_persona\n"
	
		. "	LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
	
		. "	LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
	
		. "	LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
	
		. "	LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
	
		. "	LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"

		. "	WHERE c.tipo_cliente = 'Gimnasio' AND ci.id_cliente_inscripcion =\n"

		. "    (SELECT MAX(id_cliente_inscripcion) FROM tbl_cliente_inscripcion as ci1 WHERE ci1.id_cliente = ci.id_cliente AND ci1.estado = 0 AND ci1.inscrito = 0)\n"

		. "    GROUP by ci.id_cliente");

		$stmt -> execute();
		return $stmt -> fetchAll();
		
		$stmt -> close();
		$stmt = null;	

	}	


	/*=============================================
			MOSTRAR (DINAMICO)
	=============================================*/

	static public function mdlMostrar($tabla, $item, $valor){

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
			EDITAR CLIENTE
	=============================================*/
	 
	static public function mdlEditarCliente($tabla, $datos){

		if ($datos['tipo_cliente'] == "Gimnasio"){
	
			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET tipo_cliente = :tipo_cliente, id_matricula = :id_matricula, id_descuento = :id_descuento, compras = :compras, ultima_compra = :ultima_compra WHERE id_persona = :id_persona");
	
			$stmt->bindParam(":tipo_cliente", $datos["tipo_cliente"], PDO::PARAM_STR);
			// $stmt->bindParam(":id_inscripcion", $datos["id_inscripcion"], PDO::PARAM_INT);
			$stmt->bindParam(":id_matricula", $datos["id_matricula"], PDO::PARAM_INT);
			$stmt->bindParam(":id_descuento", $datos["id_descuento"], PDO::PARAM_INT);
			$stmt->bindParam(":id_persona", $datos["id_persona"], PDO::PARAM_INT);
			$stmt->bindParam(":compras", $datos["compras"], PDO::PARAM_INT);
			$stmt->bindParam(":ultima_compra", $datos["ultima_compra"], PDO::PARAM_STR);
	
			if($stmt->execute()){
	
				return true;	
	
			}else{
	
				return false;
			}
			
		} else {

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET id_persona = :id_persona, tipo_cliente = :tipo_cliente WHERE id_persona = :id_persona");
	
			$stmt->bindParam(":id_persona", $datos["id_persona"], PDO::PARAM_INT);
			$stmt->bindParam(":tipo_cliente", $datos["tipo_cliente"], PDO::PARAM_STR);
			
	
			if($stmt->execute()){
	
				return true;	
	
			}else{
	
				return false;
			
			}
		}

		$stmt->close();
		$stmt = null;	

		
	}
	/*=============================================
				ELIMINAR CLIENTES
	=============================================*/

	static public function mdlEliminarCliente($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("DELETE FROM $tabla WHERE id_personas = :id_personas");

		$stmt -> bindParam(":id_personas", $datos, PDO::PARAM_INT);

		if($stmt -> execute()){

			return true;
		
		}else{

			return false;	

		}

		$stmt -> close();

		$stmt = null;

	}
	/*=============================================
				REGISTRAR PAGO CLIENTE
	=============================================*/
	static public function mdlCrearPago($tabla3, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla3 (id_cliente_inscripcion, pago_matricula, pago_descuento, pago_inscripcion, pago_total) VALUES (:id_cliente_inscripcion, :pago_matricula, :pago_descuento, :pago_inscripcion, :pago_total)");

		$stmt->bindParam(":id_cliente_inscripcion", $datos["id_cliente_inscripcion"], PDO::PARAM_INT);
		$stmt->bindParam(":pago_matricula", $datos["pago_matricula"], PDO::PARAM_STR);
		// $stmt->bindParam(":id_descuento", $datos["id_descuento"], PDO::PARAM_INT);		
		$stmt->bindParam(":pago_descuento", $datos["pago_descuento"], PDO::PARAM_STR);
		// $stmt->bindParam(":id_inscripcion", $datos["id_inscripcion"], PDO::PARAM_INT);
		$stmt->bindParam(":pago_inscripcion", $datos["pago_inscripcion"], PDO::PARAM_STR);
		$stmt->bindParam(":pago_total", $datos["pago_total"], PDO::PARAM_STR);
		// $stmt->bindParam(":fecha_ultimo_pago", $datos["fecha_ultimo_pago"], PDO::PARAM_STR);
		// $stmt->bindParam(":fecha_vencimiento", $datos["fecha_vencimiento"], PDO::PARAM_STR);

		if($stmt->execute()){
			
			return true;	

		}else{

			return $stmt->errorInfo();
		
		}
	}

	/*=============================================
				REGISTRAR  CLIENTE INSCRIPCION
	=============================================*/
	static public function mdlCrearClienteInscripcion($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla (id_cliente, id_inscripcion, fecha_inscripcion, fecha_pago, fecha_proximo_pago, fecha_vencimiento) VALUES (:id_cliente, :id_inscripcion, :fecha_inscripcion, :fecha_pago, :fecha_proximo_pago, :fecha_vencimiento)");

		$stmt->bindParam(":id_cliente", $datos["id_cliente"], PDO::PARAM_INT);
		$stmt->bindParam(":id_inscripcion", $datos["id_inscripcion"], PDO::PARAM_INT);
		// $stmt->bindParam(":id_descuento", $datos["id_descuento"], PDO::PARAM_INT);		
		$stmt->bindParam(":fecha_inscripcion", $datos["fecha_inscripcion"], PDO::PARAM_STR);
		// $stmt->bindParam(":id_inscripcion", $datos["id_inscripcion"], PDO::PARAM_INT);
		$stmt->bindParam(":fecha_pago", $datos["fecha_pago"], PDO::PARAM_STR);
		$stmt->bindParam(":fecha_proximo_pago", $datos["fecha_proximo_pago"], PDO::PARAM_STR);
		$stmt->bindParam(":fecha_vencimiento", $datos["fecha_vencimiento"], PDO::PARAM_STR);
		// $stmt->bindParam(":fecha_vencimiento", $datos["fecha_vencimiento"], PDO::PARAM_STR);

		if($stmt->execute()){
			
			return true;	

		}else{

			return $stmt->errorInfo();
		
		}
	}


	/*=============================================
			EDITAR PAGO CLIENTE
	=============================================*/
	static public function mdlEditarPago($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET pago_matricula = :pago_matricula, pago_descuento = :pago_descuento, pago_inscripcion = :pago_inscripcion, pago_total = :pago_total WHERE id_cliente = :id_cliente");

		$stmt->bindParam(":pago_matricula", $datos["pago_matricula"], PDO::PARAM_STR);
		$stmt->bindParam(":pago_descuento", $datos["pago_descuento"], PDO::PARAM_STR);
		$stmt->bindParam(":pago_inscripcion", $datos["pago_inscripcion"], PDO::PARAM_STR);
		$stmt->bindParam(":pago_total", $datos["pago_total"], PDO::PARAM_STR);
		$stmt->bindParam(":id_cliente", $datos["id_cliente"], PDO::PARAM_INT);

		if($stmt->execute()){

			return true;	

		}else{

			return false;
		
		}
	}

	/*=============================================
	ACTUALIZAR CLIENTE
	=============================================*/

	static public function mdlActualizarCliente($tabla1, $item1, $valor1, $item2, $valor2){

		// return $item1;

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla1 SET $item1 = :$item1 WHERE $item2 = :$item2");

		$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_STR);
		$stmt -> bindParam(":".$item2, $valor2, PDO::PARAM_STR);

		if($stmt -> execute()){

			return true;
		
		}else{

			return $stmt->errorInfo();	

		}

		$stmt -> close();

		$stmt = null;

	}


	/*=============================================
	ACTUALIZAR CLIENTE VARIOS CAMPOS
	=============================================*/

	static public function mdlActualizarClienteVarios($tabla1, $item1, $valor1, $item2, $valor2, $item3, $valor3){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla1 SET $item1 = :$item1, $item2 = :$item2 WHERE $item3 = :$item3");

		$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_STR);
		$stmt -> bindParam(":".$item2, $valor2, PDO::PARAM_STR);
		$stmt -> bindParam(":".$item3, $valor3, PDO::PARAM_STR);

		if($stmt -> execute()){

			return true;
		
		}else{

			return $stmt->errorInfo();	

		}

		$stmt -> close();

		$stmt = null;

	}

	/*=============================================
	ACTUALIZAR PAGO CLIENTE  (MANTENIENDO INSCRIPCION)
	=============================================*/

	static public function mdlActualizarPagoCliente($tabla1, $datos, $fecha){

		if($fecha != null) {

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla1 SET fecha_pago = :fecha_pago, fecha_proximo_pago = :fecha_proximo_pago, fecha_vencimiento = :fecha_vencimiento WHERE id_cliente = :id_cliente");
	
			// $stmt->bindParam(":id_inscripcion", $datos["id_inscripcion"], PDO::PARAM_STR);
			$stmt->bindParam(":fecha_pago", $datos["fecha_pago"], PDO::PARAM_STR);
			$stmt->bindParam(":fecha_proximo_pago", $datos["fecha_proximo_pago"], PDO::PARAM_STR);
			$stmt->bindParam(":fecha_vencimiento", $datos["fecha_vencimiento"], PDO::PARAM_STR);
			$stmt->bindParam(":id_cliente", $datos["id_cliente"], PDO::PARAM_INT);
			// $stmt->bindParam(":creado_por", $datos["creado_por"], PDO::PARAM_STR);
		} else {

			$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla1(id_cliente_inscripcion, pago_inscripcion, pago_total) VALUES(:id_cliente_inscripcion, :pago_inscripcion, :pago_total)");
	
			$stmt->bindParam(":id_cliente_inscripcion", $datos["id_cliente_inscripcion"], PDO::PARAM_INT);
			$stmt->bindParam(":pago_inscripcion", $datos["pago_inscripcion"], PDO::PARAM_STR);
			$stmt->bindParam(":pago_total", $datos["pago_total"], PDO::PARAM_STR);
			// $stmt->bindParam(":creado_por", $datos["creado_por"], PDO::PARAM_STR);
		} 

		if($stmt -> execute()){

			return true;
		
		}else{

			return $stmt->errorInfo();	

		}

		$stmt -> close();

		$stmt = null;

	}



	/*=============================================
	ACTUALIZAR PAGO CLIENTE  (CAMBIANDO INSCRIPCION)
	=============================================*/

	static public function mdlActualizarInscripcionPagoCliente($tabla1, $datos, $fecha){

		if($fecha != null) {

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla1 SET id_inscripcion = :id_inscripcion, fecha_pago = :fecha_pago, fecha_proximo_pago = :fecha_proximo_pago, fecha_vencimiento = :fecha_vencimiento, creado_por = :creado_por WHERE id_cliente = :id_cliente");
	
			$stmt->bindParam(":id_inscripcion", $datos["id_inscripcion"], PDO::PARAM_STR);
			$stmt->bindParam(":fecha_pago", $datos["fecha_pago"], PDO::PARAM_STR);
			$stmt->bindParam(":fecha_proximo_pago", $datos["fecha_proximo_pago"], PDO::PARAM_STR);
			$stmt->bindParam(":fecha_vencimiento", $datos["fecha_vencimiento"], PDO::PARAM_STR);
			$stmt->bindParam(":id_cliente", $datos["id_cliente"], PDO::PARAM_INT);
			$stmt->bindParam(":creado_por", $datos["creado_por"], PDO::PARAM_STR);
		} else {

			$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla1(id_cliente_inscripcion, pago_inscripcion, pago_total) VALUES(:id_cliente_inscripcion, :pago_inscripcion, :pago_total)");
	
			$stmt->bindParam(":id_cliente_inscripcion", $datos["id_cliente_inscripcion"], PDO::PARAM_INT);
			$stmt->bindParam(":pago_inscripcion", $datos["pago_inscripcion"], PDO::PARAM_STR);
			$stmt->bindParam(":pago_total", $datos["pago_total"], PDO::PARAM_STR);
			// $stmt->bindParam(":creado_por", $datos["creado_por"], PDO::PARAM_STR);
		} 

		if($stmt -> execute()){

			return true;
		
		}else{

			return $stmt->errorInfo();	

		}

		$stmt -> close();

		$stmt = null;

	}


	/*=============================================
		RANGO INSCRIPCIONES ACTIVAS DE CLIENTES
	=============================================*/
	static public function mdlRangoClienteInscripcionActiva($tabla, $rango){
	
		if($rango == null){

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.* FROM tbl_personas as p\n"
			. "LEFT JOIN $tabla as c ON p.id_personas = c.id_persona\n"
			. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			. "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			. "LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
			. "LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
			. "WHERE c.tipo_cliente = 'Gimnasio' AND ci.estado = 1\n"
			. "ORDER BY ci.id_cliente_inscripcion DESC"); 

			// $stmt->bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetchAll();

		} else {


			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.* FROM tbl_personas as p\n"
			. "LEFT JOIN $tabla as c ON p.id_personas = c.id_persona\n"
			. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			. "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			. "LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
			. "LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
			. "WHERE c.tipo_cliente = 'Gimnasio' AND ci.estado = 1 AND (nombre LIKE '%$rango%' OR apellidos LIKE '%$rango%' OR tipo_inscripcion LIKE '%$rango%' OR num_documento LIKE '%$rango%' OR fecha_proximo_pago LIKE '%$rango%' OR fecha_vencimiento LIKE '%$rango%')\n"
			. "ORDER BY ci.id_cliente_inscripcion DESC"); 

			// $stmt->bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt->bindParam(":nombre", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":apellidos", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":tipo_inscripcion", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":num_documento", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":fecha_proximo_pago", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":fecha_vencimiento", $rango, PDO::PARAM_STR);

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 	
	}


	/*=============================================
	RANGO INSCRIPCIONES DESACTIVADAS DE CLIENTES
	=============================================*/
	static public function mdlRangoClienteInscripcionDesactivado($tabla, $rango){
	
		if($rango == null){

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.* FROM tbl_personas as p\n"
			. "LEFT JOIN $tabla as c ON p.id_personas = c.id_persona\n"
			. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			. "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			. "LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
			. "LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
			. "WHERE c.tipo_cliente = 'Gimnasio' AND ci.estado = 0\n"
			. "ORDER BY ci.id_cliente_inscripcion DESC"); 

			// $stmt->bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetchAll();

		} else {


			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.* FROM tbl_personas as p\n"
			. "LEFT JOIN $tabla as c ON p.id_personas = c.id_persona\n"
			. "LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
			. "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
			. "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			. "LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
			. "LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
			. "WHERE c.tipo_cliente = 'Gimnasio' AND ci.estado = 0 AND (nombre LIKE '%$rango%' OR apellidos LIKE '%$rango%' OR tipo_inscripcion LIKE '%$rango%' OR num_documento LIKE '%$rango%' OR fecha_proximo_pago LIKE '%$rango%' OR fecha_vencimiento LIKE '%$rango%')\n"
			. "ORDER BY ci.id_cliente_inscripcion DESC"); 

			// $stmt->bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt->bindParam(":nombre", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":apellidos", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":tipo_inscripcion", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":num_documento", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":fecha_proximo_pago", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":fecha_vencimiento", $rango, PDO::PARAM_STR);

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 	
	}



	/*=============================================
		RANGO HISTORIAL PAGOS CLIENTES
    =============================================*/
	static public function mdlRangoHistorialPagosCliente($tabla, $rango){
			
		if($rango == null){
			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.*, pc.* FROM tbl_personas as p\n"

			. "	LEFT JOIN tbl_clientes as c ON p.id_personas = c.id_persona\n"
		
			. "	LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
		
			. "	LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
		
			. "	LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
		
			. "	LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
		
			. "	LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
		
			. "	LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
		
			. "	WHERE tipo_cliente = 'Gimnasio'\n"
		
			. "ORDER BY ci.id_cliente_inscripcion DESC");
	
			$stmt -> execute();
			return $stmt -> fetchAll();

		} else {
			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, d.tipo_documento, m.tipo_matricula, pd.tipo_descuento, i.*, ci.*, pc.* FROM tbl_personas as p\n"

			. "	LEFT JOIN tbl_clientes as c ON p.id_personas = c.id_persona\n"
		
			. "	LEFT JOIN tbl_documento as d ON p.id_documento = d.id_documento\n"
		
			. "	LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
		
			. "	LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
		
			. "	LEFT JOIN tbl_cliente_inscripcion as ci ON c.id_cliente = ci.id_cliente\n"
		
			. "	LEFT JOIN tbl_inscripcion as i ON ci.id_inscripcion = i.id_inscripcion\n"
		
			. "	LEFT JOIN tbl_pagos_cliente as pc ON ci.id_cliente_inscripcion = pc.id_cliente_inscripcion\n"
		
			. "	WHERE tipo_cliente = 'Gimnasio' AND num_documento LIKE '%$rango%' OR nombre LIKE '%$rango%' OR apellidos LIKE '%$rango%' OR fecha_de_pago LIKE '%$rango%'\n"
		
			. "ORDER BY ci.id_cliente_inscripcion DESC");

			$stmt->bindParam(":num_documento", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":nombre", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":apellidos", $rango, PDO::PARAM_STR);
			// $stmt->bindParam(":tipo_inscripcion", $rango, PDO::PARAM_STR);
			// $stmt->bindParam(":fecha_pago", $rango, PDO::PARAM_STR);
			// $stmt->bindParam(":fecha_ultimo_pago", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":fecha_de_pago", $rango, PDO::PARAM_STR);

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 		
	}


	/*=============================================
		RANGO CLIENTES TOTALES
    =============================================*/
	static public function mdlRangoCliente($tabla, $rango){
			
		if($rango == null){

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, m.* FROM tbl_personas as p\n"
            . "LEFT JOIN $tabla as c ON p.id_personas = c.id_persona\n"
            . "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
            // . "LEFT JOIN tbl_inscripcion as i ON c.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON c.id_cliente = pc.id_cliente\n"
		    . "WHERE p.tipo_persona = 'clientes'");
			
			$stmt -> execute();
			return $stmt -> fetchAll();

		} else {

			$stmt = Conexion::conectar()->prepare("SELECT p.*, c.*, m.* FROM tbl_personas as p\n"
            . "LEFT JOIN $tabla as c ON p.id_personas = c.id_persona\n"
            . "LEFT JOIN tbl_matricula as m ON c.id_matricula = m.id_matricula\n"
            // . "LEFT JOIN tbl_inscripcion as i ON c.id_inscripcion = i.id_inscripcion\n"
			// . "LEFT JOIN tbl_descuento as pd ON c.id_descuento = pd.id_descuento\n"
			// . "LEFT JOIN tbl_pagos_cliente as pc ON c.id_cliente = pc.id_cliente\n"
		    . "WHERE p.tipo_persona = 'clientes' AND nombre LIKE '%$rango%' OR apellidos LIKE '%$rango%' OR num_documento LIKE '%$rango%' OR correo LIKE '%$rango%' OR telefono LIKE '%$rango%' ");

			$stmt->bindParam(":nombre", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":apellidos", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":num_documento", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":correo", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":telefono", $rango, PDO::PARAM_STR);

            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 		
	}
}