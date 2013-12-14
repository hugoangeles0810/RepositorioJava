<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>    
    <blockquote>
        <h1>RU</h1>
        <small>${user}, ${role}</small>
    </blockquote>
    <a href="<c:url value="/j_spring_security_logout"/>" class="btn btn-danger btn-mini btn-logout">Sacame de aqui!</a>
</header>                             
<hr/>
