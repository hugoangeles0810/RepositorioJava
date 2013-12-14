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
                        <h3>Nuevo Requerimiento</h3>
                    </blockquote>
                    <f:form method="post" action="add-requerimiento.html" class="form-horizontal" commandName="requerimiento">
                        <div class="control-group">
                            <label class="control-label" >Tipo</label>
                            <div class="controls">
                                <f:select path="tipo" cssClass="input-xlarge">
                                    <option value="RU">REQUERIMIENTO DE USUARIO</option>
                                    <option value="RE">REQUERIMIENTO DE ERROR</option>
                                    <option value="BO">REQUERIMIENTO DE HUGO</option>
                                </f:select>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" >Titulo</label>
                            <div class="controls">
                                <f:textarea path="descripcion" placeholder="Ingresa el titulo para el requerimiento" cssClass="input-xxlarge"/>
                            </div>
                        </div>
                            <div class="control-group">
                            <label class="control-label" >Valor</label>
                            <div class="controls">
                                <f:input path="valor" placeholder="valor" cssClass="input-small"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success">Registrar Requerimiento</button>                                
                            </div>
                        </div>
                    </f:form>
                    <hr/>
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
                <jsp:include page="tags/Footer.jsp"/>
            </div>
        </div>

    </body>
</html>
