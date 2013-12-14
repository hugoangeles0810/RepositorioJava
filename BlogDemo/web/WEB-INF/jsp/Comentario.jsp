<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <link href="static/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="static/css/estilos.css" rel="stylesheet"/>
        <script src="static/js/jquery-1.10.2.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
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
                    <blockquote>
                        <h3>Nuevo Comentario</h3>
                    </blockquote>
                    <f:form method="post" action="add-comentario.html" class="form-horizontal" commandName="comentario">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">Usuario</label>
                            <div class="controls">
                                <f:select path="usuario.codigo" cssClass="input-xlarge">
                                    <f:options items="${usuarios}" itemValue="codigo" itemLabel="nombreCompleto" />
                                </f:select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Requerimiento</label>
                            <div class="controls">
                                <f:select path="padreId">
                                    <f:options items="${requerimientos}" itemValue="codigo" itemLabel="codigo" />
                                </f:select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Comentario</label>
                            <div class="controls">
                                <f:textarea path="comentario" placeholder="Ingresa tu comentario diario" cssClass="input-xxlarge"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success">Registrar Comentario</button>                                
                            </div>
                        </div>
                    </f:form>
                    <hr/>
                    <blockquote>
                        <h3>Comentarios</h3>
                    </blockquote>
                    <f:form method="post" action="listar-item.html" class="form-horizontal" commandName="comentario2">
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">Usuario</label>
                            <div class="controls">
                                <f:select path="usuario.codigo" cssClass="input-xlarge">
                                    <f:options items="${usuarios}" itemValue="codigo" itemLabel="nombreCompleto" />
                                </f:select>                                
                            </div>
                        </div>   
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Requerimiento</label>
                            <div class="controls">
                                <f:select path="padreId">
                                    <f:options items="${requerimientos}" itemValue="codigo" itemLabel="codigo" />
                                </f:select>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn">Listar Comentarios</button>                              
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
</html>
