<%-- 
    Document   : editarllanta
    Created on : 11-jun-2019, 14:21:44
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
            <h1>Actualizar llanta</h1>
            <form method="POST">
                <table>
                    <thead>
                        <tr>
                            <th>Proveedor</th>
                            <th>Ancho</th>
                            <th>Diametro</th>
                            <th>Indice de velocidad</th>
                            <th>Tipo de llanta</th>
                            <th>Valor</th>
                        </tr>
                    </thead>
                    <tr>
                       
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
                            <input type="text" name="ancho" placeholder="Ancho de la llanta" value="${lista[0].ancho}">
                        </td>
                        <td>
                            <input type="text" name="diametro" placeholder="Diametro de la llanta" value="${lista[0].diametro}">
                        </td>
                        <td>
                            <input type="text" name="indiceVelocidad" placeholder="Indice de velocidad" value="${lista[0].indiceVelocidad}">
                        </td>
                        <td>
                            <input type="text" name="tipollanta" placeholder="Tipo de llanta" value="${lista[0].tipollanta}">
                        </td>
                        <td>
                            <input type="text" name="Valor" placeholder="Valor de la llanta" value="${lista[0].Valor}">
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
