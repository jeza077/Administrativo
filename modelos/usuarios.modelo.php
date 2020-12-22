<?php

require_once "conexion.php";

class ModeloUsuarios{

	static public function mdlMostrarSoloUsuarios($tabla1, $tabla2, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT p.*, u.*, d.tipo_documento, r.rol FROM $tabla1 AS p\n"
			. " INNER JOIN $tabla2 AS u ON p.id_personas = u.id_persona\n"
			. " INNER JOIN tbl_documento AS d ON p.id_documento = d.id_documento\n"
			. " INNER JOIN tbl_roles AS r ON u.id_rol = r.id_rol\n"
			. " WHERE $item = :$item");
			
			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetch();

		} else {

			$stmt = Conexion::conectar()->prepare("SELECT p.*, u.*, r.rol FROM $tabla1 AS p\n"
					. " INNER JOIN $tabla2 AS u ON p.id_personas = u.id_persona\n"
					. " INNER JOIN tbl_roles AS r ON u.id_rol = r.id_rol");
			$stmt -> execute();
			return $stmt -> fetchAll();

		}

		$stmt -> close();
		$stmt = null;	

	}

	/*=============================================
		MOSTRAR USUARIOS
	=============================================*/
	
	static public function mdlMostrarUsuarios($tabla1, $tabla2, $item, $valor){

		if($item != null){

			$stmt = Conexion::conectar()->prepare("SELECT p.*, u.*, tipo_documento, r.rol, m.objeto, rm.agregar, rm.eliminar, rm.actualizar, rm.consulta FROM $tabla1 AS p\n"
			. " LEFT JOIN $tabla2 AS u ON p.id_personas = u.id_persona\n"
			. " LEFT JOIN tbl_documento AS d ON p.id_documento = d.id_documento\n"
			. " LEFT JOIN tbl_roles AS r ON u.id_rol = r.id_rol\n"
			. " LEFT JOIN tbl_permisos AS rm ON r.id_rol = rm.id_rol\n"
			. " LEFT JOIN tbl_objetos AS m ON rm.id_objeto = m.id_objeto\n"
			. " WHERE $item = :$item");
			
			$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt -> execute();
			// return $stmt->errorInfo();
			return $stmt -> fetch();

		} else {

			$stmt = Conexion::conectar()->prepare("SELECT p.*, u.*, r.rol FROM $tabla1 AS p\n"
					. " INNER JOIN $tabla2 AS u ON p.id_personas = u.id_persona\n"
					. " INNER JOIN tbl_roles AS r ON u.id_rol = r.id_rol");
			$stmt -> execute();
			return $stmt -> fetchAll();

		}

		$stmt -> close();
		$stmt = null;	

	}

	/*=============================================
		MOSTRAR USUARIOS-ROLES-MODULO
	=============================================*/
	
	static public function mdlMostrarUsuarioModulo($item1, $item2, $valor1, $valor2){

		// $stmt = Conexion::conectar()->prepare("SELECT u.usuario, r.rol, m.nombre_modulo, m.link_modulo, m.icono, sm.sub_modulo, sm.link_sub_modulo FROM usuarios AS u\n"
		// 		. " INNER JOIN tbl_roles AS r ON u.id_rol = r.id\n"
		// 		. " INNER JOIN rol_modulos AS rm ON r.id=rm.rol_id_fk\n"
		// 		. " INNER JOIN modulos AS m ON rm.modulo_id_fk=m.id\n"
		// 		. " INNER JOIN rol_sub_modulo AS rsm ON r.id=rsm.id_rol_fk\n"
		// 		. " INNER JOIN sub_modulos AS sm ON rsm.id_sub_modulo_fk=sm.id AND sm.modulo_id_fk=m.id\n"
		// 		. " WHERE u.$item1 = :$item1 AND r.$item2 = :$item2\n"
		// 		. " ORDER BY m.id");
				
		$stmt = Conexion::conectar()->prepare("SELECT u.usuario, r.rol, m.objeto, m.link_objeto, m.icono, rm.agregar, rm.eliminar, rm.actualizar, rm.consulta FROM tbl_usuarios AS u\n"
		. " INNER JOIN tbl_roles AS r ON u.id_rol = r.id_rol\n"
		. " INNER JOIN tbl_permisos AS rm ON r.id_rol = rm.id_rol\n"
		. " INNER JOIN tbl_objetos AS m ON rm.id_objeto = m.id_objeto\n"
		. " WHERE u.$item1 = :$item1 AND r.$item2 = :$item2\n"
		. " ORDER BY m.id_objeto");

		$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_STR);
		$stmt -> bindParam(":".$item2, $valor2, PDO::PARAM_STR);
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
			INGRESAR USUARIOS EMPLEADOS	
	=============================================*/
	 
	static public function mdlIngresarUsuarioEmpleado($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(id_persona, usuario, password, foto, fecha_vencimiento, id_rol) VALUES (:id_persona, :usuario, :password, :foto, :fecha_vencimiento, :id_rol)");

		$stmt->bindParam(":id_persona", $datos["id_persona"], PDO::PARAM_INT);
		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_STR);
		$stmt->bindParam(":password", $datos["password"], PDO::PARAM_STR);
		$stmt->bindParam(":foto", $datos["foto"], PDO::PARAM_STR);
		$stmt->bindParam(":fecha_vencimiento", $datos["fecha_vencimiento"], PDO::PARAM_STR);
		$stmt->bindParam(":id_rol", $datos["rol"], PDO::PARAM_INT);

		// return $stmt->execute();
		if($stmt->execute()){

			return true;	

		}else{

			return false;
		
		}

		$stmt->close();
		
		$stmt = null;

	}

	/*=============================================
	INGRESAR PREGUNTAS DE SEGURIDAD USUARIO-EMPLEADO	
	=============================================*/
	 
	static public function mdlIngresarPreguntaUsuario($tabla, $datos){

		$preguntas = $datos['idPregunta'];
		$respuestas = $datos['respuesta'];

		while(true) {

			$fin = false;
			
			$pregunta = current($preguntas);
			$respuesta = current($respuestas);

			$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(id_usuario, id_preguntas, respuesta) 
												   VALUES (:id_usuario, :id_preguntas, :respuesta)");
	
			$stmt->bindParam(":id_usuario", $datos["idUsuario"], PDO::PARAM_INT);
			$stmt->bindParam(":id_preguntas", $pregunta, PDO::PARAM_INT);
			$stmt->bindParam(":respuesta", $respuesta, PDO::PARAM_STR);
			
			$stmt->execute();

			$pregunta = next($preguntas);
			$respuesta = next($respuestas);
			

			if($pregunta === false && $respuesta === false){
				$fin = true;
				break;
			}
		}

		if($fin == true){

			return true;	

		}else{

			return false;
		
		}

		$stmt->close();
		
		$stmt = null;

	}


	/*=============================================
				EDITAR USUARIOS	
	=============================================*/	 
	static public function mdlEditarUsuario($tabla, $datos){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET usuario = :usuario, foto = :foto, password = :password, id_rol = :id_rol WHERE id_persona = :id_persona");

		$stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_STR);
		$stmt->bindParam(":foto", $datos["foto"], PDO::PARAM_STR);
		$stmt->bindParam(":password", $datos["password"], PDO::PARAM_STR);
		// $stmt->bindParam(":fecha_vencimiento", $datos["fecha_vencimiento"], PDO::PARAM_STR);
		$stmt->bindParam(":id_rol", $datos["rol"], PDO::PARAM_INT);
		$stmt->bindParam(":id_persona", $datos["id_persona"], PDO::PARAM_INT);

		if($stmt->execute()){

			return true;

		}else{

			return false;
		
		}

		$stmt->close();
		
		$stmt = null;

	}


	/*=============================================
	ACTUALIZAR USUARIOS	(tambien contraseña por preguntas)
	=============================================*/
	static public function mdlActualizarUsuario($tabla, $item1, $valor1, $item2, $valor2, $item3, $valor3, $item4, $valor4){

		if($item4 != null) {

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1, $item2 = :$item2, $item3 = :$item3 WHERE $item4 = :$item4");
	
			$stmt->bindParam(":".$item1, $valor1, PDO::PARAM_STR);
			$stmt->bindParam(":".$item2, $valor2, PDO::PARAM_STR);
			$stmt->bindParam(":".$item3, $valor3, PDO::PARAM_STR);
			$stmt->bindParam(":".$item4, $valor4, PDO::PARAM_STR);

			if($stmt->execute()){
		
					return true;	
		
				}else{
		
					return false;
				
				}

		} else if($item3 != null && $item4 == null) {

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1, $item2 = :$item2 WHERE $item3 = :$item3");
	
			$stmt->bindParam(":".$item1, $valor1, PDO::PARAM_STR);
			$stmt->bindParam(":".$item2, $valor2, PDO::PARAM_STR);
			$stmt->bindParam(":".$item3, $valor3, PDO::PARAM_STR);
			if($stmt->execute()){
		
					return true;	
		
				}else{
		
					return false;
				
				}

		} else {
			
			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1 WHERE $item2 = :$item2");
	
			$stmt->bindParam(":".$item1, $valor1, PDO::PARAM_STR);
			$stmt->bindParam(":".$item2, $valor2, PDO::PARAM_STR);
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
		CAMBIAR CONTRASEÑA POR CODIGO-CORREO
	=============================================*/

	static public function mdlActualizarUsuarioPorCodigo($tabla, $item1, $valor1, $item2, $valor2, $item3, $valor3, $item4, $valor4){
	
		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1, $item2 = :$item2, token = NULL, fecha_recuperacion = NULL, $item3 = :$item3 WHERE $item4 = :$item4");

		$stmt->bindParam(":".$item1, $valor1, PDO::PARAM_STR);
		$stmt->bindParam(":".$item2, $valor2, PDO::PARAM_INT);
		$stmt->bindParam(":".$item3, $valor3, PDO::PARAM_STR);
		$stmt->bindParam(":".$item4, $valor4, PDO::PARAM_INT);
		if($stmt->execute()){

			return true;	

		}else{

			return false;
		
		}
		


		$stmt->close();
		
		$stmt = null;
	}

	/*=============================================
                MOSTRAR PREGUNTAS
	=============================================*/	

	static public function mdlMostrarPreguntas($item1, $valor1, $item2, $valor2, $item3, $valor3){

		if($item2 != null){

			$stmt = Conexion::conectar()->prepare("SELECT u.usuario, pr.pregunta, pu.id_preguntas, pu.respuesta FROM tbl_usuarios AS u"
				. " INNER JOIN tbl_preguntas_usuarios AS pu ON u.id_usuario = pu.id_usuario\n"
				. " INNER JOIN tbl_preguntas AS pr ON pu.id_preguntas = pr.id_preguntas\n"
				. "	WHERE u.$item1 = :$item1 AND pu.$item2 = :$item2 AND pu.$item3 = :$item3");
				
			$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_STR);
			$stmt -> bindParam(":".$item2, $valor2, PDO::PARAM_INT);
			$stmt -> bindParam(":".$item3, $valor3, PDO::PARAM_STR);
			$stmt -> execute();
			return $stmt -> fetchAll();
		
		} else {
			
			$stmt = Conexion::conectar()->prepare("SELECT u.usuario, pr.pregunta, pu.* FROM tbl_usuarios AS u"
				. " INNER JOIN tbl_preguntas_usuarios AS pu ON u.id_usuario = pu.id_usuario\n"
				. " INNER JOIN tbl_preguntas AS pr ON pu.id_preguntas = pr.id_preguntas\n"
				. "	WHERE u.$item1 = :$item1");
				
			$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_INT);
			$stmt -> execute();
			return $stmt -> fetchAll();
		
		}

		$stmt -> close();
		$stmt = null;	
	}	


	/*=============================================
	CAMBIAR PREGUNTAS/RESPUESTAS POR DESDE PERFIL/AJUSTES DEL USUARIO	
	=============================================*/
	 
	static public function mdlActualizarPreguntaUsuario($tabla, $datos){

		$preguntas = $datos['idPregunta'];
		$respuestas = $datos['respuesta'];
		$idPreguntasUsuarios = $datos['id_preguntas_usuarios'];

		// return $idPreguntasUsuarios;
		// PROBLEMA CON GUARDAR. HACERLO CON AJAX Y GUARDAR UNO POR UNO 

		while(true) {

			$fin = false;
			
			$pregunta = current($preguntas);
			$respuesta = current($respuestas);
			$idPreguntaUsuario = current($idPreguntasUsuarios);

			// return $respuesta;


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET id_preguntas = :id_preguntas, respuesta = :respuesta WHERE id_usuario = :id_usuario AND id_preguntas_usuarios = :id_preguntas_usuarios");
	
			$stmt->bindParam(":id_preguntas", $pregunta, PDO::PARAM_INT);
			$stmt->bindParam(":respuesta", $respuesta, PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["idUsuario"], PDO::PARAM_INT);
			$stmt->bindParam(":id_preguntas_usuarios", $idPreguntaUsuario, PDO::PARAM_INT);
			
			$stmt->execute();

			// return $stmt;
			$pregunta = next($preguntas);
			$respuesta = next($respuestas);
			$idPreguntaUsuario = next($idPreguntasUsuarios);
			

			if($pregunta === false && $respuesta === false){
				$fin = true;
				break;
			}
		}

		if($fin == true){

			return true;	

		}else{

			return false;
		
		}

		$stmt->close();
		
		$stmt = null;

	}

	    
	/*=============================================
		MOSTRAR PARAMETROS
    =============================================*/
    
    static public function mdlMostrarParametros($tabla, $item, $valor){
		if($item != null){
			$stmt = Conexion::conectar()->prepare("SELECT parametro, valor FROM $tabla WHERE $item = :$item");
			$stmt->bindParam(":".$item, $valor, PDO::PARAM_STR);
			$stmt->execute();
			return $stmt->fetch();
		} else {
			$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");
			$stmt->execute();
			return $stmt->fetchAll();
		}
        
		$stmt -> close();
		$stmt = null;	
	}
	
	/*============================================
		INSERTAR BITACORA
	==============================================*/
	static public function mdlInsertarBitacora($tabla, $fecha, $usuario, $objeto, $accion, $descripcion){

		$stmt = Conexion::conectar()->prepare("INSERT INTO $tabla(fecha, id_usuario, id_objeto, accion, descripcion) VALUES ('$fecha', $usuario, $objeto, '$accion', '$descripcion')");

		if($stmt->execute()){

			return "ok";

		}else{

			return "error";
		
		}

		$stmt->close();
		$stmt = null;
	}
		
	/*=============================================
		MOSTRAR BITACORA
	=============================================*/
		
	static public function mdlMostrarBitacora($tabla1, $item, $valor){
	
			if($item != null){
	
				$stmt = Conexion::conectar()->prepare("SELECT * from $tabla1 where $item = :$item");		
				$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);
				$stmt -> execute();
				return $stmt -> fetch();
	
			} else {
	
				$stmt = Conexion::conectar()->prepare(" SELECT b.id_bitacora, u.usuario, o.objeto,b.accion,b.descripcion,b.fecha FROM tbl_bitacora as b inner join tbl_usuarios as u on b.id_usuario=u.id_usuario inner join tbl_objetos as o on b.id_objeto =o.id_objeto order by b.fecha asc");
				$stmt -> execute();
				return $stmt -> fetchAll();
	
			}

		$stmt -> close();
		$stmt = null;	



	}

	/*=============================================
	ACTUALIZAR USUARIO poleth
	=============================================*/

	static public function mdlActualizarUsuarioSimple($tabla, $item1, $valor1, $item2, $valor2){

		$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1 WHERE $item2 = :$item2");

		$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_STR);
		$stmt -> bindParam(":".$item2, $valor2, PDO::PARAM_STR);

		if($stmt -> execute()){

			return "ok";
		
		}else{

			return "error";	

		}

		$stmt -> close();

		$stmt = null;

	}


	/*=============================================
			RANGO DINAMICO
	=============================================*/
	static public function mdlRango($tabla, $rango){
	
		if($rango == null){

			$stmt = Conexion::conectar() ->prepare("SELECT p.*, u.*, d.tipo_documento, r.rol FROM tbl_personas AS p\n"
			. " INNER JOIN $tabla AS u ON p.id_personas = u.id_persona\n"
			. " INNER JOIN tbl_documento AS d ON p.id_documento = d.id_documento\n"
			. " INNER JOIN tbl_roles AS r ON u.id_rol = r.id_rol\n"
			. "	ORDER BY id_usuario ASC");
            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} else {

			$stmt = Conexion::conectar() ->prepare("SELECT p.*, u.*, d.tipo_documento, r.rol FROM tbl_personas AS p\n"
			. " INNER JOIN $tabla AS u ON p.id_personas = u.id_persona\n"
			. " INNER JOIN tbl_documento AS d ON p.id_documento = d.id_documento\n"
			. " INNER JOIN tbl_roles AS r ON u.id_rol = r.id_rol\n"
			. " WHERE  nombre LIKE '%$rango%' OR usuario LIKE '%$rango%' OR rol LIKE '%$rango%'");
			$stmt->bindParam(":nombre", $rango, PDO::PARAM_STR);
			$stmt->bindParam(":usuario", $rango, PDO::PARAM_STR);
            $stmt->bindParam(":rol", $rango, PDO::PARAM_STR);
        
            $stmt-> execute();
			return $stmt ->fetchAll();
			
		} 	
	}

}
