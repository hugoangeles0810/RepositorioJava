<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <link href="../static/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="../static/css/estilos.css" rel="stylesheet"/>
        <script src="../static/js/jquery-1.10.2.min.js"></script>
        <script src="../static/js/bootstrap.min.js"></script>
        <title>Diario UTI</title>
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
                        <li class="nav-header">Usuario</li>
                        <li class="active"><a href="diario.html">Adminintrar usuario</a></li>
                    </ul>
                </nav>
                <section class="span9">
                    <blockquote>
                        <h3>Nuevo Usuario</h3>
                    </blockquote>
                    <f:form method="post" action="usuario-item.html" class="form-horizontal" commandName="usuario">
                        <div class="control-group">
                            <label class="control-label" >Nombre</label>
                            <div class="controls">
                                <f:input path="nombre" placeholder="Ingresa el nombre completo" cssClass="input-xlarge"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >Usuario</label>
                            <div class="controls">
                                <f:input path="usuarioId" placeholder="Ingresa nombre de usuario" cssClass="input-xlarge"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success">Registrar Usuario</button>                                
                            </div>
                        </div>
                    </f:form>
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
                <footer></footer>
            </div>
        </div>

    </body>
</html>
