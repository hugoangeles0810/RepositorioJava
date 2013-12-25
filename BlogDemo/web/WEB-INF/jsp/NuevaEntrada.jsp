<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
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
        <script src="static/js/Entrada.js"></script>
        <title>Blogers v1.0</title>

    </head>
    <body>
        <script src="static/js/Entrada.js"></script>
        <div class="container-fluid">
            <div class="row-fluid">
                <jsp:include page="tags/Header.jsp" />
            </div>
            <div class="row-fluid">
                <nav class="span3 well">
                    <jsp:include page="tags/Menu.jsp" />
                </nav>
                <section class="span9">
                    <blockquote>
                        <h3>Nueva Entrada</h3>
                    </blockquote>
                    <f:form method="post" class="form-horizontal" commandName="entrada" id="frm-nueva-entrada">
                        <div class="control-group">
                            <label class="control-label" >Titulo</label>
                            <div class="controls">
                                <f:input path="titulo" cssClass="input-xlarge" id="txt-titulo"></f:input>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label" >Contenido</label>
                                <div class="controls">
                                <f:textarea path="articulo" id="txt-articulo" placeholder="Ingresa el contenido de tu entrada" cssClass="input-xxlarge" cssStyle="height: 200px;"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success">Publicar entrada</button>                                
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
        $("#frm-nueva-entrada").submit(function() {
            event.preventDefault();

            var r = validarRegistro();

            if (r) {
                var entrada = $("#frm-nueva-entrada").serialize();
                $.post("guarda-entrada.html", entrada, function(response) {
                    switch (response.mensaje) {
                        case "Exito":
                            alertify.success("Entrada Registrada");
                            setTimeout(function() {
                                window.location = "http://localhost:8084/BlogDemo/home.html";
                            }, "2000");
                            break;

                        case "Error":
                            alertify.error("Entrada No Registrado");
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
