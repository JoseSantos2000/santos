<?php
$servidor = "localhost";
$basedatos = "web18100496";
$usuario = "root";
$password = "123456";

$con = mysqli_connect($servidor,$usuario,$password,$basedatos) or die("No se pudo conectar a localhost");
$con -> set_charset("utf8");
$consulta = "select * from registroempleados";
$registros = mysqli_query($con,$consulta) or die("Problemas en el select");

$result = mysqli_fetch_all($registros,MYSQLI_ASSOC);
mysqli_close($con);
echo json_encode($result);
?>
