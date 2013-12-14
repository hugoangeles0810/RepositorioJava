<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/security/tags" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

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
                    <blockquote>
                        <h3>Sprint</h3>
                    </blockquote>
                    <form class="form-horizontal">
                        <div class="control-group">
                            <label class="control-label">Producto</label>
                            <div class="controls">
                                <input type="text" readonly="true" value="${sprint.sprintPK.producto}" />                                
                            </div>
                        </div>
                    </form>
                    <f:form method="post" action="add-release.html" class="form-horizontal" commandName="sprint">
                        <f:hidden path="sprintPK.producto"/>
                        <div class="control-group">
                            <label class="control-label">Release</label>
                            <div class="controls">
                                <f:input path="sprintPK.release" cssClass="input-small" readonly="true"/>
                                <button type="submit" class="btn btn-success btn-mini">Aumentar Release</button>
                            </div>
                        </div>
                    </f:form>
                    <f:form method="post" action="add-sprint.html" class="form-horizontal" commandName="sprint">
                        <f:hidden path="sprintPK.producto"/>
                        <div class="control-group">
                            <label class="control-label">Sprint</label>
                            <div class="controls">
                                <f:input path="sprintPK.numero" cssClass="input-small" readonly="true"/>
                                <button type="submit" class="btn btn-success btn-mini">Aumentar Sprint</button>
                            </div>
                        </div>
                    </f:form>
                    <hr/>
                    <blockquote>
                        <h3>Sprints</h3>
                    </blockquote>
                    <f:form method="post" action="listar-sprints.html" class="form-horizontal" commandName="sprints">
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn">Listar</button>                              
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
