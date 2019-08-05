<%-- 
    Document   : editarVehiculo
    Created on : 11-jun-2019, 16:46:52
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
            <h1>Actualizar Vehiculo</h1>
            <form method="POST">
                <table>
                    <thead>
                        <tr>
                            <th>Modelo</th>
                            <th>Marca</th>
                            <th>llanta</th>
                        </tr>
                    </thead>
                    <tr>
                        <td>
                            <input type="text" name="Modelo" placeholder="Modelo" value="${lista[0].Modelo}">
                        </td>
                        
                         <td>
                            <input type="text" name="Marca" placeholder="Marca" value="${lista[0].Marca}">
                        </td>
                        
                        <td>
                        <select name="idllanta">
                            <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idllanta !=lista[0].idllanta}">
                                    <option value="${dato.idllanta}">
                                    ${dato.idllanta}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.idllanta==lista[0].idllanta}">
                                        <option value="${dato.idllanta}" selected="true">
                                        ${dato.idllanta}
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
