
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Clientes Inscripciones</h1>
          </div>
          <div class="col-sm-6">
          <button class="btn btn-orange float-right"  data-toggle="modal" data-target="#modalNuevaInsc">
            Nueva Inscripción       
          </button>
          <button class="btn btn-danger btnExportarClientesInscripciones float-right mr-3">
              Exportar PDF          
          </button>
        </div>
      </div>
    </section>  

    <section class="content">
      <?php 
        $permisoAgregar = $_SESSION['permisos']['Clientes']['agregar'];
        $permisoEliminar = $_SESSION['permisos']['Clientes']['eliminar'];
        $permisoActualizar = $_SESSION['permisos']['Clientes']['actualizar'];
        $permisoConsulta = $_SESSION['permisos']['Clientes']['consulta'];

        // var_dump($_SESSION['perm']);

        // foreach ($permisos_pantalla as $key => $value) {
        //   echo $key;
        // }
        
        $descripcionEvento = " Consulto la pantalla de cliente";
        $accion = "consulta";

        $bitacoraConsulta = ControladorMantenimientos::ctrBitacoraInsertar($_SESSION["id_usuario"], 3,$accion, $descripcionEvento);

      ?>

      <div class="card">

          <div class="card-body">
          
            <table class="table table-striped table-bordered tablas text-center">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">No. Documento</th>
                  <th scope="col">Nombre</th>
                  <th scope="col">T. Inscripcion</th>
                  <th scope="col">F. Inscripcion</th>
                  <th scope="col">F. Ultimo Pago</th>
                  <th scope="col">F. Proximo Pago</th>
                  <th scope="col">Deuda</th>
                  <th scope="col">Estado</th>
                  <th scope="col">Acciones</th>
                </tr>
              </thead>
              <tbody>
                <?php 

                  $tabla = "tbl_clientes";
                  $item1 = 'tipo_cliente';
                  $valor1 = 'Gimnasio';
                  $item2 = 'estado';
                  $valor2 = 1;
                  $max = null;
                  $clientes = ControladorClientes::ctrMostrarClientesInscripcionPagos($tabla, $item1, $valor1, $item2, $valor2, $max);

                  // echo "<pre>";
                  // var_dump($clientes);
                  // echo "</pre>";
                  // return;

                  
                  foreach ($clientes as $key => $value) {

                    echo '
                        <tr>
                        <th scope="row">'.($key+1).'</th>
                        <td>'.$value["num_documento"].'</td>
                        <td>'.$value["nombre"].' '.$value["apellidos"].'</td>
                        <td>'.$value["tipo_inscripcion"].'</td>
                        <td>'.$value["fecha_inscripcion"].'</td>
                        <td>'.$value["fecha_pago"].'</td>';

                  
                        $fecha_actual = strtotime(date("Y-m-d"));
                        $fecha_entrada = strtotime($value['fecha_proximo_pago']);

                        if($fecha_actual < $fecha_entrada){  
                            echo '<td class="badge badge-success mt-2" data-toggle="tooltip" data-placement="left" title="Inscrito">'.$value["fecha_proximo_pago"].'</td>';
                            
                        } else {
                            echo '<td class="badge badge-danger mt-2" data-toggle="tooltip" data-placement="left" title="Inscripcion vencida">'.$value["fecha_proximo_pago"].'</td>';
                        }

                          if($fecha_actual > $fecha_entrada){
                          
                            $diasInscripcion = $value['cantidad_dias'];
                            $segundos = $fecha_entrada - $fecha_actual;
                            $dias = $segundos / 86400;
                            $diasFinal = ceil($dias / $diasInscripcion);
                            // echo $diasFinal;

                            $deuda = abs($value['precio_inscripcion'] * $diasFinal);
      
                            echo '<td>L.'.$deuda.'</td>';
                          
                          } else {
                            echo '<td data-toggle="tooltip" data-placement="left" title="No debe">L.0000.00</td>';

                          }
                      
                          if($value['estado'] != 0){
                            echo '<td><span class="badge badge-success p-3">A</span></td>';
                          } else {
                            echo '<td><span class="badge badge-danger p-3">D</span></td>';
                          }
                    

                      echo
                          '<td>
                            <button class="btn btn-success btnEditarPago" data-toggle="tooltip" data-placement="left" title="Pagar" idCliente="'.$value["id_cliente"].'"><i class="fas fa-dollar-sign p-1"></i></button>

                            <button class="btn btn-danger btnCancelarInscripcion" data-toggle="tooltip" data-placement="left" title="Cancelar Inscripcion" idClienteInscripcion="'.$value["id_cliente_inscripcion"].'" idClientePagoInscripcion="'.$value["id_cliente"].'"><i class="fas fa-strikethrough" style="color:#fff"></i></button>
                          </td>
                        </tr>
                    ';
                    
                  }
                ?>
              </tbody>
            </table>
          </div>
      </div>
    </section>
  </div>

 <!-- =======================================
           MODAL ACTUALIZAR PAGO CLIENTE
  ======================================----->

  <div class="modal fade" id="modalEditarPagos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Actualizar Inscripción</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
          <div class="modal-body p-4">
            <form role="form" method="post" class="formulario">
              <div class="container-fluid mt-4">
                <!-- <div class="form-row"> -->
                  <div class="form-group col-md-12"> 
                    <label>Tipo inscripcion</label>
                    <select class="form-control select2 actualizarInscripcion" style="width: 100%;" name="actualizarTipoInscripcion">
                        <option value="" id="actualizarInscripcion"></option>
                        <?php 
                            $tabla = "tbl_inscripcion";
                            $item = null;
                            $valor = null;
                            

                            $inscripciones = ControladorUsuarios::ctrMostrar($tabla, $item, $valor);           
 
                            foreach ($inscripciones as $key => $value) { ?>
                              <option value="<?php echo $value['id_inscripcion']?>"><?php echo $value['tipo_inscripcion']?></option>        
                            <?php 
                             
                          }
                        ?>
                    </select>
                  </div>
                  <div class="form-group col-md-12">
                    <label for="">Precio inscripcion</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                          <span class="input-group-text">$</span>  
                        </div>
                      <input type="text" class="form-control text-right actualizarPagoInscripcion totalInscripcion" name="actualizarPagoInscripcion" id="actualizarPagoInscripcion" readonly>    
                      <!-- <input type="hidden" id="actualizarPrecioInscripcion" name="actualizarPrecioInscripcion">-->
                    </div>
                  </div>
                <!-- </div> -->

                <!-- <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                  + Pagar mas de 1 mes
                </button>
                <div class="collapse" id="collapseExample">
                  <div class="card card-body">
                  <div class="container-fluid">

                    <div class="form-row">
                            
                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Enero
                          </label>
                        </div>
                      </div>

                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Febrero
                          </label>
                        </div>
                      </div>

                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Marzo
                          </label>
                        </div>
                      </div>

                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Abril
                          </label>
                        </div>
                      </div>
  
                    </div>
                    <div class="form-row">
                            
                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Mayo
                          </label>
                        </div>
                      </div>

                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Junio
                          </label>
                        </div>
                      </div>

                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Julio
                          </label>
                        </div>
                      </div>

                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Agosto
                          </label>
                        </div>
                      </div>
                    </div>
                    <div class="form-row">
                              
                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Septiembre
                          </label>
                        </div>
                      </div>

                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Octubre
                          </label>
                        </div>
                      </div>

                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Noviembre
                          </label>
                        </div>
                      </div>

                      <div class="form-group col-md-3">
                        <div class="form-check">
                          <input class="form-check-input" type="checkbox">
                          <label class="form-check-label" for="gridCheck">
                            Diciembre
                          </label>
                        </div>
                      </div>
    
                    </div>
                  </div>
                  </div>
                </div> -->

                <!-- <button class="btn btn-orange mt-3" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                  + Agregar Promocion
                </button>

                <div class="collapse mt-3" id="collapseExample">

                    <div class="form-row">
                      <div class="form-group col-md-6">
                        <label>Promociones</label>
                        <select class="form-control select2 nuevaPromocion" style="width: 100%;" name="actualizarDescuento">
                            <option selected="selected">Seleccionar...</option>
                            <?php 
                                $tabla = "tbl_descuento";
                                $item = null;
                                $valor = null;

                                $matriculas = ControladorClientes::ctrMostrar($tabla, $item, $valor);

                                foreach ($matriculas as $key => $value) { ?>
                                  <option value="<?php echo $value['id_descuento']?>"><?php echo $value['tipo_descuento']?></option>        
                                <?php 
                                }
                              
                            ?>
                        </select> 
                      </div>
                      <div class="form-group col-md-6">
                          <label for="">Porcentaje Promocion</label>
                          <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">%</span>  
                            </div>
                            <input type="text" class="form-control text-right actualizarTotalDescuento nuevoPrecioPromocion totalDescuento" name="actualizarTotalDescuento" value="" readonly>
                          </div>
                      </div>
                    </div>  

                </div> -->

                <div class="form-row">
                    <button type="" class="btn btn-success btn-ms col-md-6 verTotalActualizarPago"><i class="fas fa-dollar-sign"></i>Calcular </button>       
                    <div class="form-group col-md-6">
                      <label for="">Total a pagar:</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">$</span>  
                        </div>
                        <input type="text" class="form-control float-right text-right totalActualizarPago" name="nuevoTotalPago" value="" readonly>  
                        </div>
                    </div>
                </div>
                <input type="hidden" id="idClientePago" name="idClientePago">
                
              </div>
              <div class="form-group mt-4 float-right">
                <button type="" class="btn btn-primary">Actualiazar pago</button>
                <button type="button" class="btn btn-danger" data-dismiss="modal">Salir</button>
              </div> 
              <?php
                  // $ajustes = null;
                  // $tipoPersona = 'clientes';
                  // $pantalla = 'clientes';
                  $editarPagosCliente = new ControladorClientes();
                  $editarPagosCliente->ctrActualizarPagoClienteCambiandoInscripcion();

                  // echo "<pre>";
                  // var_dump($editarPersona);
                  // echo "</pre>";
                  // return;
                ?>
            </form>
          </div>
      </div>
    </div>
  </div> 



 <!-- =======================================
  MODAL NUEVA INSCRIPCION LUEGO DE CANCELAR
  ======================================----->
  <div class="modal fade" id="modalNuevaInscripcion" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Nueva Inscripción</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
          <div class="modal-body p-4">
            <form role="form" method="post" class="formulario">
              <div class="container-fluid mt-4">

                  <div class="form-group col-md-12">
                    <label for="">Cliente</label>
                    <input type="text" class="form-control nuevoClienteInscripcion" value="" readonly>    
                      <input type="hidden" id="nuevoClienteInscripcion" name="nuevoClienteInscripcion">
                    </div>
                  </div>

                <!-- <div class="form-row"> -->
                  <div class="form-group col-md-12"> 
                    <label>Tipo inscripcion</label>
                    <select class="form-control select2 actualizarNuevaInscripcion" style="width: 100%;" name="nuevaTipoInscripcion">
                        <option selected="selected">Seleccionar...</option>
                        <?php 
                            $tabla = "tbl_inscripcion";
                            $item = null;
                            $valor = null;
                            

                            $inscripciones = ControladorUsuarios::ctrMostrar($tabla, $item, $valor);           
 
                            foreach ($inscripciones as $key => $value) { ?>
                              <option value="<?php echo $value['id_inscripcion']?>"><?php echo $value['tipo_inscripcion']?></option>        
                            <?php 
                             
                          }
                        ?>
                    </select>
                  </div>
                  <div class="form-group col-md-12">
                    <label for="">Precio inscripcion</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                          <span class="input-group-text">$</span>  
                        </div>
                      <input type="text" class="form-control text-right actualizarPagoNuevaInscripcion totalInscripcion" name="nuevaPagoInscripcion" readonly>    
                      <!-- <input type="hidden" id="actualizarPrecioInscripcion" name="actualizarPrecioInscripcion">-->
                    </div>
                  </div>

                  
                <div class="form-row">
                    <button type="" class="btn btn-success btn-ms col-md-6 verTotalActualizarPago"><i class="fas fa-dollar-sign"></i>Calcular </button>       
                    <div class="form-group col-md-6">
                      <label for="">Total a pagar:</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">$</span>  
                        </div>
                        <input type="text" class="form-control float-right text-right totalActualizarPago" name="nuevoPagoTotal" value="" readonly>  
                        </div>
                    </div>
                </div>
                <!-- <input type="hidden" name="idClientePago"> -->
                
              </div>
              <!-- <div class="form-row"> -->
                <div class="form-group mt-4">
                  <button type="" class="btn btn-primary float-right mr-4">Guardar</button>
                  <button type="button" class="btn btn-danger float-right mr-3" data-dismiss="modal">Salir</button>
                </div> 
              <!-- </div>   -->

              <?php
                  // $ajustes = null;
                  // $tipoPersona = 'clientes';
                  // $pantalla = 'clientes';
                  $nuevaInscripcionCliente = new ControladorClientes();
                  $nuevaInscripcionCliente->ctrNuevaInscripcionCliente();

                  // echo "<pre>";
                  // var_dump($editarPersona);
                  // echo "</pre>";
                  // return;
                ?>
            </form>
          </div>
      </div>
    </div>
  </div> 


   <!-- =======================================
      MODAL NUEVA INSCRIPCION 
  ======================================----->
  <div class="modal fade" id="modalNuevaInsc" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-md" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Nueva Inscripción</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
          <div class="modal-body p-4">
            <form role="form" method="post" class="formulario">
              <div class="container-fluid mt-4">

                  <div class="form-group col-md-12">
                    <label for="">Cliente</label>
                    <select class="form-control select2" style="width: 100%;" name="nuevoClienteSinInscripcion">
                        <option selected="selected">Seleccionar...</option>
                        <?php 

                          $clientes = ControladorClientes::ctrMostrarClientesSinInscripcion();           

                          foreach ($clientes as $key => $value) { ?>
                            <option value="<?php echo $value['id_cliente_inscripcion']?>"><?php echo $value['nombre']. ' '. $value['apellidos'] ?></option>        
                            <!-- <input type="hidden" value="<?php echo $value['id_cliente_inscripcion']?>" name="nuevoIdClienteSinInscripcion"> -->

                          <?php  
                          }
                        ?>
                    </select>
                  </div>

                <!-- <div class="form-row"> -->
                  <div class="form-group col-md-12"> 
                    <label>Tipo inscripcion</label>
                    <select class="form-control select2 nuevaTipoInscripcion2" style="width: 100%;" name="nuevaTipoInscripcion2">
                        <option selected="selected">Seleccionar...</option>
                        <?php 
                            $tabla = "tbl_inscripcion";
                            $item = null;
                            $valor = null;
                            

                            $inscripciones = ControladorUsuarios::ctrMostrar($tabla, $item, $valor);           
 
                            foreach ($inscripciones as $key => $value) { ?>
                              <option value="<?php echo $value['id_inscripcion']?>"><?php echo $value['tipo_inscripcion']?></option>        
                            <?php 
                             
                          }
                        ?>
                    </select>
                  </div>
                  <div class="form-group col-md-12">
                    <label for="">Precio inscripcion</label>
                    <div class="input-group">
                      <div class="input-group-prepend">
                          <span class="input-group-text">$</span>  
                        </div>
                      <input type="text" class="form-control text-right nuevaPagoInscripcion2 totalInscripcion" name="nuevaPagoInscripcion2" readonly>    
                      <!-- <input type="hidden" id="actualizarPrecioInscripcion" name="actualizarPrecioInscripcion">-->
                    </div>
                  </div>

                  
                <div class="form-row">
                    <button type="" class="btn btn-success btn-ms col-md-6 verTotalActualizarPago"><i class="fas fa-dollar-sign"></i>Calcular </button>       
                    <div class="form-group col-md-6">
                      <label for="">Total a pagar:</label>
                      <div class="input-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text">$</span>  
                        </div>
                        <input type="text" class="form-control float-right text-right nuevoTotalPago" name="nuevoTotalPago" value="" readonly>  
                        </div>
                    </div>
                </div>
                <!-- <input type="hidden" name="idClientePago"> -->
                
              </div>
              <!-- <div class="form-row"> -->
                <div class="form-group mt-4">
                  <button type="" class="btn btn-primary float-right mr-2">Guardar</button>
                  <button type="button" class="btn btn-danger float-right mr-2" data-dismiss="modal">Salir</button>
                </div> 
              <!-- </div>   -->

              <?php
                  // $ajustes = null;
                  // $tipoPersona = 'clientes';
                  // $pantalla = 'clientes';
                  $nuevaInscripcion = new ControladorClientes();
                  $nuevaInscripcion->ctrNuevaInscripcion();

                  // echo "<pre>";
                  // var_dump($editarPersona);
                  // echo "</pre>";
                  // return;
                ?>
            </form>
          </div>
      </div>
    </div>
  </div> 