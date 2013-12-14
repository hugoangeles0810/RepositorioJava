<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <link href="static/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="static/css/estilos.css" rel="stylesheet"/>
        <script src="static/js/jquery-1.10.2.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <title>DIARIO UTI</title>
    </head>

    <body>
        <div class="container-fluid">
            <div class="row-fluid">                
                <header>    
                    <blockquote>
                        <h1>DIARIO UTI</h1>
                        <small>${user}, ${role}</small>
                    </blockquote>
                    <a href="<c:url value="/j_spring_security_logout"/>" class="btn btn-danger btn-mini btn-logout">Sacame de aqui!</a>
                </header>                             
                <hr/>
            </div>
            <div class="row-fluid">
                <nav class="span3">
                    <ul class="nav nav-list">
                        <li class="nav-header">Requerimiento</li>
                        <li class="active"><a href="diario.html">comentario diario</a></li>
                        <li><a href="requerimiento.html">generar requerimiento</a></li>
                        <li class="nav-header">Retrospectiva</li>
                        <li><a href="#">lo bueno</a></li>
                        <li><a href="#">lo feo o malo</a></li>
                        <li><a href="#">sugerencias e ideas</a></li>
                    </ul>
                </nav>
                <section class="span9">
                    <f:form method="post" action="listar-item.html" class="form-inline" commandName="item2">
                        <f:select path="usuario.usuarioId" cssClass="input-xlarge">
                            <f:options items="${usuarios}" itemValue="usuarioId" itemLabel="nombre" />
                        </f:select>
                        <f:select path="requerimiento.requerimientoId">
                            <f:options items="${requerimientos}" itemValue="requerimientoId" itemLabel="codigo" />
                        </f:select>
                        <button type="submit" class="btn">Listar</button>
                    </f:form>
                    <table class="table table-striped table-bordered table-hover table-condensed">
                        <thead>
                            <tr>
                                <th class="span2">Fecha</th>
                                <th>Comentario</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="item" items="${items}">
                                <tr>
                                    <td>${item.fecha}</td>
                                    <td>${item.comentario}</td>
                                </tr>
                            </c:forEach>                    
                        </tbody>
                    </table>
                </section>
            </div>
            <div class="row-fluid">
                <footer></footer>
            </div>
        </div>

    </body>
</html>
