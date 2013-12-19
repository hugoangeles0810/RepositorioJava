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
        <script src="static/js/jquery-1.10.2.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
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
                    <f:form method="post" action="usuario-item.html" class="form-horizontal" commandName="usuario">
                        <div class="control-group">
                            <label class="control-label" >Nombre</label>
                            <div class="controls">
                                <f:input path="nombre" placeholder="Ingresa Nombre Completo" cssClass="input-xlarge"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >E-mail</label>
                            <div class="controls">
                                <f:input path="correo" placeholder="Ingresa Correo" cssClass="input-xlarge"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >Usuario</label>
                            <div class="controls">
                                <f:input path="usuario" placeholder="Ingresa Usuario" cssClass="input-large"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >Password</label>
                            <div class="controls">
                                <f:password path="password" id="password" placeholder="Ingresa Contraseña" cssClass="input-large"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >Confirmar</label>
                            <div class="controls">
                                <f:password path="" id="password-cnf" placeholder="Confirmar Contraseña" cssClass="input-large"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success">Registrar Usuario</button>                                
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
