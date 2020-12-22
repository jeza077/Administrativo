
 
 <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Registrar Personas</h1>
          </div>
          <!-- <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Registra personas</a></li>
              <li class="breadcrumb-item active">Tablero</li>
            </ol>
          </div> -->
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
    
      <form role="form" method="post" class="formulario" enctype="multipart/form-data">
        <!-- Default box -->
        <div class="card agregar-persona">
             
          <div class="card-body contenedor agregarPersona">
            <div class="form-row">
              <div class="form-group col-md-3">
                <label for="tipoDocumento">Tipo de documento <?php echo $i?></label>
                <select class="form-control select2" name="nuevoTipoDocumento">
                    <option selected="selected">Seleccionar...</option>
                    <?php 
                        $tabla = "tbl_documento";
                        $item = null;
                        $valor = null;

                        $preguntas = ControladorUsuarios::ctrMostrar($tabla, $item, $valor);

                        foreach ($preguntas as $key => $value) { ?>
                            <option value="<?php echo $value['id_documento']?>"><?php echo $value['tipo_documento']?></option>        
                        <?php 
                        }
                    ?>
                </select>
              </div>
              <div class="form-group col-md-3">
                <label for="identidad">Numero de documento</label>
                <input type="text" class="form-control id" id="numDocumento" name="nuevoNumeroDocumento" placeholder="Ingrese Identidad" required>
              </div>
              <div class="form-group col-md-3">
                <label for="nombre">Nombre</label>
                <input type="text" class="form-control nombre" id="nombre" name="nuevoNombre" placeholder="Ingrese Nombre" required>
              </div>
              <div class="form-group col-md-3">
                <label for="apellido">Apellido</label>
                <input type="text" class="form-control nuevoApellido" id="apellido" name="nuevoApellido" placeholder="Ingrese Apellidos" required>
              </div>
            </div>
            
            <div class="form-row">
              <div class="form-group col-md-4">
                <label for="inputEmail4">Email</label>
                <input type="email" class="form-control email" id="inputEmail4" name="nuevoEmail" placeholder="Ingrese Email" required>
              </div>
              <div class="form-group col-md-4">
                <label>Teléfono</label>
                <input type="text" class="form-control" id="inputTelefono" data-inputmask='"mask": "(504) 9999-9999"' data-mask  name="nuevoTelefono" placeholder="Ingrese Telefono" required>
              </div>
              <div class="form-group col-md-4">
                <label>Fecha de nacimiento</label>
                  <input type="text" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="yyyy/mm/dd" data-mask  name="nuevaFechaNacimiento" placeholder="Ingrese Fecha de Nacimiento" required>
              </div>
            </div>

            <div class="form-group">
              <label for="inputAddress">Dirección</label>
              <input type="text" class="form-control" id="inputAddress" name="nuevaDireccion" placeholder="Col. Alameda, calle #2..." required>
            </div>

            <div class="form-row">
              <div class="form-group col-md-4">
                <label>Sexo</label>
                <select class="form-control select2" name="nuevoSexo" style="width: 100%;" required>
                  <option selected="selected">Seleccionar...</option>
                  <option value="M">Masculino</option>
                  <option value="F">Femenino</option>
                </select>
              </div>
              <div class="form-group col-md-4">
                <label>Tipo de persona</label>
                <select class="form-control select2" style="width: 100%;" id="tipoPersona" name="nuevoTipoPersona" required>
                  <option selected="selected">Seleccionar...</option>
                  <option value="empleado">Empleado</option>
                  <option value="cliente">Cliente</option>
                </select>
              </div>
            </div>
            <div class="form-group" id="btnSiguiente">

            </div>

          </div>

          <div class="card-body contenedor agregarEmpleado">
            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="">Usuario</label>
                <input type="text" class="form-control nuevoUsuario" onKeyUp="this.value=this.value.toUpperCase();" name="nuevoUsuario" placeholder="Ingrese Usuario">
              </div>
              <div class="form-group col-md-6">
                <label>Rol</label>
                <select class="form-control select2" style="width: 100%;" name="nuevoRol">
                  <option selected="selected">Seleccionar...</option>
                    <?php 
                        $tabla = "tbl_roles";
                        $item = null;
                        $valor = null;

                        $roles = ControladorUsuarios::ctrMostrar($tabla, $item, $valor);

                        foreach ($roles as $key => $value) {
                          echo '<option value="'.$value["id_rol"].'">'.$value["rol"].'</option>';
                        }
                    ?>
                </select>
              </div>
            </div>  

            <div class="form-row">
              <div class="form-group col-md-6">
                <label for="inputPassword4">Contraseña Generada</label>
                <input type="text" class="form-control passwordGenerado" id="inputPassword4" name="nuevoPassword" placeholder="">
              </div>
              <div class="col-md-6">
                <!-- <label for="inputPassword4">Generar Contraseña</label> -->
                <a href="javascript:void(0);"  class="btn btn-block btn-orange" id="generarPassword" style="margin-top:2em">Generar contraseña</a>
              </div>
            </div>
            
            <div class="form-group col-md-12">
              <label for="exampleInputFile">Foto</label>
              <div class="input-group">
                <div class="custom-file">
                  <input type="file" class="custom-file-input nuevaFoto" id="exampleInputFile" name="nuevaFoto">
                  <label class="custom-file-label" for="exampleInputFile">Escoger foto</label>
                </div>
                  <img class="img-thumbnail previsualizar ml-2" src="vistas/img/usuarios/default/anonymous.png" alt="imagen-del-usuario" width="100px">
              </div>
                  <p class="p-foto help-block">Peso máximo de la foto 2 MB</p>
                  <!-- <img src="vistas/img/usuarios/default/anonymous.png" class= "img-thumbnail" width="100px"> -->
            </div>
          
            <div class="form-group">
              <a href="#" class="btn btn-danger float-left" onclick="toggleUser();">Atras</a>
              <button type="submit" class="btn btn-primary btnGuardar float-right">Guardar</button>

            </div>
          </div>

          <div class="card-body contenedor agregarCliente">
          
            <div class="form-group">
              <a href="#" class="btn btn-danger float-left" onclick="toggleCliente();">Atras</a>
              <button type="submit" class="btn btn-primary float-right">Guardar</button>
            </div>
          </div>
          
        </div>
        <!-- /.card -->
        <?php
          $tipoPersona = null;
          $pantalla = 'usuarios';
          $ingresarPersona = new ControladorPersonas();
          $ingresarPersona->ctrCrearPersona($tipoPersona, $pantalla);
        ?>
      </form>

    </section>
    
 <?php
		       $descripcionEvento = "Nuevo Usuario";
	         $accion = "Nuevo";
  
	         $bitacoraConsulta = ControladorMantenimientos::ctrBitacoraInsertar($_SESSION["id_usuario"], 6,$accion, $descripcionEvento);
	  
	      ?>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


