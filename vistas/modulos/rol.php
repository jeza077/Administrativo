<div class="content-wrapper">

  <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Roles</h1>
          </div>
          <div class="col-sm-6">
              <button class="btn btn-orange float-right"  data-toggle="modal" data-target="#modalNuevoRol">
                Nuevo Rol        
              </button>
              <button class="btn btn-outline-danger btnExportarRol float-right mr-3 ">
                Exportar PDF      
              </button>
          </div>
        </div>
      </div><!-- /.container-fluid -->
  </section>  

  <section class="content">

    <div class="card">

      <div class="card-body">

        <?php
            $descripcionEvento = " Consulto la pantalla de Rol";
            $accion = "consulta";

            $bitacoraConsulta = ControladorMantenimientos::ctrBitacoraInsertar($_SESSION["id_usuario"], 6,$accion, $descripcionEvento);

        ?>

          <!--========================================================
                      ROL
            ==========================================================-->   

        <table class="table table-hocer tablas text-center">

          <thead>
                          
            <tr>                    
                <th scope="col">#</th>   
                <th scope="col">Rol</th> 
                <th scope="col">Descripcion</th>  
                <th scope="col">Estado</th>
                <th scope="col">Acciones</th>
            </tr>

          </thead>

          <tbody>

            <?php
                // $tabla = "tbl_roles";
                $item = null;
                $valor = null;
                
                $rol = ControladorMantenimientos::ctrMostrarRoles($item,$valor);
                // var_dump($rol);

                foreach ($rol as $key => $value){
                  echo '
                    <tr>
                    
                        <td>'.($key + 1).'</td>
                        <td>'.$value["rol"].'</td>
                        <td>'.$value["descripcion"].'</td>';
                    
                    
                        if($value["estado"] != 0){
                        echo' <td><button class="btn btn-success btn-md btnActivar" idRol="'.$value["id_rol"].'" estadoRol="0" >Activado</button></td>';
                        
                        }else{
                        echo' <td><button class="btn btn-danger btn-md btnActivar" idRol="'.$value["id_rol"].'" estadoRol="1" >Desactivado</button></td>';
                        
                        }

                        echo'
                        <td>
                        <button class="btn btn-warning btnEditarRol" editarIdRol="'.$value["id_rol"].'" data-toggle="modal" data-target="#modalEditarRol" data-toggle="tooltip" data-placement="left" title="Editar"><i class="fas fa-pencil-alt" style="color:#fff"></i></button>

                        <button class="btn btn-danger btnEliminarRoles" ideliminarRoles="'.$value["id_rol"].'" data-toggle="tooltip" data-placement="left" title="Borrar"><i class="fas fa-trash-alt"></i></button>
                        </td>

                      </tr>';
                                        
                }

                
                
            ?>

          </tbody>

        </table> 

      </div>

    </div>

  </section>

</div>


<!--=======================================================================
                  MODAL AGREGAR ROL
=========================================================================-->

<div class="modal fade" id="modalNuevoRol" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  
  <div class="modal-dialog modal-md" role="document">

    <div class="modal-content">

      <form role="form" method="post" autocomplete="off">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Nuevo Rol</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">
              
            <div class="form-group row">
              <label for="Rol" class="col-sm-4">Rol</label>
            
              <input type="text" class="form-control col-sm-8 nombre mayus" name="nuevoRol" value="" placeholder="Ingresa el rol" required>
            </div>

            <div class="form-group row">
              <label for="Descripcion" class="col-sm-4">Descripcion</label>            
              <input type="textarea" class="form-control col-sm-8 nombre mayus" name="nuevaDescripcionRol" value="" placeholder="Ingresa la descripción" required>
            </div>

            <div class="pantalla-permisos" id="datos-permisos">
              <div class="form-group row">
                  <label for="Pantalla" class="col-sm-4">Pantalla</label>
                  <select class="form-control col-sm-8 select2" style="width: 100%;" id="nuevaPantalla">
                    <option selected="selected">Seleccione...</option>
                      <?php 
                          $tabla = "tbl_objetos";
                          $item = null;
                          $valor = null;

                          $roles = ControladorUsuarios::ctrMostrar($tabla, $item, $valor);

                          foreach ($roles as $key => $value) {
                            echo '<option value="'.$value["id_objeto"].'">'.$value["objeto"].'</option>';
                          }
                      ?>
                  </select>
              </div>

              <div class="form-group row">
                <label for="Pantalla" class="col-sm-4">Permisos</label>

                <div class="col-sm-8">
                
                  <div class="form-check col-sm-12">
                    <input class="form-check-input" name="nuevoConsulta" type="checkbox">
                    <label class="form-check-label" for="defaultCheck1">
                      Consulta
                    </label>
                  </div>

                  <div class="form-check col-sm-12">
                    <input class="form-check-input" name="nuevoAgregar" type="checkbox">
                    <label class="form-check-label" for="defaultCheck1">
                      Agregar
                    </label>
                  </div>
                  
                  <div class="form-check col-sm-12">
                    <input class="form-check-input" name="nuevoActualizar" type="checkbox">
                    <label class="form-check-label" for="defaultCheck1">
                      Actualizar
                    </label>
                  </div>

                  <div class="form-check col-sm-12">
                    <input class="form-check-input" name="nuevoEliminar" type="checkbox">
                    <label class="form-check-label" for="defaultCheck1">
                      Eliminar
                    </label>
                  </div>

                </div>
              </div>

              <div class="form-row float-right">
                <button class="btn btn-primary" id="btnGuardarPermisos">Agregar</button>
              </div>
            </div>
        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->

        <div class="modal-footer" id="modalFooterRol">
          <button type="submit" class="btn btn-primary btnGuardarRol">Guardar
          </button>
          <button type="button" class="btn btn-orange" data-dismiss="modal">Salir</button>
          
        </div>
        <div class="modal-footer mt-4" id="modalFooterPermisos">
          <button type="submit" class="btn btn-primary btnGuardarCambios">Guardar Cambios
          </button>
          <button type="button" class="btn btn-orange" data-dismiss="modal">Salir</button>
          
        </div>

        <?php

          // $crearRol = new ControladorMantenimientos();
          // $crearRol -> ctrRolesInsertar();

        ?>




      </form>

    

    </div>

  </div>
        

</div>

<!--==============================================================================
MODAL EDITAR ROL
==================================================================================-->

<div class="modal fade" id="modalEditarRol" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  
  <div class="modal-dialog  " role="document">

    <div class="modal-content">

      <form role="form" method="post" autocomplete="off">

        <!--=====================================
        CABEZA DEL MODAL
        ======================================-->

        <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Editar  rol</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <!--=====================================
        CUERPO DEL MODAL
        ======================================-->

        <div class="modal-body">

            <div class= "form-group col-md-12">
              <label for="rol">Rol</label>
              <input type="text" class="form-control  nombre mayus" id="editarRol" name="editarRol" value="" requiered>
            </div>
            <div class= "form-group col-md-12">
              <label for="Descripcion">Descripción</label>
              <input type="text" class="form-control nombre mayus" id="editarDescripcionRol" name="editarDescripcionRol" value="" requiered>
            </div>
            <input type="hidden" id="editarIdRol" name="editarIdRol">
            
            <div class="ml-2">
              <a class="btn btn-primary" data-toggle="collapse" href="#permisosRolCollapse" role="button" aria-expanded="false" aria-controls="permisosRolCollapse">
               + Agregar Permisos
              </a>
              <div class="collapse mt-3" id="permisosRolCollapse">
                <div class="card card-body">
                  <div class="pantalla-permisos" id="datos-permisos">
                    <div class="form-group row">
                        <label for="Pantalla" class="col-sm-4">Pantalla</label>
                        <select class="form-control col-sm-8 select2" style="width: 100%;" id="nuevaPantallaEditar">
                          <option selected="selected">Seleccione...</option>
                            <?php 
                                $tabla = "tbl_objetos";
                                $item = null;
                                $valor = null;
      
                                $roles = ControladorUsuarios::ctrMostrar($tabla, $item, $valor);
      
                                foreach ($roles as $key => $value) {
                                  echo '<option value="'.$value["id_objeto"].'">'.$value["objeto"].'</option>';
                                }
                            ?>
                        </select>
                    </div>
      
                    <div class="form-group row">
                      <label for="Pantalla" class="col-sm-4">Permisos</label>
      
                      <div class="col-sm-8">
                      
                        <div class="form-check col-sm-12">
                          <input class="form-check-input" name="nuevoEditarConsulta" type="checkbox">
                          <label class="form-check-label" for="defaultCheck1">
                            Consulta
                          </label>
                        </div>
      
                        <div class="form-check col-sm-12">
                          <input class="form-check-input" name="nuevoEditarAgregar" type="checkbox">
                          <label class="form-check-label" for="defaultCheck1">
                            Agregar
                          </label>
                        </div>
                        
                        <div class="form-check col-sm-12">
                          <input class="form-check-input" name="nuevoEditarActualizar" type="checkbox">
                          <label class="form-check-label" for="defaultCheck1">
                            Actualizar
                          </label>
                        </div>
      
                        <div class="form-check col-sm-12">
                          <input class="form-check-input" name="nuevoEditarEliminar" type="checkbox">
                          <label class="form-check-label" for="defaultCheck1">
                            Eliminar
                          </label>
                        </div>
      
                      </div>
                    </div>
      
                    <div class="form-row float-right">
                      <button class="btn btn-primary" id="btnGuardarPermisosEditar">Agregar</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>

        </div>

        <!--=====================================
        PIE DEL MODAL
        ======================================-->
     
        <div class="modal-footer" id="modalFooterPermisosEditar">
          <button type="submit" class="btn btn-primary btnGuardarCambiosEditar">Guardar Cambios
          </button>
          <button type="button" class="btn btn-orange" data-dismiss="modal">Salir</button>
          
        </div>

        <?php

          $EditarRol = new ControladorMantenimientos();
          $EditarRol->ctrEditarRol();

        ?>
        
      </form>

    </div>

  </div>
        

</div>


<?php

$borrarRol = new ControladorMantenimientos();
$borrarRol->ctrBorrarRoles();

?>

