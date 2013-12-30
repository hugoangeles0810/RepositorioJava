<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="static/css/bootstrap.min.css" rel="stylesheet"/>
        <link href="static/css/estilos.css" rel="stylesheet"/>
        <script src="static/js/jquery-1.10.2.min.js"></script>
        <script src="static/js/bootstrap.min.js"></script>
        <title>Blogers v1.0</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row-fluid">
                <jsp:include page="tags/Header.jsp" />
            </div>
            <div class="row-fluid">
                <nav class="span3 well">
                    <jsp:include page="tags/Menu.jsp" />
                </nav>
                <section class="span9">
                    <blockquote>
                        <h3>Blog de ${user}</h3>
                    </blockquote>
                    <div id="contenido">
                        
                    </div>
                </section>
            </div>
        </div>
    </body>
</html>
