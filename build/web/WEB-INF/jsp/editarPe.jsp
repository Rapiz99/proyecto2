<%-- 
    Document   : editarPe
    Created on : 06-jun-2019, 16:50:11
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
            <h1>Actualizar Pedido</h1>
            <form method="POST">
                <table>
                    <thead>
                        <tr>
                            <th>Fecha Pedido</th>
                            <th>Proveedor</th>
                        </tr>
                    </thead>
                    <tr>
                        <td>
                            <input type="date" name="fechaPedido" placeholder="fechaPedido" value="${lista[0].fechaPedido}">
                        </td>
                        
                        
                        <td>
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
                    </td> 
                        <td>
                            <input type="submit" value="Actualizar" class="Agregar">
                        </td>
                    </tr>
                    
                </table>
                        <a href="indexPe.htm">Regresar </a>
            </form>
        </div>
    </body>
</html>
