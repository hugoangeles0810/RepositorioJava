<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="nav nav-list">
    
    <!--MENU DE USUARIO-->
    <li class="nav-header">Perfil</li>
    <li class="active">
        <a href="<c:url value="/datos-personales.html"/>">Datos Personales</a>
    </li>
    <li class="">
        <a href="<c:url value="/configurar-privacidad.html"/>">Configuración Privacidad</a>
    </li>
    <li class="nav-header">Mis Entradas</li>
    <li class="">
        <a href="<c:url value="/ultimas-entradas.html"/>">Ultimas entradas</a>
    </li>
     
    
    <!--MENU DE ADMINISTRADOR-->
    <c:if test="${role eq 'ADMINISTRADOR'}">
    <li class="nav-header">Administracion</li>
    <li class="">
        <a href="<c:url value="/admin/usuarios.html"/>">Usuarios</a>
    </li>
    <li class="">
        <a href="<c:url value="/admin/contenido.html"/>">Contenido</a>
    </li>
    </c:if>
</ul>
