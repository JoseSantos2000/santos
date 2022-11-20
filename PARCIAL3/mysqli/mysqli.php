<?php

$servidor = "localhost";
$basedatos = "ejemplo";
$usuario = "root";
$password = "";

$con = mysql_connect($servidor,$usuario,$password,$basedatos) or die("No se pudo conectar a localhost");
$consulta = "select * from empleado";
$registros = mysql_query($con,$consulta) or die("Problemas en el select");

// Resultado como array asociativo
while($reg = mysql_fetch_array($registros,MYSQLI_ASSOC))
{
    print($reg['nombre'].' '.$reg['apPaterno'].'<br>');
}

// Resultado como array numérico
while($reg = mysql_fetch_array($registros,MYSQLI_NUM))
{
    print($reg[1].' '.$reg[2].'<br>');
}

// Obtiene todos los registros de la consulta con una matriz
$result = mysql_fetch_all($registros);
// var_dump($result);

$mysql_close($con);
echo json_encode($result); //Se convierte a json y se lo pasamos al cliente
?>
