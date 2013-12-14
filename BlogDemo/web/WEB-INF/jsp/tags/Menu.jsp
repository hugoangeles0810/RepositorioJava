<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="nav nav-list">
    
    <!--MENU DE USUARIO-->
    <li class="nav-header">Requerimiento</li>
    <li <c:if test="${menu eq 'Requerimiento'}">class="active"</c:if>>
        <a href="<c:url value="/requerimiento.html"/>">Generar requerimiento</a>
    </li>
    <li <c:if test="${menu eq 'Comentario'}">class="active"</c:if>>
        <a href="<c:url value="/comentar-requerimiento.html"/>">Comentario requerimiento</a>
    </li>
    <li class="nav-header">Retrospectiva</li>
    <li <c:if test="${menu eq 'Retrospectiva'}">class="active"</c:if>>
        <a href="<c:url value="/retrospectiva.html"/>">Sugerencias e ideas</a>
    </li>
     
    
    <!--MENU DE ADMINISTRADOR-->
    <c:if test="${role eq 'ADMINISTRADOR'}">
    <li class="nav-header">Administracion</li>
    <li <c:if test="${menu eq 'Usuario'}">class="active"</c:if>>
        <a href="<c:url value="/admin/usuarios.html"/>">Usuarios</a>
    </li>
    <li <c:if test="${menu eq 'Sprint'}">class="active"</c:if>>
        <a href="<c:url value="/admin/sprints.html"/>">Sprints</a>
    </li>
    </c:if>
</ul>
