<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="ctx" value="${pageContext['request'].contextPath}" />
<html>

<head>
    <link href="<c:url value="/WEB-INF/css/style.css"/>" rel="stylesheet" type="text/css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="hello.js"></script>
</head>

<body>
<br />

<div id="jspSolicitudesOC">
    <c:choose>
        <c:when test="${not empty solicitudesOC}">
            <table border="1"><tr><th>ID</th><th>Lista de solicitudes Orden Compra</th></tr>
                <c:forEach var="item" items="${solicitudesOC}">
                    <tr>
                        <td><c:out value="${item.id}" /></td>
                        <td><c:out value="${item.name}" /></td>

                        <td>
                            <table border="1"><tr><th>ID</th><th>Nombre</th><th>existencia</th><th>existencia Maxima</th><th>Consumo</th><th>Pedido</th><th>Clasificación</th><th>Vendedor</th></tr>
                                <c:forEach var="nodo" items="${item.items}">
                                    <tr>
                                        <td><c:out value="${nodo.id}" /></td>
                                        <td><c:out value="${nodo.name}" /></td>
                                        <td><c:out value="${nodo.existenciaMinima}" /></td>
                                        <td><c:out value="${nodo.existenciaMaxima}" /></td>
                                        <td><c:out value="${nodo.consumo}" /></td>
                                        <td><c:out value="${nodo.pedidoProveedor}" /></td>
                                        <td><c:out value="${nodo.clasificacion}" /></td>
                                        <td><c:out value="${nodo.vendedor}" /></td>
                                    </tr>
                                </c:forEach>
                            </table>
                        </td>
                        <td><a href="http://localhost:8080/web_jsp_war/viewCotizaciones">"Ver Solicitudes Compra"</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>
        <c:when test="${not empty solicitudOC}">
            Here is your info <br>
            <table><tr><th>ID</th><th>First Name</th><th>Last Name</th><th>Description</th></tr>
                <c:forEach var="item" items="${solicitudOC}">
                    <tr>
                        <td><c:out value="${item.id}" /></td>
                        <td><c:out value="${item.name}" /></td>
                    </tr>
                </c:forEach>
            </table>
        </c:when>
        <c:otherwise></c:otherwise>
    </c:choose>

</div>

</body>

</html>