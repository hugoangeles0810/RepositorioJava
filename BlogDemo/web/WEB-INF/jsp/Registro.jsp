<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c_rt" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="es">
    <head>
        <meta charset="UTF-8"/>     
        <link href="static/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="static/css/estilos.css" rel="stylesheet"/>
        <link href="static/css/alertify.bootstrap.css" rel="stylesheet"/>
        <link href="static/css/alertify.core.css" rel="stylesheet"/>
        <link href="static/css/alertify.default.css" rel="stylesheet"/>
        <script src="static/js/jquery-1.10.2.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/js/alertify.js"></script>
        <script src="static/js/registro.js"></script>
        <title>Blogers v1.0</title>
    </head>

    <body>
        <div class="container">
            <div class="row">
                <header class="span12">
                    <blockquote>
                        <h1>Nuevo Usuario</h1>
                    </blockquote>
                </header>
                <hr/>
            </div>            
            <div class="row">
                <section class="well">
                    <f:form method="post" action="usuario-item.html" class="form-horizontal" commandName="usuario" id="frm-usuario">
                        <div class="control-group">
                            <label class="control-label" >Nombre</label>
                            <div class="controls">
                                <f:input path="nombre" placeholder="Ingresa Nombre Completo" cssClass="input-xlarge" id="txt-nombre" />
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >E-mail</label>
                            <div class="controls">
                                <f:input path="correo" placeholder="Ingresa Correo" cssClass="input-xlarge" id="txt-email"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >Usuario</label>
                            <div class="controls">
                                <f:input path="usuario" placeholder="Ingresa Usuario" cssClass="input-large" id="txt-username"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >Password</label>
                            <div class="controls">
                                <f:password path="password" placeholder="Ingresa Contraseña" cssClass="input-large" id="txt-pwd"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >Confirmar</label>
                            <div class="controls">
                                <f:password path="" placeholder="Confirmar Contraseña" cssClass="input-large" id="txt-pwd-confirm"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success" id="btn-enviar">Registrar Usuario</button>                                
                            </div>
                        </div>
                    </f:form>
                </section>
            </div>
            <div class="row-fluid">
                <jsp:include page="tags/Footer.jsp"/>
            </div>
        </div>
    </body>
    <script>
        $("#frm-usuario").submit(function() {
            event.preventDefault();

            var r = validarRegistro();

            if (r) {
                var usuario = $("#frm-usuario").serialize();
                $.post("registro.html", usuario, function(response) {
                    switch (response.mensaje) {
                        case "Exito":
                            alertify.success("Exito: Usuario Registrado");
                            setTimeout(function() {
                                window.location = "http://localhost:8084/BlogDemo/logon.html";
                            }, "2000");
                            break;

                        case "Error":
                            alertify.error("Usuario No Registrado");
                            break;

                        default :
                            alertify.error(response.mensaje);
                            break;
                    }
                });

            }


        });
    </script>
</html>
