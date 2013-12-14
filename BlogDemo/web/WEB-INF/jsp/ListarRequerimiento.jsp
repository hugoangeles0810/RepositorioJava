<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <link href="static/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="static/css/custom-theme/jquery-ui-1.10.0.custom.css" rel="stylesheet"/>
        <link href="static/css/estilos.css" rel="stylesheet"/>
        <script src="static/js/jquery-1.10.2.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <script src="static/js/jquery-ui-1.9.2.custom.min.js"></script>
        <script src="static/js/diarioru.js"></script>
        <title>RU</title>
    </head>

    <body>
        <div class="container-fluid">
            <div class="row-fluid">                
                <jsp:include page="tags/Header.jsp"/>
            </div>
            <div class="row-fluid">
                <nav class="span3 well">
                    <jsp:include page="tags/Menu.jsp"/>
                </nav>
                <section class="span9">
                    <f:form method="post" action="listar-requerimiento.html" class="form-horizontal" commandName="item1">
                        <div class="control-group">
                            <div class="control-label">
                                Usuario :
                            </div>
                            <div class="controls">
                                <f:select path="usuario.codigo" cssClass="input-xlarge">
                                    <f:options items="${usuarios}" itemValue="codigo" itemLabel="nombreCompleto" />
                                </f:select>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="control-label">
                                Busqueda Sensitiva :
                            </div>
                            <div class="controls">
                                <input type="text" id="buscar-requerimiento"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="control-label">
                                DatePicker :
                            </div>
                            <div class="controls">
                                <div class="input-prepend">
                                    <span class="add-on"><i class="icon-calendar"></i></span>
                                    <input type="text" placeholder="fecha" class="input-medium datepicker">
                                </div>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="control-label">
                            </div>
                            <div class="controls">
                                <input type="submit" value="Filtrar" class="btn"/>
                            </div>
                        </div>
                    </f:form>
                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <thead>
                            <tr>
                                <th class="span2">Fecha</th>
                                <th>Requerimiento</th>
                                <th>Titulo</th>
                                <th>Usuario</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="requerimiento" items="${requerimientos}">
                                <tr>
                                    <td>${fn:substring(requerimiento.fecha_creacion,0,10)}</td>
                                    <td><b>${requerimiento.codigo}</b></td>
                                    <td>${requerimiento.descripcion}</td>
                                    <td>${requerimiento.usuario.codigo}</td>
                                </tr>
                            </c:forEach>                    
                        </tbody>
                    </table>
                </section>
            </div>
            <div class="row-fluid">
                <jsp:include page="tags/Footer.jsp"/>
            </div>
        </div>

    </body>
</html>
