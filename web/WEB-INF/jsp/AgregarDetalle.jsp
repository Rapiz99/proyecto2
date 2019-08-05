<%-- 
    Document   : AgregarDetalle
    Created on : 18-jun-2019, 16:40:57
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
                    <h4>Agregar nuevo Detalle Pedido</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Cantidad</label>
                        <input type="text" name="Cantidad" placeholder="Ingrese la cantidad" class="form-control">
                         <label>Costo</label>
                        <input type="text" name="Costo" placeholder="Ingrese el Costo" class="form-control">
                        
                        
                        
                        <select name="idPedido">
                    <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idPedido !=lista[0].idPedido}">
                                    <option value="${dato.idPedido}">
                                    ${dato.idPedido}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.idPedido==lista[0].idPedido}">
                                        <option value="${dato.idPedido}" selected="true">
                                        ${dato.idPedido}
                                        </option>
                                    
                                </c:if>
                            </c:forEach>
                            
                        </select>
                        <input type="submit" value="Agregar" class="btn btn-sucess">
                        <a href="indexDetalle.htm">Regresar</a>
                    </form>
                </div>
                
                
            </div>
            
        </div>
    </body>
</html>
