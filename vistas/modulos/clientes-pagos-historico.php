
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Clientes Pagos Historico</h1>
          </div>
          <div class="col-sm-6">
          <!-- <button class="btn btn-orange float-right"  data-toggle="modal" data-target="#modalAgregarCliente">
            Nuevo Cliente       
          </button> -->
          <button class="btn btn-danger btnExportarHistorialPagosClientes float-right mr-3">
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
        
        $descripcionEvento = " Consulto la pantalla de Hsitorial de Pagos ";
        $accion = "consulta";

        $bitacoraConsulta = ControladorMantenimientos::ctrBitacoraInsertar($_SESSION["id_usuario"], 3,$accion, $descripcionEvento);

      ?>

      <div class="card">

          <div class="card-body">
          
            <table class="table table-hover tablas text-center">
              <thead>
                <tr>
                  <th scope="col">#</th>
                  <th scope="col">No. Documento</th>
                  <th scope="col">Nombre</th>
                  <th scope="col">Pago Matricula</th>
                  <th scope="col">Valor Descuento</th>
                  <th scope="col">Pago Inscripcion</th>
                  <th scope="col">Pago Total</th>
                  <th scope="col">Fecha de Pago</th>
                  <th scope="col">Acciones</th>

                </tr>
              </thead>
              <tbody>
                <?php 
                  $item = null;
                  $valor = null;
                  $clientes = ControladorClientes::ctrMostrarPagosClientes($item, $valor);

                //   echo "<pre>";
                //   var_dump($clientes);
                //   echo "</pre>";
                  // return;


                  foreach ($clientes as $key => $value) {

                    echo '
                        <tr>
                        <th scope="row">'.($key+1).'</th>
                        <td>'.$value["num_documento"].'</td>
                        <td>'.$value["nombre"].' '.$value["apellidos"].'</td>';
                        if($value["pago_matricula"] == null){
                          echo '<td>$.0</td>';
                        } else {
                          echo '<td>$.'.$value["pago_matricula"].'</td>';
                        }
                        
                        if($value["pago_descuento"] == null){
                          echo '<td>$.0</td>';
                        } else {
                          echo '<td>$.'.$value["pago_descuento"].'</td>';
                        }
                    
                    echo '
                        <td>$.'.$value["pago_inscripcion"].'</td>
                        <td>$.'.$value["pago_total"].'</td>
                        <td>'.$value["fecha_de_pago"].'</td>
                        <td>
                          <button class="btn btn-outline-info btnReciboPagoCliente" idClientePago="'.$value["id_pagos_cliente"].'" data-toggle="tooltip" data-placement="left" title="Imprimir recibo pago"><i class="fa fa-print"></i></button>
                        </td>';                            
                  }
                ?>
              </tbody>
            </table>
          </div>
      </div>
    </section>
  </div>