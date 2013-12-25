<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<ul class="nav nav-list">
    
    <!--MENU DE USUARIO-->
    <li class="nav-header">Inicio</li>
    <li <c:if test="${menu eq 'Home'}">class="active"</c:if>>
        <a href="<c:url value="/home.html"/>">Home</a>
    </li>
    <li class="nav-header">Perfil</li>
    <li <c:if test="${menu eq 'DatosPersonales'}">class="active"</c:if>>
        <a href="<c:url value="/datos-personales.html"/>">Datos Personales</a>
    </li>
    <li <c:if test="${menu eq 'ConfigurarPrivacidad'}">class="active"</c:if>>
        <a href="<c:url value="/configurar-privacidad.html"/>">Configuración Privacidad</a>
    </li>
    <li class="nav-header">Mis Entradas</li>
    <li <c:if test="${menu eq 'UltimasEntradas'}">class="active"</c:if>>
        <a href="<c:url value="/ultimas-entradas.html"/>">Ultimas entradas</a>
    </li>
    <li <c:if test="${menu eq 'HistorialEntradas'}">class="active"</c:if>>
        <a href="<c:url value="/historial-entradas.html"/>">Historial entradas</a>
    </li>
    <li <c:if test="${menu eq 'NuevaEntrada'}">class="active"</c:if>>
        <a href="<c:url value="/nueva-entrada.html"/>">Nueva entrada</a>
    </li>
     
    
    <!--MENU DE ADMINISTRADOR-->
    <c:if test="${role eq 'ADMINISTRADOR'}">
    <li class="nav-header">Administracion</li>
    <li <c:if test="${menu eq 'AdministrarUsuarios'}">class="active"</c:if>>
        <a href="<c:url value="/admin/usuarios.html"/>">Usuarios</a>
    </li>
    <li <c:if test="${menu eq 'AdministrarContenido'}">class="active"</c:if>>
        <a href="<c:url value="/admin/contenido.html"/>">Contenido</a>
    </li>
    </c:if>
</ul>
