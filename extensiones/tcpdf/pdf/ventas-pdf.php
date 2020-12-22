<?php
require_once("../../../controladores/usuarios.controlador.php");
require_once "../../../modelos/usuarios.modelo.php";
require_once('../../../controladores/ventas.controlador.php');
require_once "../../../modelos/ventas.modelo.php";
require_once('../examples/tcpdf_include.php');
date_default_timezone_set("America/Tegucigalpa");



class PDF extends TCPDF{
    
    // Header de la pagina

    
    public function Header() {
        
        $item="parametro";
        $valor="ADMIN_NOMBRE_EMPRESA";

        $nombreEmpresa = ControladorUsuarios::ctrMostrarParametros($item, $valor);
        // var_dump($nombreEmpresa ['valor']);
        $nombre = $nombreEmpresa ['valor'];
    
        $item="parametro";
        $valor="ADMIN_DIRECCION_EMPRESA";

        $direccionEmpresa = ControladorUsuarios::ctrMostrarParametros($item, $valor);
        // var_dump($direccionEmpresa ['valor']);
        $direccion = $direccionEmpresa ['valor'];
    
        $item="parametro";
        $valor="ADMIN_CORREO";

        $correoEmpresa = ControladorUsuarios::ctrMostrarParametros($item, $valor);
        // var_dump($correoEmpresa ['valor']);
        $correo = $correoEmpresa ['valor'];


        // Logo
        $image_file = K_PATH_IMAGES.'logo_gym.png';
        $this->Image($image_file, 80, 10, 25, '', 'PNG', '', 'T', false, 300, '', false, false, 0, false, false, false);
        
        // Fuente
        $this->Ln(2);
        $this->SetFont('helvetica', 'B', 16);
        
        //establecer el color del texto
        $this->SetTextColor(255,0,0);

        // Title
        // $this->Cell(189, 5, 'GIMNASIO LA "ROCA"', 0, 1, 'C', 0, '', 0, false, 'M', 'M');
        $this->Cell(260, 10, ''.$nombre.'', 0, 1, 'C');
        
        $this->SetTextColor(0,0,0);
        $this->SetFont('helvetica', '', 9);
        // $this->Cell(180, 3, 'Gimnasio La roca', 0, 1, 'C');
        $this->Cell(260, 7, 'Direccion: '.$direccion.'', 0, 1, 'C');
        // $this->Cell(260, 3, 'Calle xxxxxxxxxx.....', 0, 1, 'C');
        $this->Cell(260, 3, 'Correo: '.$correo.'', 0, 1, 'C');

        $this->Ln(20); //Espacios
        $this->SetFont('helvetica', 'B', 14);
        $this->Cell(260, 3, 'REPORTE DE VENTAS', 0, 1, 'C');
        $this->Ln(3);
        $this->SetFont('helvetica', 'B', 11);
        $año = date('Y-m-d');
        // echo $año;

        // $this->Cell(260, 3, 'Del '.$fecha.'', 0, 1, 'C');

        $this->Cell(260, 3, 'Año '.$año.'', 0, 1, 'C');
    }

    // Footer de la pagina
    public function Footer() {
        // Position at 15 mm from bottom
        $this->SetY(-15);
        // Set font
        $this->SetFont('helvetica', 'I', 8);
        // Page number

        $fecha = date('Y-m-d H:i:s');
        $this->Cell(0, 10, ''.$fecha.'', 0, false, 'C', 0, '', 0, false, 'T', 'M');
        $this->Cell(0, 10, 'Page '.$this->getAliasNumPage().'/'.$this->getAliasNbPages(), 0, false, 'C', 0, '', 0, false, 'T', 'M');
    }
}


// Crear un nuevo documento PDF
// $pdf = new MYPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
$pdf = new PDF('l', 'mm', 'A4', true, 'UTF-8', false);

// set document information
$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Jesus Zuniga');
$pdf->SetTitle('Reporte de Ventas');
$pdf->SetSubject('');
$pdf->SetKeywords('');

// set default header data
$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE.' 001', PDF_HEADER_STRING, array(0,64,255), array(0,64,128));
$pdf->setFooterData(array(0,64,0), array(0,64,128));

// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set default monospaced font
$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

// set auto page breaks
$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

// set image scale factor
$pdf->setImageScale(PDF_IMAGE_SCALE_RATIO);

// set some language-dependent strings (optional)
if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
	require_once(dirname(__FILE__).'/lang/eng.php');
	$pdf->setLanguageArray($l);
}

// set default font subsetting mode
$pdf->setFontSubsetting(true);

// Set font
// dejavusans is a UTF-8 Unicode font, if you only need to
// print standard ASCII chars, you can use core fonts like
// helvetica or times to reduce file size.
$pdf->SetFont('dejavusans', '', 14, '', true);

// Add a page
// This method has several options, check the source code documentation for more information.
$pdf->AddPage();

$pdf->Ln(45);

$pdf->SetFont('times', '', 13);
$pdf->SetFillColor(225, 235, 255);
$pdf->Cell(15, 5, 'No', 1, 0, 'C', 1);
$pdf->Cell(30, 5, 'Cod. Factura', 1, 0, 'C', 1);
$pdf->Cell(50, 5, 'Cliente', 1, 0, 'C', 1);
$pdf->Cell(40, 5, 'Productos', 1, 0, 'C', 1);
$pdf->Cell(40, 5, 'Impuesto', 1, 0, 'C', 1);
$pdf->Cell(40, 5, 'Neto', 1, 0, 'C', 1);
$pdf->Cell(40, 5, 'Total', 1, 0, 'C', 1);


// if(isset($_GET["fechaInicial"])){


//     $fechaInicial = $_GET["fechaInicial"];
//     $fechaFinal = $_GET["fechaFinal"];
//     $ventas = ControladorVentas::ctrRangoFechasVentas($fechaInicial, $fechaFinal);

// //     // echo $fechaInicial;
//     // echo $fechaFinal;
// } else {

//     $fechaInicial = null;
//     $fechaFinal = null;
//     $ventas = ControladorVentas::ctrRangoFechasVentas($fechaInicial, $fechaFinal);

// } 

if(isset($_GET["rango"])){


    $rango = $_GET["rango"];
    // $fechaFinal = $_GET["fechaFinal"];
    // $ventas = ControladorVentas::ctrRango($rango);

    // echo $rango;
    // echo $fechaFinal;
} else {

    $rango = null;
    // $fechaFinal = null;
    // $ventas = ControladorVentas::ctrRango($rango);

} 
// echo $fechaInicial;
// echo $fechaFinal;
// return;

$ventas = ControladorVentas::ctrRango($rango);

// var_dump($ventas);
// return;

if(!$ventas){
    // echo 'vacio';
    $pdf->Ln(15);
    $pdf->SetFont('times', '', 12);
    $pdf->Cell(170, 4, '******* NO HAS VENTAS PARA MOSTRAR *******', 0, 0, 'C');


} else {

    $i = 1; //Contador
    $max = 12; //Maximo de registros a mostrar en una pagina

    foreach ($ventas as $key => $value) {

        if(($i%$max) == 0){
            $pdf->AddPage();

            $pdf->Ln(45);
            
            $pdf->SetFont('times', '', 13);
            $pdf->SetFillColor(225, 235, 255);
            $pdf->Cell(15, 5, 'No', 1, 0, 'C', 1);
            $pdf->Cell(30, 5, 'Cod. Factura', 1, 0, 'C', 1);
            $pdf->Cell(50, 5, 'Cliente', 1, 0, 'C', 1);
            $pdf->Cell(40, 5, 'Productos', 1, 0, 'C', 1);
            $pdf->Cell(40, 5, 'Impuesto', 1, 0, 'C', 1);
            $pdf->Cell(40, 5, 'Neto', 1, 0, 'C', 1);
            $pdf->Cell(40, 5, 'Total', 1, 0, 'C', 1);
        }
        // $pdf->Cell(15, 5, ''.$i.'', 1, 0, 'C');

        $pdf->Ln(8);
        $pdf->SetFont('times', '', 12);
        // $pdf->SetFillColor(225, 235, 255);
        $pdf->Cell(15, 4, ''.($key+1).'', 0, 0, 'C');
        $pdf->Cell(30, 4, ''.$value['numero_factura'].'', 0, 0, 'C');
        $pdf->Cell(50, 4, ''.$value['nombre'].' '.$value['apellidos'].'' , 0, 0, 'C');
        $pdf->Cell(40, 4, 'Productos', 0, 0, 'C');
        
        // $decod = json_decode($value['productos']);
        // //   $contador = count($val->descripcion);
        // //   echo ($val->descripcion);
        //   if($key = 0){
        //         // echo 'mas de uno';
        //         $decod = json_decode($value['productos']);
        //         $pdf->Cell(40, 4, 'productos'. .'', 0, 0, 'C');
        //         foreach ($decod as $key => $val) {
        //         // echo  $val->descripcion.',';
        //         }
        //     }
               

            //  echo  $val->descripcion.',';
        //   } 
        //   else {
            // echo  $val->descripcion.', ';
            // echo 'solo uno';
            // $pdf->Cell(55, 4, ''.$val->descripcion.'', 0, 0, 'C');
            // echo  $val->descripcion;

        //   }
        // }

        $pdf->Cell(40, 4, ''.$value['impuesto'].'', 0, 0, 'C');
        $pdf->Cell(40, 4, ''.$value['neto'].'', 0, 0, 'C');
        $pdf->Cell(40, 4, ''.$value['total'].'', 0, 0, 'C');
        $i++;

    }

}

// Close and output PDF document
$pdf->Output('reporte_ventas.pdf', 'I');

?>