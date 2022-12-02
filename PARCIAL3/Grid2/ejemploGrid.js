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
                { name: "IdEmpleado", title: "IdEmpleado", type: "number", width: 70, validate: "required"},
                { name: "Nombre", title: "Nombre", type: "text", width: 160},
                { name: "Nombre2", title: "Segundo Nombre", type: "text", width: 160},
                { name: "Apellido", title: "Apellido Paterno", type: "text", width: 160},
                { name: "Apellido2", title: "Apellido Materno", type: "text", width: 160},
                { name: "Puesto", title: "Puesto", type: "text", width: 160},
                { name: "Telefono", title: "Telefono", type: "text", width: 160},
                { name: "Sexo", title: "Sexo", type: "text", width: 160},                
                { type: "control" }
            ]
        }
    );
});
