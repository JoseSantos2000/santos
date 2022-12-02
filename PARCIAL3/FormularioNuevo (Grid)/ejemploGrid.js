$(document).ready(async function()
{
    let respuesta = await fetch('consultaDB.php')
    let bdJson = await respuesta.json();
    console.log(bdJson);

    $("#jsGrid").jsGrid(
        {
            width: "100%",
            height: "600px",

            inserting: true,
            editing: true,
            sorting: true,
            paging: true,

            data: bdJson,

            fields: [
                { name: "codigoProducto", title: "Código de Producto", type: "text", width: 70, validate: "required"},
                { name: "nombreProducto", title: "Nombre", type: "text", width: 160},
                { name: "departamento", title: "Departamento", type: "text", width: 110},
                { name: "proveedorProducto", title: "Proveedor", type: "text", width: 150},
                { name: "codigoProveedor", title: "Código del Proveedor", type: "text", width: 70},
                { name: "precioCompra", title: "Precio de Compra", type: "number", width: 60},
                { name: "precioVenta", title: "Precio de Venta", type: "number", width: 60},
                { name: "cantProdVendidos", title: "Prod. Vendidos", type: "number", width: 60},
                { name: "cantProdExistentes", title: "Prod. Existentes", type: "number", width: 60},
                { name: "estadoProducto", title: "Estado del Producto", type: "text", width: 70},
                { type: "control" }
            ]
        }
    );
});
