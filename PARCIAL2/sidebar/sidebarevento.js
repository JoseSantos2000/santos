window.onload = function() {
    document.getElementById("btn").addEventListener("click",alternarMenu);

    function alternarMenu() {
        document.getElementById("sb").classList.toggle("MenuEscondido");
        document.getElementById("ct").classList.toggle("ContenidoMargenCero");
    }
}
