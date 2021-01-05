//***VALIDACIONES */
longitudString($('.nuevoUsuario'),50); //Longitud Input Usuario
// validarEmail($('.email')); //Validar que no exista en DB, email de la persona ingresada
$('.id').keydown(impedirEspacios); //Impedir espacios, input identidad
//***VALIDACIONES EN EL IMPUT APELLIDO */
$('.apellidos').keydown(sinCaracteres)
$('.apellidos').keydown(sinNumeros)
$('.apellidos').keydown(permitirUnEspacio);
longitudString($('.apellidos'),30); 
//***VALIDACIONES EN EL IMPUT USUARIO */
$('.nuevoUsuario').keydown(impedirEspacios)
$('.nuevoUsuario').keydown(sinNumeros)
$('.nuevoUsuario').keydown(sinCaracteres)
//***VALIDACIONES EN EL IMPUT NOMBRE*/
$('.nombre').keydown(permitirUnEspacio);
longitudString($('.nombre'),30);

//** MOSTRAR TIPO DE PERSONA */
function toggleUser(){
    var container = document.querySelector('.card');
    container.classList.toggle('emplea');
}
function toggleCliente(){
    var container = document.querySelector('.card');
    container.classList.toggle('clien');
}

$(".agregarEmpleado").hide();
$(".agregarCliente").hide();

$("#tipoPersona").on("change",function(){

    var valor = $(this).val();
    var formInput = $('.agregarPersona');
    var selector = $('input[type="text"]', formInput);
    console.log(valor);

    
    if(valor === "empleado"){
        $('#btnSiguiente a').remove('.aCliente');
        $('#btnSiguiente').append('<a href="#" class="btn btn-primary aEmpleado float-right">Siguiente</a>');
        $(".agregarEmpleado").show();
        $(".agregarCliente").hide();
        $('#btnSiguiente').click(function () {
            if(validarInputsVacios(selector) == false){
            console.log(valor);
                // toggleCliente();
                toggleUser();
            } else {
                Swal.fire({
                    title: "Por favor llene todos los campos.",
                    icon: "error",
                    background: "#FFADAD",
                    toast: true,
                    position: "top",
                    showConfirmButton: false,
                    timer: 3000
                });
            }
        });        
    } else {
        $('#btnSiguiente a').remove('.aEmpleado');
        $(".agregarEmpleado").hide();
        $('#btnSiguiente').append('<a href="#" class="btn btn-primary aCliente float-right">Siguiente</a>');
        $(".agregarCliente").show();
        $('#btnSiguiente').click(function () {
            if(validarInputsVacios(selector) == false){
            console.log(valor);
                // toggleUser();
                toggleCliente();
            } else {
                Swal.fire({
                    title: "Por favor llene todos los campos.",
                    icon: "error",
                    background: "#FFADAD",
                    toast: true,
                    position: "top",
                    showConfirmButton: false,
                    timer: 3000
                });
            }
        });
    }
})



//** FUNCION VALIDAR QUE TODOS LOS INPUTS ESTEN LLENOS */
function validarInputsVacios(selector) {       
    var inputs = selector.toArray().some(function (el) {  
        return $(el).val().length < 1;
    });
    
    // console.log(inputs);
    return inputs;
}



//** GENERAR CONTRASEÑAS ALEATORIAMENTE */
$('.generarPassword').on('click', function () {
    var clave = generar_contrasenya(10);
    $('.passwordGenerado').val(clave);
    if(/^(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%+.])\S{8,16}$/.test(clave)){
        $('.passwordGenerado').addClass('border-valid').removeClass('border-invalid');
        // console.log('bien');
    } else {
        $('.passwordGenerado').addClass('border-invalid').removeClass('border-valid');
        // console.log('mal');
    }
    // console.log(clave);
});

//** FUNCION PARA GENERAR CONTRASEÑAS ALEATORIAMENTE */
function generar_contrasenya(longitud){

    var $tamanyo_password				=	longitud;	 // definimos el tamaño que tendrá nuestro password
    var $caracteres_conseguidos			=	0;			 // contador de los caracteres que hemos conseguido
    var caracter_temporal				=	'';
    var array_caracteres				=	new Array(); // array para guardar los caracteres de forma temporal
        
    for(var i = 0; i < $tamanyo_password; i++){		     // inicializamos el array con el valor null
        array_caracteres[i]	=	null;
    }

    var password_definitivo				=	'';
    var numero_minimo_letras_minusculas	=	1;			// en ésta y las siguientes variables definimos cuántos 
    var numero_minimo_letras_mayusculas	=	1;			// caracteres de cada tipo queremos en cada 
    var numero_minimo_numeros			=	2;
    var numero_minimo_simbolos			=	1;

    var letras_minusculas_conseguidas 	=	0;
    var	letras_mayusculas_conseguidas	=	0;
    var	numeros_conseguidos				=	0;
    var	simbolos_conseguidos			=	0;

 

    // función que genera un número aleatorio entre los límites superior e inferior pasados por parámetro
    function genera_aleatorio(i_numero_inferior, i_numero_superior) {
        var     i_aleatorio  =   Math.floor((Math.random() * (i_numero_superior - i_numero_inferior + 1)) + i_numero_inferior);
        return  i_aleatorio;
    }
    
    
    // función que genera un tipo de caracter en base al tipo que se le pasa por parámetro (mayúscula, minúscula, número, símbolo o aleatorio)
    function genera_caracter(tipo_de_caracter){
    // hemos creado una lista de caracteres específica, que además no tiene algunos caracteres como la "i" mayúscula ni la "l" minúscula para evitar errores de transcripción
        var lista_de_caracteres	=	'!@#$%+.23456789ABCDEFGHJKLMNPQRSTUVWXYZabcdefghjkmnpqrstuvwxyz';
        var caracter_generado	=	'';
        var valor_inferior		=	0;
        var valor_superior		=	0;
        
        switch (tipo_de_caracter){
            case 'minúscula':
                valor_inferior	=	38;
                valor_superior	=	61;
                break;
            case 'mayúscula':
                valor_inferior	=	14;
                valor_superior	=	37;
                break;
            case 'número':
                valor_inferior	=	6;
                valor_superior	=	13;
                break;
            case 'símbolo':	
                valor_inferior	=	0;
                valor_superior	=	5;
                break;
            case 'aleatorio':
                valor_inferior	=	0;
                valor_superior	=	61;
        
        } // fin del switch
        
        caracter_generado	=	lista_de_caracteres.charAt(genera_aleatorio(valor_inferior, valor_superior));
        return caracter_generado;
    } // fin de la función genera_caracter()
    
    
    // función que guarda en una posición vacía aleatoria el caracter pasado por parámetro
    function guarda_caracter_en_posicion_aleatoria(caracter_pasado_por_parametro){
        var guardado_en_posicion_vacia	=	false;
        var posicion_en_array			=	0;
        
        while(guardado_en_posicion_vacia	!=	true){
            posicion_en_array	=	genera_aleatorio(0, $tamanyo_password-1);	// generamos un aleatorio en el rango del tamaño del password
        
            // el array ha sido inicializado con null en sus posiciones. Si es una posición vacía, guardamos el caracter
            if(array_caracteres[posicion_en_array] == null){
                array_caracteres[posicion_en_array]	=	caracter_pasado_por_parametro;
                guardado_en_posicion_vacia			=	true;
            }
        }
    }
    
    // generamos los distintos tipos de caracteres y los metemos en un password_temporal
    while (letras_minusculas_conseguidas < numero_minimo_letras_minusculas){
        caracter_temporal	=	genera_caracter('minúscula');
        guarda_caracter_en_posicion_aleatoria(caracter_temporal);
        letras_minusculas_conseguidas++;
        $caracteres_conseguidos++;
    }

    while (letras_mayusculas_conseguidas < numero_minimo_letras_mayusculas){
        caracter_temporal	=	genera_caracter('mayúscula');
        guarda_caracter_en_posicion_aleatoria(caracter_temporal);
        letras_mayusculas_conseguidas++;
        $caracteres_conseguidos++;
    }

    while (numeros_conseguidos < numero_minimo_numeros){
        caracter_temporal	=	genera_caracter('número');
        guarda_caracter_en_posicion_aleatoria(caracter_temporal);
        numeros_conseguidos++;
        $caracteres_conseguidos++;
    }

    while (simbolos_conseguidos < numero_minimo_simbolos){
        caracter_temporal	=	genera_caracter('símbolo');
        guarda_caracter_en_posicion_aleatoria(caracter_temporal);
        simbolos_conseguidos++;
        $caracteres_conseguidos++;
    }

    // si no hemos generado todos los caracteres que necesitamos, de forma aleatoria añadimos los que nos falten
    // hasta llegar al tamaño de password que nos interesa
    while ($caracteres_conseguidos < $tamanyo_password){
        caracter_temporal	=	genera_caracter('aleatorio');
        guarda_caracter_en_posicion_aleatoria(caracter_temporal);
        $caracteres_conseguidos++;
    }

    // ahora pasamos el contenido del array a la variable password_definitivo
    for(var i=0; i < array_caracteres.length; i++){
        password_definitivo	=	password_definitivo + array_caracteres[i];
    }
    return password_definitivo;
}

