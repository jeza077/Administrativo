
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Reportes</h1>
          </div>
          <div class="col-sm-6">

            <button type="button" class="btn btn-default float-right mr-3" id="daterange-btn-reporte">
                <span>
                <i class="far fa-calendar-alt"></i> Rango de fechas
                </span>
                <i class="fas fa-caret-down"></i>
            </button>

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
    ?>

        
      <?php
        include 'reportes/grafico-venta.php';
      ?>

      <div class="col-md-6 col-xs-12">
        <?php 
          include "reportes/productos-mas-vendidos.php";
        ?>    
      </div>

    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->