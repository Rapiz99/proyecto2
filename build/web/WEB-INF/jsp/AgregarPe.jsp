<%-- 
    Document   : AgregarPe
    Created on : 06-jun-2019, 14:48:25
    Author     : Diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card-border-info">
                <div class="card-header bg-info">
                    <h4>Agregar nuevo Pedido</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Fecha Pedido</label>
                        <input type="date" name="fechaPedido">
                        <select name="idProveedor">
                    <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idProveedor !=lista[0].idProveedor}">
                                    <option value="${dato.idProveedor}">
                                    ${dato.nombreEmpresa}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.idProveedor==lista[0].idProveedor}">
                                        <option value="${dato.idProveedor}" selected="true">
                                        ${dato.nombreEmpresa}
                                        </option>
                                    
                                </c:if>
                            </c:forEach>
                            
                        </select>
                        <input type="submit" value="Agregar" class="btn btn-sucess">
                        <a href="indexPro.htm">Regresar</a>
                    </form>
                </div>
                
                
            </div>
            
        </div>
    </body>
</html>
