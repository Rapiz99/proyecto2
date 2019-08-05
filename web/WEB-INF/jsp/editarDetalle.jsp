<%-- 
    Document   : editarDetalle
    Created on : 18-jun-2019, 16:45:17
    Author     : Diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Actualizar Detalle</h1>
            <form method="POST">
                <table>
                    <thead>
                        <tr>
                            <th>Cantidad</th>
                            <th>Costo</th>
                            
                        </tr>
                    </thead>
                    <tr>
                       
                        <td>
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
                    </td> 
                    
                     <td>
                            <input type="text" name="Cantidad" placeholder="cantidad" value="${lista[0].Cantidad}">
                        </td>
                        <td>
                            <input type="text" name="Costo" placeholder="Costo" value="${lista[0].Costo}">
                        </td>
                        
                        
                        
                        <td>
                            <input type="submit" value="Actualizar" class="Agregar">
                        </td>
                    </tr>
                    
                </table>
                        <a href="indexDetalle.htm">Regresar </a>
            </form>
        </div>
    </body>
</html>

