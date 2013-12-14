<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <link href="../static/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="../static/css/estilos.css" rel="stylesheet"/>
        <script src="../static/js/jquery-1.10.2.min.js"></script>
        <script src="../static/js/bootstrap.min.js"></script>
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
                    <c:if test="${not empty error}">
                        <div class="alert <c:if test="${not empty typeError}">alert-${typeError}</c:if>">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            ${error}
                        </div>
                    </c:if>
                    <blockquote>
                        <h3>Nuevo Usuario</h3>
                    </blockquote>
                    <f:form method="post" action="add-usuario.html" class="form-horizontal" commandName="usuario">
                        <div class="control-group">
                            <label class="control-label">Nombre Completo</label>
                            <div class="controls">
                                <f:input path="nombre" placeholder="Nombres" cssClass="input-medium"/>
                                <f:input path="apellidoPaterno" placeholder="Apellido Paterno" cssClass="input-medium"/>
                                <f:input path="apellidoMaterno" placeholder="Apellido Materno" cssClass="input-medium"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label">Nuevo Usuario</label>
                            <div class="controls">
                                <f:input path="codigo" placeholder="Nombre de usuario" cssClass="input-medium"/>
                                <f:password path="password" placeholder="password de usuario" cssClass="input-medium"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success">Registrar Usuario</button>                                
                            </div>
                        </div>
                    </f:form>                    
                    <hr/>
                    <blockquote>
                        <h3>Actualizar Password</h3>
                    </blockquote>
                    <f:form method="post" action="update-password.html" class="form-horizontal" commandName="usuario">
                        <div class="control-group">
                            <label class="control-label">Usuario</label>
                            <div class="controls">
                                <f:select path="codigo">
                                    <f:options items="${usuarios}" itemValue="codigo" itemLabel="codigo"/>
                                </f:select>
                                <f:password path="password" placeholder="nueva password" cssClass="input-medium"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-danger">Setear Password</button>                                
                            </div>
                        </div>
                    </f:form>
                    <hr/>
                    <blockquote>
                        <h3>Usuarios</h3>
                    </blockquote>
                    <f:form method="post" action="listar-usuarios.html" class="form-horizontal">      
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn">Listar Usuarios</button>                              
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
