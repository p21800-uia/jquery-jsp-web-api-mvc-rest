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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <head>

        <style type="text/css">
            .red{
                color:red;
            }
            .blue{
                color:blue;
            }
        </style>

        <title>Fun with jQuery</title>
    </head>

<body>
<h2>Hello, jQuery!</h2>

<button id='btnOuch'>Say Ouch</button>

<button id='btnColor'>Cambia color</button>


<p id='lemon'>Lemon drops biscuit chocolate…</p>

<script src="http://code.jquery.com/jquery.js"></script>

<script>
    $("#btnOuch").click(function(){
        alert("Ouch! That hurt.");
    });
</script>

<script>
    $("#lemon").mouseover(function(){
        $(this).append(" Cookie! ");
    });
</script>

<script>
    $("#btnColor").click(function(){
        $("#lemon").addClass("blue");
    });
</script>



<script>

    $(document).ready(function()
    {
        $('#btnSolicitudesOC').click(function() {
            $.ajax({
                type: "GET",
                dataType : "html",
                url : "http://localhost:8080/jquery_jsp_web_api_mvc_rest_war/viewSolicitudesOC",
                success : function(data) {
                    $("#btnSolicitudesOC").html(data);
                    var parsed_data = JSON.parse(data);
                    console.log(parsed_data.success);
                }

            });
            return data;
        });
    });


</script>

<c:choose>
    <c:when test="${not empty reportes}">
        <h1>Lista de reportes:</h1>
        <table border="1"><tr><th>ID</th><th>Nombre</th><th>Items</th></tr>
            <c:forEach var="item" items="${reportes}">
                <tr>
                    <td><c:out value="${item.id}" /></td>
                    <td><c:out value="${item.name}" /></td>

                    <td>
                        <table border="1"><tr><th>ID</th><th>Nombre</th><th>existencia</th><th>existencia Maxima</th><th>Consumo</th><th>Pedido</th></tr>
                            <c:forEach var="nodo" items="${item.items}">
                                <tr>
                                    <td><c:out value="${nodo.id}" /></td>
                                    <td><c:out value="${nodo.name}" /></td>
                                    <td><c:out value="${nodo.existenciaMinima}" /></td>
                                    <td><c:out value="${nodo.existenciaMaxima}" /></td>
                                    <td><c:out value="${nodo.consumo}" /></td>
                                    <td><c:out value="${nodo.pedidoProveedor}" /></td>
                                </tr>
                            </c:forEach>
                        </table>
                    </td>
                    <td>
                        <div id="cotizaciones">
                            <button id='btnSolicitudesOC'>Ver Solicitudes Compra</button>
                        </div>
                </tr>
            </c:forEach>
        </table>
    </c:when>
    <c:when test="${not empty reporte}">
        Here is your info <br>
        <table><tr><th>ID</th><th>First Name</th><th>Last Name</th><th>Description</th></tr>
            <c:forEach var="item" items="${reporte}">
                <tr>
                    <td><c:out value="${item.id}" /></td>
                    <td><c:out value="${item.name}" /></td>
                </tr>
            </c:forEach>
        </table>
    </c:when>
    <c:otherwise></c:otherwise>
</c:choose>

<BR />

</body>

</html>