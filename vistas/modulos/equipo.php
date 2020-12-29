
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Equipo</h1>
          </div>
          <div class="col-sm-6">
          <button class="btn btn-orange float-right"  data-toggle="modal" data-target="#modalAgregarInventario">
            Nuevo Equipo         
          </button>
          <!-- <button class="btn btn-danger btnExportarEquipo float-right mr-3">
              Exportar PDF          
            </button> -->
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>  

 <!-- Main content -->
    <section class="content">
      <?php 
        $permisoAgregar = $_SESSION['permisos']['Usuarios']['agregar'];
        $permisoEliminar = $_SESSION['permisos']['Usuarios']['eliminar'];
        $permisoActualizar = $_SESSION['permisos']['Usuarios']['actualizar'];
        $permisoConsulta = $_SESSION['permisos']['Usuarios']['consulta'];

      ?>


      <!-- Default box -->
      <div class="card">

        <div class="card-body">
          <table class="table table-striped table-bordered tablas text-center">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">Codigo</th>
                <th scope="col">Foto</th>
                <th scope="col">Tipo producto</th>
                <th scope="col">Nombre</th>
                <th scope="col">Stock</th>
                <th scope="col">Acciones</th>
                </tr>
            </thead>
            <tbody>
              <?php 
                  $tabla = "tbl_inventario";
                  $item = "tipo_producto";
                  $valor = "bodega";
                  $order = null;
                  $inventarios=ControladorInventario::ctrMostrarInventario($tabla, $item, $valor,$order);
                  // var_dump($inventarios);
                  foreach ($inventarios as $key => $value) {
                  echo '
                          <tr>
                          <td scope="row">'.($key+1).'</td>
                          <td>'.$value["codigo"].'</td>';

                          if($value["foto"] != ""){
                            echo '<td><img src="'.$value["foto"].'" class="img-thumbnail" width="40px"></td>';
                          } else {
                            echo '<td><img src="vistas/img/productos/default/product.png" class="img-thumbnail" width="40px"></td>';
                          }

                          echo '<td>'.$value["tipo_producto"].'</td>
                          <td>'.$value["nombre_producto"].'</td>
                          <td>'.$value["stock"].'</td>';
                      echo '     
                          <td>
                          <button class="btn btn-warning btnEditarEquipo" idInventario="'.$value["id_inventario"].'" data-toggle="modal" data-target="#modalEditarBodega"><i class="fas fa-pencil-alt" style="color:#fff"></i></button>
                          <button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
                          </td>
                      </tr>
                  ';
                  }
              ?>
            </tbody>
          </table>
    
        </div> 

      </div>
      <!-- /.card -->

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->


  <!-- =======================================
           MODAL AGREGAR INVENTARIO
  ======================================----->
  <div class="modal fade" id="modalAgregarInventario" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Nuevo Equipo</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form role="form" method="post" class="formulario" enctype="multipart/form-data">

            <div class="form-row">
              <div class="form-group col-md-12">
                <label for="nombreproducto">Codigo</label>
                  <?php
                    $tabla = "tbl_inventario";
                    $item = "tipo_producto";
                    $valor = "bodega";
                    $order = null;
                    $equipo = ControladorInventario::ctrMostrarInventario($tabla, $item, $valor,$order);
                  
                    // var_dump($equipo);
                    if (!$equipo){
                      echo '<input type="text" readonly class="form-control" name="nuevoCodigo" value="100" required>';

                    } else {

                      foreach ($equipo as $key =>$value) {
                      
                      }
                      $codigo = $value["codigo"] + 1;
                      echo '<input type="text" readonly class="form-control" value= '. $codigo.' name="nuevoCodigo" required>';
                      echo '<input type="hidden" value='.$value["id_tipo_producto"].' name="nuevoTipoProducto">';
                    }
                  ?> 
                <!-- <input type="text" readonly class="form-control nuevoCodigo" name="nuevoCodigo" placeholder="Codigo producto" required> -->
              </div>
            </div> 

            <div class="form-group col-md-12">
              <label for="nombreproducto">Nombre Producto</label>
              <html>
              <input type="text" class="form-control mayus nombre_producto" name="nuevoNombreProducto" placeholder="Ingrese Producto" required>
            </div>
            <div class="form-group col-md-12">
              <label for="stock">Cantidad en stock</label>
              <input type="number" class="form-control stock" name="nuevoStock" placeholder="Cantidad en stock" min="0" required class="fa fa-arrow-up"></i></span>
            </div>

            <div class="form-row">
              <div class="form-group col-md-12">
                  <label for="exampleInputFile">Foto</label>
                  <div class="input-group">
                    <img class="img-thumbnail previsualizar mr-2" src="vistas/img/productos/default/product.png" alt="imagen-del-usuario" width="100px">
                    <div class="custom-file">
                      <input type="file" class="custom-file-input nuevaFoto" name="nuevaFotoBodega">
                      <label class="custom-file-label">Escoger foto</label>
                    </div>
                  </div>
                      <p class="p-foto help-block ml-4">Peso máximo de la foto 2 MB</p>
                </div>
            </div>

            <div class="form-group mt-3 float-right">
              <button type="" class="btn btn-primary">Guardar</button>
              <button type="button" class="btn btn-danger" data-dismiss="modal">Salir</button>
              </div>
          

              <?php
              $tipostock = 'Bodega';
              $pantalla = 'equipo';
              $AgregarInventario = new ControladorInventario();
              $AgregarInventario->ctrCrearBodega($tipostock, $pantalla);
              ?>
            </div>

          </form>
        </div>
      </div>
    </div>
  </div>

<!-- =======================================
           MODAL EDITAR
  ======================================----->

  <div class="modal fade" id="modalEditarBodega" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Editar</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form role="form" method="post" class="formulario" enctype="multipart/form-data">
            
            <div class="form-group col-12">
              <label for="nombreEquipo">Codigo</label>
              <input type="text" value="" class="form-control" readonly id="editarCodigoE" name="editarCodigoE"  required>
              <input type="hidden" name="editarTipoEquipo" id="editarTipoEquipo">
            </div>
            <div class="form-group col-12">
              <label for="nombreEquipo">Nombre Equipo</label>
              <html>
              <input type="text" value="" class="form-control mayus" name="editarNombreEquipo" id="editarNombreEquipo" required>
            </div>
            <div class="form-group col-12">
              <label for="stock">Cantidad en stock</label>
              <input type="number" value="" class="form-control" name="editarStockEquipo" id="editarStockEquipo"  min="0" required class="fa fa-arrow-up"></i></span>
            </div>

            <div class="form-group col-12">
                <label for="exampleInputFile">Foto</label>
                <div class="input-group">
                <img class="img-thumbnail previsualizar mr-2" src="" alt="imagen-del-producto" width="100px">
                <input type="hidden" name="imagenActual" id=imagenActual>
                <div class="custom-file">
                    <input type="file" class="custom-file-input nuevaFoto" name="editarFotoEquipo">
                    <label class="custom-file-label">Escoger foto</label>
                </div>
                </div>
                    <p class="p-foto help-block ml-4">Peso máximo de la foto 2 MB</p>
            </div>

            <div class="form-group mt-4 float-right">
                <button type="" class="btn btn-primary">Guardar</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Salir</button>
            </div>
        
            <?php
              $tipostock = 'Equipo';
              $pantalla = 'equipo';
              $EditarInventario = new ControladorInventario();
              $EditarInventario->ctrEditarEquipo($tipostock, $pantalla);
            ?>
            
          </form>
        </div>
      </div>
    </div>
  </div>