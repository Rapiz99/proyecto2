<%-- 
    Document   : editarfactura
    Created on : 18-jun-2019, 17:52:15
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
            <h1>Actualizar factura</h1>
            <form method="POST">
                <table>
                    <thead>
                        <tr>
                            <th>Extras</th>
                            <th>Fecha</th>
                            <th>Valor</th>
                            <th>Iva</th>
                            
                        </tr>
                    </thead>
                    <tr>
                       
                        <td>
                         <select name="idUsuario">
                    <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idUsuario !=lista[0].idUsuario}">
                                    <option value="${dato.idUsuario}">
                                    ${dato.idUsuario}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.idUsuario==lista[0].idUsuario}">
                                        <option value="${dato.idUsuario}" selected="true">
                                        ${dato.idUsuario}
                                        </option>
                                    
                                </c:if>
                            </c:forEach>                                                                            
                        </select>
                        
                             <select name="idVehiculo">
                    <c:forEach var="dato" items="${listav}">
                                <c:if test="${dato.idVehiculo !=lista[0].idVehiculo}">
                                    <option value="${dato.idVehiculo}">
                                    ${dato.idVehiculo}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.idVehiculo==lista[0].idVehiculo}">
                                        <option value="${dato.idVehiculo}" selected="true">
                                        ${dato.idVehiculo}
                                        </option>
                                    
                                </c:if>
                            </c:forEach>                                                                            
                        </select>
                        
                             <select name="idllanta">
                    <c:forEach var="dato" items="${listal}">
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
                            <input type="date" name="fecha" placeholder="Ingrese fecha" value="${lista[0].fecha}">
                        </td>
                        <td>
                            <input type="Valor" name="Valor" placeholder="Ingrese Valor" value="${lista[0].Valor}">
                        </td>
                        
                        <td>
                            <input type="Iva" name="Iva" placeholder="Ingrese Iva" value="${lista[0].Iva}">
                        </td>
                        
                        
                        <td>
                            <input type="submit" value="Actualizar" class="Agregar">
                        </td>
                    </tr>
                    
                </table>
                        <a href="indexfactura.htm">Regresar </a>
            </form>
        </div>
    </body>
</html>
