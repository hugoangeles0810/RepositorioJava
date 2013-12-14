<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="c_rt" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="es">
    <head>
        <meta charset="UTF-8"/>     
        <link href="static/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="static/css/estilos.css" rel="stylesheet"/>
        <script src="static/js/jquery-1.10.2.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <title>RU</title>
    </head>

    <body>
        <div class="container">
            <div class="row">
                <header class="span12">
                    <blockquote>
                        <h1>RU</h1>                        
                    </blockquote>
                </header>
                <hr/>
            </div>            
            <div class="row">
                <section class="well">
                    <form class="form-horizontal" method="POST" action="<c:url value="j_spring_security_check"/>" >
                        <div class="control-group">
                            <label class="control-label" for="inputEmail">Usuario</label>
                            <div class="controls">
                                <input type="text" id="inputEmail" name="j_username" placeholder="Nombre de usuario">
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="inputPassword">Password</label>
                            <div class="controls">
                                <input type="password" id="inputPassword" name="j_password" placeholder="Password">
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <button type="submit" class="btn btn-success">Ingresar</button>
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION.message}">
                                    <span class="alert alert-error">
                                        <span>${SPRING_SECURITY_LAST_EXCEPTION.message}</span>
                                    </span>
                                </c:if>
                            </div>
                        </div>
                    </form>
                </section>
            </div>
            <div class="row-fluid">
                <jsp:include page="tags/Footer.jsp"/>
            </div>
        </div>
    </body>
</html>
