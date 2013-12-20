function validarRegistro() {
    var nombre = $("#txt-nombre").val();
    var email = $("#txt-email").val();
    var usuario = $("#txt-username").val();
    var pwd = $("#txt-pwd").val();
    var pwdcnf = $("#txt-pwd-confirm").val();
    
    expRegNombre = /^[a-zA-ZÃ‘Ã±ÃÃ¡Ã‰Ã©ÃÃ­Ã“Ã³ÃšÃº\s]+$/;
    expRegEmail = /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/;

    if (nombre == "" || nombre == undefined || nombre == 0) {
        alertify.error("Ingrese Nombre");
        $("#txt-nombre").focus();
        return false;
    }
    
    if(!expRegNombre.exec(nombre)){
        alertify.error("Ingrese Nombre Valido");
        $("#txt-nombre").focus();
        return false;
    }

    if (email == "" || email == undefined || email == 0) {
        alertify.error("Ingrese Email");
        $("#txt-email").focus();
        return false;
    }
    
    if(!expRegEmail.exec(email)){
            alertify.error("Ingrese Email Valido");
            $("#txt-email").focus();
            return false;
    }

    if (usuario == "" || usuario == undefined || usuario == 0) {
        alertify.error("Ingrese Usuario");
        $("#txt-username").focus();
        return false;
    }

    if (pwd == "" || pwd == undefined || pwd == 0) {
        alertify.error("Ingrese Password");
        $("#txt-pwd").focus();
        return false;
    }

    if (pwdcnf == "" || pwdcnf == undefined || pwdcnf == 0) {
        alertify.error("Confirme Password");
        $("#txt-pwd-confirm").focus();
        return false;
    }

    if (pwd != pwdcnf) {
        alertify.error("El Password debe coincidir");
        $("#txt-pwd-confirm").focus();
        return false;
    }

    return true;

}

//$(document).ready(function(){
//	$('#frm-usuario').validate({
//		errorElement: "span",
//		rules: {
//		    txtnombre: {
//		     	minlength: 2,
//		        required: true
//		    }
//		},
//		highlight: function(element) {
//			$(element).closest('.control-group')
//			.removeClass('success').addClass('error');
//		},
//		success: function(element) {
//			element
//			.text('OK!').addClass('help-inline')
//			.closest('.control-group')
//			.removeClass('error').addClass('success');
//		}
//	});
//});

