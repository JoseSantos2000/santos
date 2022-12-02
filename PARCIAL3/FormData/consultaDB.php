<?php

// $id = $_POST['idEmpleado'];
$codigo = $_POST['codigoProducto'];

$servidor = "localhost";
$basedatos = "web18100248";
$usuario = "root";
$password = "";

$con = mysqli_connect($servidor,$usuario,$password,$basedatos) or die("No se pudo conectar a localhost");
$con -> set_charset("utf8");
$consulta = "select * from productosAlimenticios where codigoProducto='$codigo'";
$registros = mysqli_query($con,$consulta) or die("Problemas en el select");

$result = mysqli_fetch_array($registros,MYSQLI_ASSOC);
echo json_encode($result);
?>
