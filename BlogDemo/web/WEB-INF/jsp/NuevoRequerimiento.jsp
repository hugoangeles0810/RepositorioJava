<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
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
                        <li><a href="diario.html">comentario diario</a></li>
                        <li class="active"><a href="requerimiento.html">generar requerimiento</a></li>
                        <li class="nav-header">Retrospectiva</li>
                        <li><a href="#">lo bueno</a></li>
                        <li><a href="#">lo feo o malo</a></li>
                        <li><a href="#">sugerencias e ideas</a></li>
                    </ul>
                </nav>
                <section class="span9">
                    <blockquote>
                        <h3>Nuevo Requerimiento</h3>
                    </blockquote>
                    <f:form method="post" action="requerimiento-item.html" class="form-horizontal" commandName="requerimiento">
                        <div class="control-group">
                            <label class="control-label" >Tipo</label>
                            <div class="controls">
                                <f:select path="tipo" cssClass="input-xlarge">
                                    <option value="RU">REQUERIMIENTO DE USUARIO</option>
                                    <option value="RE">REQUERIMIENTO DE ERROR</option>
                                </f:select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >Titulo</label>
                            <div class="controls">
                                <f:textarea path="titulo" placeholder="Ingresa el titulo para el requerimiento" cssClass="input-xxlarge"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success">Registrar Requerimiento</button>                                
                            </div>
                        </div>
                    </f:form>
                    <blockquote>
                        <h3>Requerimientos</h3>
                    </blockquote>
                    <f:form method="post" action="listar-requerimiento.html" class="form-horizontal">      
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn">Listar Requerimientos</button>                              
                            </div>
                        </div>
                    </f:form>
                </section>
            </div>
            <div class="row-fluid">
                <footer></footer>
            </div>
        </div>

    </body>
</html>
