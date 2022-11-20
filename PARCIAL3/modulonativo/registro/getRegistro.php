<?php
$registro["codigoProducto"] = "PR00001";
$registro["nombreProducto"] = "PAPAS SABRITAS ORIGINAL";
$registro["departamento"] = "Botanas";
$registro["proveedorProducto"] = "SABRITAS";
$registro["codigoProveedor"] = "EP-12345";
$registro["precioCompra"] = "9.00";
$registro["precioVenta"] = "12.50";
$registro["cantProdVendidos"] = "50";
$registro["cantProdExistentes"] = "5";
$registro["estadoProducto"] = "Poco Inventario";

echo json_encode($registro);
?>