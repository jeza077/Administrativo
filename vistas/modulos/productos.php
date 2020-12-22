
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Productos</h1>
          </div>
          <div class="col-sm-6">
          <button class="btn btn-orange float-right"  data-toggle="modal" data-target="#modalAgregarInventario">
              Nuevo Producto        
          </button>
          <!-- <button class="btn btn-danger btnExportarProductos float-right mr-3">
              Exportar PDF          
            </button>  -->
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

      // var_dump($_SESSION['perm']);

      // foreach ($permisos_pantalla as $key => $value) {
      //   echo $key;
      // }
      
      $descripcionEvento = " Consulto la pantalla de Productos";
      $accion = "consulta";

      $bitacoraConsulta = ControladorMantenimientos::ctrBitacoraInsertar($_SESSION["id_usuario"], 4,$accion, $descripcionEvento);

   
  
    ?>


      <!-- Default box -->
      <div class="card">

      <div class="card-body">
            <!-- CUERPPO INVENTARIO -->
                <table class="table table-striped table-bordered tablas text-center">
                    <thead>
                    <tr>
                    <th scope="col">#</th>
                    <th scope="col">Codigo</th>
                    <th scope="col">Foto</th>
                    <!-- <th scope="col">Tipo inventario</th> -->
                    <th scope="col">Nombre</th>
                    <!-- <th scope="col">Stock</th> -->
                    <th scope="col">Precio venta</th>
                    <!-- <th scope="col">Precio compra</th> -->
                    <th scope="col">Producto min.</th>
                    <th scope="col">Producto max.</th>
                    <th scope="col">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                <?php
                    $tabla = "tbl_inventario";
                    $item = "tipo_producto";
                    $valor = "Productos";
                    $order = null;
                    $inventarios=ControladorInventario::ctrMostrarInventario($tabla, $item, $valor,$order);
                    // echo"<pre>";
                    // var_dump($inventarios);
                    // echo"</pre>";
                    foreach ($inventarios as $key => $value) {
                      echo '
                          <tr>
                              <td scope="row">'.($key+1).'</td>
                              <td>'.$value["codigo"].'</td>';

                                  if($value["foto"] != ""){
                                    echo '<td><img src="'.$value["foto"].'" class="img-thumbnail" width="40px"></td>';
                                  } else {
                                    echo '<td><img src="vistas/img/usuarios/default/default2.jpg" class="img-thumbnail" width="40px"></td>';
                                  }
                                    echo '<td>'.$value["nombre_producto"].'</td>
         
                              
                             
                              <td>'.$value["precio_venta"].'</td>
                             
                              <td>'.$value["producto_minimo"].'</td>
                              <td>'.$value["producto_maximo"].'</td>     
                              <td>
                              <button class="btn btn-warning btnEditarInventario" idInventario="'.$value["id_inventario"].'" data-toggle="modal" data-target="#modalEditarProducto"><i class="fas fa-pencil-alt" style="color:#fff"></i></button>
                              <button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>
                              </td>
                          </tr>
                      ';
                      }
                ?>
                </tbody>
            </table>
            <!-- -------------------------- -->
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
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Nuevo Producto</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
          <div class="modal-body">
            <form role="form" method="post" class="formulario" enctype="multipart/form-data">
    
              <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="">Tipo<?php echo $i?></label>
                  <select class="form-control select2 "  id="nuevoTipoProducto" style="width: 100%;" name="nuevoTipoProducto">
                      
                      
                      <option selected="selected">Seleccionar...</option>
                      <?php 
                          $tabla = "tbl_tipo_producto";
                          $item = null;
                          $valor = null;
                          $preguntas = ControladorInventario::ctrMostrarTipoProducto($tabla, $item, $valor);
                          foreach ($preguntas as $key => $value) { ?>
                              <option value="<?php echo $value['id_tipo_producto']?>"><?php echo $value['tipo_producto']?></option>        
                          <?php 
                          }
                      ?>
                  </select>
                </div>
                <div class="form-group col-md-4">
                  <label for="nombreproducto">Codigo</label>
                  <input type="text" readonly class="form-control nuevoCodigo" id="nuevoCodigo" name="nuevoCodigo" placeholder="Codigo producto" required>
                </div>
                <div class="form-group col-md-4">
                  <label for="nombreproducto">Nombre Producto</label>
                  <html>
                  <input type="text" class="form-control mayus nombre_producto" id="nuevoNombreProducto" name="nuevoNombreProducto" placeholder="Ingrese Producto" required>
                </div>
              </div>
  
              <div class="form-row">
                <div class="form-group col-md-4">
                  <label for="precio">Precio de venta</label>
                  <input type="text" class="form-control precio" id="nuevoPrecio" name="nuevoPrecio" placeholder="Ingrese Precio"  required>
                </div>
                  <!-- <div class="form-group col-md-4">
                    <label for="precio">Precio de compra</label>
                    <input type="text" class="form-control precio" id="nuevoPrecioCompra" name="nuevoPrecioCompra" placeholder="Ingrese Precio"  required>
                  </div> -->
                <div class="form-group col-md-4">
                  <label for="productominimo">Producto Minimo</label>
                  <input type="number" class="form-control precio" id="nuevoProductoMinimo" name="nuevoProductoMinimo" placeholder="Cantidad Minima" min="0" required class="fa fa-arrow-up"></i></span>
                </div>
                <div class="form-group col-md-4">
                  <label for="productomaximo">Producto Maximo</label>
                  <input type="number" class="form-control precio" id="nuevoProductoMaximo" name="nuevoProductoMaximo" placeholder="Cantidad Maximo" min="0" required class="fa fa-arrow-up"></i></span>
                </div>
              </div>


              <div class="form-row">

                <div class="form-group col-md-12">
                    <label for="exampleInputFile">Foto</label>
                    <div class="input-group">
                      <img class="img-thumbnail previsualizar mr-2" src="vistas/img/usuarios/default/anonymous.png" alt="imagen-del-usuario" width="100px">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input nuevaFotoProducto" id="exampleInputFile" name="nuevaFotoProducto">
                        <label class="custom-file-label" for="exampleInputFile">Escoger foto</label>
                      </div>
                    </div>
                        <p class="p-foto help-block ml-4">Peso máximo de la foto 2 MB</p>
                  </div>
              </div>

              <div class="form-group mt-4 float-right">
                <button type="" class="btn btn-primary">Guardar</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Salir</button>
                </div>
            

                <?php
                $tipostock = 'Productos';
                $pantalla = 'productos';
                $AgregarInventario = new ControladorInventario();
                $AgregarInventario->ctrCrearStock($tipostock, $pantalla);
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

  <div class="modal fade" id="modalEditarProducto" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Editar Producto</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form role="form" method="post" class="formulario" enctype="multipart/form-data">
            
            <div class="form-row">
              
              <div class="form-group col-md-4">
                <label for="nombreproducto">Codigo</label>
                <input type="text" value="" class="form-control" readonly id="editarCodigo" name="editarCodigo"  required>
                <input type="hidden" name="editarTipoProducto" id="editarTipoProducto">
              </div>
              
              <div class="form-group col-md-4">
                <label for="nombreproducto">Nombre Producto</label>
                <html>
                <input type="text" value="" class="form-control mayus editar_Nombre_Producto"  name="editarNombreProducto" id="editarNombreProducto" required>
              </div>
              
              <div class="form-group col-md-4">
                <label for="stock">Cantidad en stock</label>
                <input type="number" value="" class="form-control" readonly name="editarStock" id="editarStock"  min="0" required class="fa fa-arrow-up"></i></span>
              </div>
            </div>

                <div class="form-row">
                  <div class="form-group col-md-4">
                    <label for="precio">Precio Venta</label>
                    <input type="text" value="" class="form-control editar_Precio" name="editarPrecio" id="editarPrecio" required>
                  </div>
                  <!-- <div class="form-group col-md-4">
                  <label for="precio">Precio compra</label>
                  <input type="text" value="" class="form-control editar_Precio" readonly name="editarPrecioCompra" id="editarPrecioCompra" required>
                  </div> -->
                  <div class="form-group col-md-4">
                    <label for="productominimo">Producto Minimo</label>
                    <input type="number" value="" class="form-control" name="editarProductoMinimo" id="editarProductoMinimo" min="0" required class="fa fa-arrow-up"></i></span>
                  </div>
                  <div class="form-group col-md-4">
                    <label for="productomaximo">Producto Maximo</label>
                    <input type="number" value="" class="form-control" name="editarProductoMaximo" id="editarProductoMaximo" min="0" required class="fa fa-arrow-up"></i></span>
                  </div>
                </div>

                <div class="form-row">

                  <div class="form-group col-md-12">
                      <label for="exampleInputFile">Foto</label>
                      <div class="input-group">
                      <img class="img-thumbnail previsualizar mr-2" src="vistas/img/usuarios/default/anonymous.png" alt="imagen-del-usuario" width="100px">
                      <input type="hidden" name="imagenActual" id=imagenActual>
                      <div class="custom-file">
                          <input type="file" class="custom-file-input nuevaFotoProducto" id="exampleInputFile" name="editarFotoProducto">
                          <label class="custom-file-label" for="exampleInputFile">Escoger foto</label>
                      </div>
                      </div>
                          <p class="p-foto help-block ml-4">Peso máximo de la foto 2 MB</p>
                  </div>
                </div>

                <div class="form-group mt-4 float-right">
                    <button type="" class="btn btn-primary">Guardar</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Salir</button>
                </div>
            
                <?php
                $tipostock = 'Productos';
                $pantalla = 'productos';
                $EditarInventario = new ControladorInventario();
                $EditarInventario->ctrEditarStock($tipostock, $pantalla);
                ?>
              <!-- 2tab --> 
          </form>
        </div>
      </div>
    </div>
  </div>

