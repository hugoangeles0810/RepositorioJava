function validarRegistro(){
    var titulo = $("#txt-titulo").val();
    var articulo = $("#txt-articulo").val();
    
    if (titulo == "" || titulo == undefined || titulo == 0) {
        alertify.error("Ingrese Titulo");
        $("#txt-titulo").focus();
        return false;
    }
    
    if (articulo == "" || articulo == undefined || articulo == 0) {
        alertify.error("Ingrese Articulo");
        $("#txt-articulo").focus();
        return false;
    }
    
    return true;
}