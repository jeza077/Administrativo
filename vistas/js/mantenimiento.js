/*=====================================
    GUARDAR ROL
========================================*/
$('.pantalla-permisos').hide();
$('#modalFooterPermisos').hide();

$(document).on('click', '.btnGuardarRol', function (e) {
    e.preventDefault();
    // console.log('clcik')

    $(this).html('');
    // $(this).append('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Guardando...');

    
    // return;
    var nuevoRol = $('input[name=nuevoRol]').val();
    var nuevoRolDescripcion = $('input[name=nuevaDescripcionRol]').val();
    // console.log(nuevoRol);
    // console.log(nuevoRolDescripcion);

    var datos = new FormData();
    datos.append('nuevoRol', nuevoRol);
    datos.append('nuevoRolDescripcion', nuevoRolDescripcion);

    $.ajax({
        
        url:"ajax/mantenimiento.ajax.php",
        method:"POST",
        data: datos,
        cache: false,
        contentType:false,
        processData:false,
        success:function(respuesta){ 
            // console.log(respuesta)
            // return;
            var idRol = respuesta;

            if(respuesta){
            Swal.fire({
                icon: "success",
                title: "¡El rol ha sido creado exitosamente!",
                showConfirmButton: true,
                // showCloseButton: true,
                confirmButtonText: "Ok",
                heightAuto: false,
                allowOutsideClick: false
    
              }).then((result)=>{
    
                if(result.value){
    
                //   window.location = "mantenimiento";
                    Swal.fire({

                        icon: "info",
                        title: "Por ultimo, agregue los permisos",
                        showConfirmButton: true,
                        showCancelButton: false,
                        confirmButtonText: "Vamos",
                        cancelButtonText: "No, cerrar",
                        heightAuto: false,
                        allowOutsideClick: false
            
                        }).then((result)=>{

                        if(result.value){

                            $('input[name=nuevoRol]').attr('disabled',true);
                            $('input[name=nuevaDescripcionRol]').attr('disabled',true);
                            
                            $('#modalFooterRol').hide();
                            $('.pantalla-permisos').show();
                            $('#modalFooterPermisos').show();

                            $(document).on('click', '#btnGuardarPermisos', function (e) {
                                e.preventDefault();
                                if(!$('input[name=nuevoConsulta]').is(':checked') && !$('input[name=nuevoAgregar]').is(':checked') && !$('input[name=nuevoActualizar]').is(':checked') && !$('input[name=nuevoEliminar]').is(':checked')){
                                   
                                    $('#modalFooterPermisos').before('<div class="alert alert-danger alert-dismissible ml-3 mr-3 mt-4" role="alert"><i class="icon fas fa-ban"></i>Por favor, elige al menos un permiso!</div>');
                                    setTimeout(function () {
                                        $('.alert').remove();
                                    }, 4000)
                                
                                
                                } else if($('#nuevaPantalla').val() == 'Seleccione...' || $('#nuevaPantalla').val() == "") {

                                    $('#modalFooterPermisos').before('<div class="alert alert-danger alert-dismissible ml-3 mr-3 mt-4" role="alert"><i class="icon fas fa-ban"></i>Por favor, elija una pantalla!</div>');
                                    setTimeout(function () {
                                        $('.alert').remove();
                                    }, 4000)
                                

                                } else {

                                    // console.log(datosPermisos);
    
                                    var pantalla = $('#nuevaPantalla').val();
                                    var consulta = false;
                                    var agregar = false;
                                    var actualizar = false;
                                    var eliminar = false;
    
                                    if($('input[name=nuevoConsulta]').is(':checked')){
                                        consulta = true;
                                    } else {
                                        consulta = false;
                                    }
    
                                    if($('input[name=nuevoAgregar]').is(':checked')){
                                        agregar = true;
                                    } else {
                                        agregar = false;
                                    }
    
                                    if($('input[name=nuevoActualizar]').is(':checked')){
                                        actualizar = true;
                                    } else {
                                        actualizar = false;
                                    }
    
                                    if($('input[name=nuevoEliminar]').is(':checked')){
                                        eliminar = true;
                                    } else {
                                        eliminar = false;
                                    }
                                                
                                    // console.log(parseInt(idRol))
                                    // console.log(pantalla)
                                    // console.log('consulta',consulta)
                                    // console.log('agregar',agregar)
                                    // console.log('actualizar',actualizar)
                                    // console.log('eliminar',eliminar)
                                    // return;
                                    var datos = new FormData();
                                    datos.append('idRol', idRol);
                                    datos.append('pantalla', pantalla);
                                    datos.append('consulta', consulta);
                                    datos.append('agregar', agregar);
                                    datos.append('actualizar', actualizar);
                                    datos.append('eliminar', eliminar);
    
    
                                    $.ajax({
            
                                        url:"ajax/mantenimiento.ajax.php",
                                        method:"POST",
                                        data: datos,
                                        cache: false,
                                        contentType:false,
                                        processData:false,
                                        success:function(respuesta){ 
                                            // console.log(respuesta)
    
                                            $('input[type=checkbox]').prop('checked',false);   
                                            $('#nuevaPantalla').val('Seleccione...');                                       
                                            if(respuesta == 'true'){
                                                $('#modalFooterPermisos').before('<div class="alert alert-success alert-dismissible ml-3 mr-3 mt-4" role="alert"><i class="icon fas fa-check"></i>Los permisos se agregaron correctamente.</div>');
                                                setTimeout(function () {
                                                    $('.alert').remove();
                                                }, 4000)
    
                                                
                                            } else if(respuesta == '"existe"'){
                                                console.log('agregue otra')
                                                $('#modalFooterPermisos').before('<div class="alert alert-danger alert-dismissible ml-3 mr-3 mt-4" role="alert"><i class="icon fas fa-ban"></i>La pantalla elegida ya ha sido asociada anteriormente a este rol.</div>');
                                                setTimeout(function () {
                                                    $('.alert').remove();
                                                }, 4000)
                                            } else {
                                                // $('input[type=checkbox]').prop('checked',false);
                                                $('#modalFooterPermisos').before('<div class="alert alert-danger alert-dismissible ml-3 mr-3 mt-4" role="alert"><i class="icon fas fa-ban"></i>Opps, algo salio mal. Intenta de nuevo!</div>');
                                                setTimeout(function () {
                                                    $('.alert').remove();
                                                }, 4000)
                                            }
    
                                        }
                                    });
                                }

                            });

                        } else {
                            window.location = "rol";

                        }

                    });
    
                }
    
              });

            }
       } 
  
    }); 
  


});

function redireccionDinamica(selector, pantalla) {
    $(document).on('click', selector, function () {
        window.location = pantalla;
    });
}
redireccionDinamica('.btnGuardarCambios', 'rol');
redireccionDinamica('.btnGuardarCambiosEditar', 'rol');


/* ========================================
        GUARDAR PROVEEDOR
=========================================== */
$(document).on('click', '.btnGuardarProveedor', function (e) {
    e.preventDefault();
    // console.log('clcik')

    // $(this).html('');
    // $(this).append('<span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span> Guardando...');

    
    // return;
    var nombre = $('input[name=nuevoNombre]').val();
    var correo = $('input[name=nuevoCorreo]').val();
    var telefono = $('input[name=nuevoTelefono]').val();
    // console.log(telefono)

    // return;
    var datos = new FormData();
    datos.append('nombre', nombre);
    datos.append('correo', correo);
    datos.append('telefono', telefono);

    $.ajax({
        
        url:"ajax/mantenimiento.ajax.php",
        method:"POST",
        data: datos,
        cache: false,
        contentType:false,
        processData:false,
        success:function(respuesta){ 
            console.log(respuesta)
            
            if(respuesta == 'true'){
                Swal.fire({
                    icon: "success",
                    title: "Proveedor creado exitosamente!",
                    showConfirmButton: true,
                    confirmButtonText: "Cerrar",
                    closeOnConfirm: false
                    }).then((result) => {
                        if (result.value) {

                        window.location = "proveedores";

                        }
                    })
        
            }
        }
    })

});


/*===================================
    EDITAR ROL
====================================*/
$(document).on("click", ".btnEditarRol", function(){
    
    var idRol = $(this).attr("editarIdRol");

    var datos = new FormData();
    datos.append("idRol", idRol);

    $.ajax({

        url:"ajax/parametro.ajax.php",
        method:"POST",
        data: datos,
        cache: false,
        contentType:false,
        processData:false,
        dataType: "json",
        success:function(respuesta){ 

            $('#editarRol').val(respuesta['rol']);
            $('#editarDescripcionRol').val(respuesta['descripcion']);
            $('#editarIdRol').val(respuesta['id_rol']);


            if(respuesta){
    
                $('input[name=editarRol]').attr('enable',true);
                $('input[name=editarDescripcionRol]').attr('enable',true);
                
                //$('#modalFooterRol').hide();
                $('.pantalla-permisos').show();
                $('#modalFooterPermisosEditar').show();

                $(document).on('click', '#btnGuardarPermisosEditar', function (e) {
                    e.preventDefault();

                    if(!$('input[name=nuevoEditarConsulta]').is(':checked') && !$('input[name=nuevoEditarAgregar]').is(':checked') && !$('input[name=nuevoEditarActualizar]').is(':checked') && !$('input[name=nuevoEditarEliminar]').is(':checked')){
                        
                        $('#modalFooterPermisosEditar').before('<div class="alert alert-danger alert-dismissible ml-3 mr-3 mt-4" role="alert"><i class="icon fas fa-ban"></i>Por favor, elige al menos un permiso!</div>');
                        setTimeout(function () {
                            $('.alert').remove();
                        }, 4000)
                    
                    
                    } else if($('#nuevaPantallaEditar').val() == 'Seleccione...' || $('#nuevaPantallaEditar').val() == "") {

                        $('#modalFooterPermisosEditar').before('<div class="alert alert-danger alert-dismissible ml-3 mr-3 mt-4" role="alert"><i class="icon fas fa-ban"></i>Por favor, elige una pantalla!</div>');
                        setTimeout(function () {
                            $('.alert').remove();
                        }, 4000)
                    

                    } else {

                        // console.log(datosPermisos);

                        var pantalla = $('#nuevaPantallaEditar').val();
                        var consulta = false;
                        var agregar = false;
                        var actualizar = false;
                        var eliminar = false;

                        if($('input[name=nuevoEditarConsulta]').is(':checked')){
                            consulta = true;
                        } else {
                            consulta = false;
                        }

                        if($('input[name=nuevoEditarAgregar]').is(':checked')){
                            agregar = true;
                        } else {
                            agregar = false;
                        }

                        if($('input[name=nuevoEditarActualizar]').is(':checked')){
                            actualizar = true;
                        } else {
                            actualizar = false;
                        }

                        if($('input[name=nuevoEditarEliminar]').is(':checked')){
                            eliminar = true;
                        } else {
                            eliminar = false;
                        }
                                    
                        // console.log(parseInt(idRol))
                        // console.log(pantalla)
                        // console.log('consulta',consulta)
                        // console.log('agregar',agregar)
                        // console.log('actualizar',actualizar)
                        // console.log('eliminar',eliminar)
                        // return;
                        var datos = new FormData();
                        datos.append('idRol', idRol);
                        datos.append('pantalla', pantalla);
                        datos.append('consulta', consulta);
                        datos.append('agregar', agregar);
                        datos.append('actualizar', actualizar);
                        datos.append('eliminar', eliminar);


                        $.ajax({

                            url:"ajax/mantenimiento.ajax.php",
                            method:"POST",
                            data: datos,
                            cache: false,
                            contentType:false,
                            processData:false,
                            success:function(respuesta){ 
                                console.log(respuesta)

                                $('input[type=checkbox]').prop('checked',false);   
                                $('#nuevaPantallaEditar').val('Seleccione...');                                       
                                if(respuesta == 'true'){
                                    $('#modalFooterPermisosEditar').before('<div class="alert alert-success alert-dismissible ml-3 mr-3" role="alert"><i class="icon fas fa-check"></i>Los permisos se agregaron correctamente.</div>');
                                    setTimeout(function () {
                                        $('.alert').remove();
                                    }, 4000)

                                    
                                } else if(respuesta == '"existe"'){
                                    console.log('agregue otra')
                                    $('#modalFooterPermisosEditar').before('<div class="alert alert-danger alert-dismissible ml-3 mr-3" role="alert"><i class="icon fas fa-ban"></i>La pantalla elegida ya ha sido asociada anteriormente a este rol.</div>');
                                    setTimeout(function () {
                                        $('.alert').remove();
                                    }, 4000)
                                } else {
                                    // $('input[type=checkbox]').prop('checked',false);
                                    $('#modalFooterPermisosEditar').before('<div class="alert alert-danger alert-dismissible ml-3 mr-3" role="alert"><i class="icon fas fa-ban"></i>Opps, algo salio mal. Intenta de nuevo!</div>');
                                    setTimeout(function () {
                                        $('.alert').remove();
                                    }, 4000)
                                }

                            }
                        });
                    }

                });


            }
         
        } 

    });


});

/*===================================
    EDITAR PARAMETROS
====================================*/
$(document).on("click", ".btnEditarParametro", function(){
    
    var idParametro = $(this).attr("idParametro");
     // console.log("idParametro",idParametro);
     

    var datos = new FormData();
    datos.append("idParametro", idParametro);

    $.ajax({

        url:"ajax/parametro.ajax.php",
        method:"POST",
        data: datos,
        cache: false,
        contentType:false,
        processData:false,
        dataType: "json",
        success:function(respuesta){ 

            // console.log(respuesta);
    
            $('#editarParametro').val(respuesta['parametro']);
            $('#editarValorParametro').val(respuesta['valor']);
            $('#editarIdParametro').val(respuesta['id_parametro']);
         
        } 

    });



});

/*===================================
    EDITAR INSCRIPCION
====================================*/
$(document).on("click", ".btnEditarInscripcion", function(){
    
    var idInscripcion = $(this).attr("editarIdInscripcion");

    var datos = new FormData();
    datos.append("idInscripcion", idInscripcion);

    $.ajax({

        url:"ajax/parametro.ajax.php",
        method:"POST",
        data: datos,
        cache: false,
        contentType:false,
        processData:false,
        dataType: "json",
        success:function(respuesta){ 

            $('#editarInscripcion').val(respuesta['tipo_inscripcion']);
            $('#editarPrecioInscripcion').val(respuesta['precio_inscripcion']);
            $('#editarDiasInscripcion').val(respuesta['cantidad_dias']);
            $('#editarIdInscripcion').val(respuesta['id_inscripcion']);
            
         
        } 

    });



});

/*===================================
    EDITAR MATRIUCLA
====================================*/
$(document).on("click", ".btnEditarMatricula", function(){
    
    var idMatricula = $(this).attr("editarIdMatricula");

    var datos = new FormData();
    datos.append("idMatricula", idMatricula);

    $.ajax({

        url:"ajax/parametro.ajax.php",
        method:"POST",
        data: datos,
        cache: false,
        contentType:false,
        processData:false,
        dataType: "json",
        success:function(respuesta){ 

            $('#editarMatricula').val(respuesta['tipo_matricula']);
            $('#editarPrecioMatricula').val(respuesta['precio_matricula']);
            $('#editarIdMatricula').val(respuesta['id_matricula']);
         
        } 

    });



});

/*===================================
    EDITAR DESCUENTO
====================================*/
$(document).on("click", ".btnEditarDescuento", function(){
    
    var idDescuento = $(this).attr("editarIdDescuento");
    //console.log(idDescuento)
    var datos = new FormData();
    datos.append("idDescuento", idDescuento);

    $.ajax({

        url:"ajax/parametro.ajax.php",
        method:"POST",
        data: datos,
        cache: false,
        contentType:false,
        processData:false,
        dataType: "json",
        success:function(respuesta){ 
            // console.log(respuesta)

            $('#editarDescuento').val(respuesta['tipo_descuento']);
            $('#editarValorDescuento').val(respuesta['valor_descuento']);
            $('#editarIdDescuento').val(respuesta['id_descuento']);
         
        } 

    });



});

/*===================================
    EDITAR DOCUMENTO
====================================*/
$(document).on("click", ".btnEditarDocumento", function(){
    
    var idDocumento = $(this).attr("idDocumento");
    // console.log(idDocumento)
    var datos = new FormData();
    datos.append("idDocumento", idDocumento);

    $.ajax({

        url:"ajax/mantenimiento.ajax.php",
        method:"POST",
        data: datos,
        cache: false,
        contentType:false,
        processData:false,
        dataType: "json",
        success:function(respuesta){ 
            // console.log(respuesta)

            $('#editarDocumento').val(respuesta['tipo_documento']);
            $('#editarIdDocumento').val(respuesta['id_documento']);
         
        } 

    });
});





/** ------------------------------------*/
//         BORRAR INSCRIPCION
// --------------------------------------*/ 
$(document).on('click', '.btnEliminarInscripcion', function () {
    var idEliminarInscripcion = $(this).attr('idEliminarInscripcion');

    Swal.fire({
        title: "¿Estas seguro de borrar la inscripción?",
        text: "¡Si no lo estas, puedes cancelar la acción!",
        icon: "info",
        showCancelButton: true,
        cancelButtonColor: "#DC3545",
        heightAuto: false,
        allowOutsideClick: false
    }).then((result)=>{
        if(result.value){
            window.location = `index.php?ruta=inscripcion&idEliminarInscripcion=${idEliminarInscripcion}`;
            
        }
    });
});

/** ------------------------------------*/
//         BORRAR MATRICULA
// --------------------------------------*/ 
$(document).on('click', '.btnEliminarMatricula', function () {
    var ideliminarMatricula = $(this).attr('ideliminarMatricula');

    Swal.fire({
        title: "¿Estás seguro de borrar la matricula?",
        text: "¡Si no lo estas, puedes cancelar la acción!",
        icon: "info",
        showCancelButton: true,
        cancelButtonColor: "#DC3545",
        heightAuto: false,
        allowOutsideClick: false
    }).then((result)=>{
        if(result.value){
            window.location = `index.php?ruta=matricula&idEliminarMatricula=${ideliminarMatricula}`;
            
        }
    });
});

/** ------------------------------------*/
//         BORRAR DESCUENTO
// --------------------------------------*/ 
$(document).on('click', '.btnEliminarDescuento', function () {
    var ideliminarDescuento = $(this).attr('ideliminarDescuento');

    Swal.fire({
        title: "¿Estás seguro de borrar el descuento?",
        text: "¡Si no lo estas, puedes cancelar la acción!",
        icon: "info",
        showCancelButton: true,
        cancelButtonColor: "#DC3545",
        heightAuto: false,
        allowOutsideClick: false
    }).then((result)=>{
        if(result.value){
            window.location = `index.php?ruta=descuento&idEliminarDescuento=${ideliminarDescuento}`;
            
        }
    });
});

/** ------------------------------------*/
//         BORRAR ROlES
// --------------------------------------*/ 
$(document).on('click', '.btnEliminarRoles', function () {
    var ideliminarRoles = $(this).attr('ideliminarRoles');

    Swal.fire({
        title: "¿Estas seguro de borrar el rol?",
        text: "¡Si no lo estas, puedes cancelar la accion!",
        icon: "info",
        showCancelButton: true,
        cancelButtonColor: "#DC3545",
        heightAuto: false,
        allowOutsideClick: false
    }).then((result)=>{
        if(result.value){
            window.location = `index.php?ruta=rol&idEliminarRoles=${ideliminarRoles}`;
            
        }
    });
});

/** ------------------------------------*/
//         BORRAR DOCUMENTO
// --------------------------------------*/ 
$(document).on('click', '.btnEliminarDocumento', function () {
    var idEliminarDocumento = $(this).attr('idEliminarDocumento');

    Swal.fire({
        title: "¿Estás seguro de querer borrar el documento?",
        text: "¡Si no lo estas, puedes cancelar la acción!",
        icon: "info",
        showCancelButton: true,
        cancelButtonColor: "#DC3545",
        heightAuto: false,
        allowOutsideClick: false
    }).then((result)=>{
        if(result.value){
            window.location = `index.php?ruta=documentos&idEliminarDocumento=${idEliminarDocumento}`;
            
        }
    });
});






/*=====================================
    ACTIVAR ROL
========================================*/
$(".btnActivar").click(function(){

    var idRol = $(this).attr("idRol");
    var estadoRol = $(this).attr("estadoRol");
    // console.log(idRol)
    var datos = new FormData();
    datos.append("activarid", idRol);
    datos.append("activarRol",estadoRol);

    $.ajax({
        
      url:"ajax/mantenimiento.ajax.php",
      method:"POST",
      data: datos,
      cache: false,
      contentType:false,
      processData:false,
      success:function(respuesta){ 
        //   console.log(respuesta)
     } 

    }) 

    if(estadoRol == 0){
        $(this).removeClass('btn-success');
        $(this).addClass('btn-danger');
        $(this).html('Desactivado');
        $(this).attr('estadoRol',1);

    }else{


        $(this).addClass('btn-success');
        $(this).removeClass('btn-danger');
        $(this).html('Activado');
        $(this).attr('estadoRol',0);

    }

})

/*=====================================
    ACTIVAR PERMISOS ROL
========================================*/
$(document).on("click", ".btnActivarPermisos", function(){

    var idPermiso = $(this).attr("idPermiso");
    var estadoPermiso = $(this).attr("estadoPermiso");
    var tipoPermiso = $(this).attr("tipoPermiso");

    // console.log(idPermiso)
    // console.log(estadoPermiso)
    // console.log(tipoPermiso)

    // return;

    var datos = new FormData();
    datos.append("idPermiso", idPermiso);
    datos.append("estadoPermiso", estadoPermiso);
    datos.append("tipoPermiso", tipoPermiso);


    $.ajax({
        
      url:"ajax/mantenimiento.ajax.php",
      method:"POST",
      data: datos,
      cache: false,
      contentType:false,
      processData:false,
      success:function(respuesta){ 
        //   console.log(respuesta)
     } 

    }) 

    if(estadoPermiso == 0){

        $(this).removeClass('btn-success');
        $(this).addClass('btn-danger');
        $(this).html('No');
        $(this).attr('estadoPermiso',1);

    }else{

        $(this).addClass('btn-success');
        $(this).removeClass('btn-danger');
        $(this).html('Si');
        $(this).attr('estadoPermiso',0);

    }

})

/*=====================================
    ACTIVAR INSCRIPCIONES
========================================*/
$(document).on("click", ".btnActivarInscripcion", function(){

    var idInscripcion = $(this).attr("idInscripcion");
    var estadoInscripcion = $(this).attr("estadoInscripcion");
    // console.log(idInscripcion)
    var datos = new FormData();
    datos.append("activarid", idInscripcion);
    datos.append("activarInscripcion",estadoInscripcion);

    $.ajax({
        
      url:"ajax/mantenimiento.ajax.php",
      method:"POST",
      data: datos,
      cache: false,
      contentType:false,
      processData:false,
      success:function(respuesta){ 
        //   console.log(respuesta)
     } 

    }) 

    if(estadoInscripcion == 0){
        $(this).removeClass('btn-success');
        $(this).addClass('btn-danger');
        $(this).html('Desactivado');
        $(this).attr('estadoInscripcion',1);

    }else{


        $(this).addClass('btn-success');
        $(this).removeClass('btn-danger');
        $(this).html('Activado');
        $(this).attr('estadoInscripcion',0);

    }

})

/*=====================================
    ACTIVAR MATRICULA
========================================*/
$(document).on("click", ".btnActivarMatricula", function(){

    var idMatricula = $(this).attr("idMatricula");
    var estadoMatricula = $(this).attr("estadoMatricula");
    // console.log(idMatricula)
    var datos = new FormData();
    datos.append("idMatricula", idMatricula);
    datos.append("estadoMatricula",estadoMatricula);

    $.ajax({
      url:"ajax/mantenimiento.ajax.php",
      method:"POST",
      data: datos,
      cache: false,
      contentType:false,
      processData:false,
      success:function(respuesta){ 
        //   console.log(respuesta)
     } 

    }) 

    if(estadoMatricula == 0){
        $(this).removeClass('btn-success');
        $(this).addClass('btn-danger');
        $(this).html('Desactivado');
        $(this).attr('estadoMatricula',1);

    }else{


        $(this).addClass('btn-success');
        $(this).removeClass('btn-danger');
        $(this).html('Activado');
        $(this).attr('estadoMatricula',0);

    }

})

/*=====================================
    ACTIVAR DESCUENTO
========================================*/
$(document).on("click", ".btnActivarDescuento", function(){

    var idDescuento = $(this).attr("idDescuento");
    var estadoDescuento = $(this).attr("estadoDescuento");
    // console.log(idDescuento)
    var datos = new FormData();
    datos.append("idDescuento", idDescuento);
    datos.append("estadoDescuento",estadoDescuento);

    $.ajax({
        
      url:"ajax/mantenimiento.ajax.php",
      method:"POST",
      data: datos,
      cache: false,
      contentType:false,
      processData:false,
      success:function(respuesta){ 
        //   console.log(respuesta)
     } 

    }) 

    if(estadoDescuento == 0){
        $(this).removeClass('btn-success');
        $(this).addClass('btn-danger');
        $(this).html('Desactivado');
        $(this).attr('estadoDescuento',1);

    }else{


        $(this).addClass('btn-success');
        $(this).removeClass('btn-danger');
        $(this).html('Activado');
        $(this).attr('estadoDescuento',0);

    }

})

/*=====================================
    ACTIVAR DOCUMENTO
========================================*/
$(document).on("click", ".btnActivarDocumento", function(){

    var idDocumento = $(this).attr("idDocumento");
    var estadoDocumento = $(this).attr("estadoDocumento");
    // console.log(idDocumento)
    var datos = new FormData();
    datos.append("idDocumentoActivar", idDocumento);
    datos.append("estadoDocumento",estadoDocumento);

    $.ajax({
        
      url:"ajax/mantenimiento.ajax.php",
      method:"POST",
      data: datos,
      cache: false,
      contentType:false,
      processData:false,
      success:function(respuesta){ 
        //   console.log(respuesta)
     } 

    }) 

    if(estadoDocumento == 0){
        $(this).removeClass('btn-success');
        $(this).addClass('btn-danger');
        $(this).html('Desactivado');
        $(this).attr('estadoDocumento',1);

    }else{


        $(this).addClass('btn-success');
        $(this).removeClass('btn-danger');
        $(this).html('Activado');
        $(this).attr('estadoDocumento',0);

    }

})




//** ------------------------------------*/
//         IMPRIMIR PDF INSCRIPCiON
// --------------------------------------*/ 
exportarPdf('.btnExportarInscripcion', 'inscripcion');

//** ------------------------------------*/
//         IMPRIMIR PDF MATRICULA
// --------------------------------------*/ 
exportarPdf('.btnExportarMatricula', 'matricula');

//** ------------------------------------*/
//         IMPRIMIR PDF DESCUENTO
// --------------------------------------*/ 
exportarPdf('.btnExportarDescuento', 'descuento');

//** ------------------------------------*/
//         IMPRIMIR PDF ROl
// --------------------------------------*/ 
exportarPdf('.btnExportarRol', 'rol');

//** ------------------------------------*/
//         IMPRIMIR PDF Parametros
// --------------------------------------*/ 
exportarPdf('.btnExportarParametro', 'parametross');

//** ------------------------------------*/
//         IMPRIMIR PDF Parametros
// --------------------------------------*/ 
exportarPdf('.btnExportarAdministrar', 'administrarrol');


















$(document).ready(function () {

    $('.chkAutoriza').change(function () {
        if ($(this).prop('checked')) {
            $('.chkRechaza').prop('checked', false);
        }
    });

    $('.chkRechaza').change(function () {
        if ($(this).prop('checked')) {
            $('.chkAutoriza').prop('checked', false);
        }
    });
});