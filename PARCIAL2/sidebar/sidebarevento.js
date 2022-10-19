window.onload = function() {
    document.getElementById("btn").addEventListener("click",alternarMenu);

    function alternarMenu() {
        document.getElementById("sb").classList.toggle("MenuEscondido");
        document.getElementById("ct").classList.toggle("ContenidoMargenCero");
    }
}/*
window.onload=function()
{
    document.getElementById("btnMenu").addEventListener("click",function()
    {
        document.getElementById("barralat").classList.toggle("escondido");
    })
}*/
