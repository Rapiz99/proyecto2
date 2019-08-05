<%-- 
    Document   : indexVehiculo
    Created on : 11-jun-2019, 16:36:16
    Author     : Diego
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a class="btn" href="AgregarVehiculo.htm">Nuevo Registro<br></a>
        <link  href="bootstrap/css/bootstrap.min.css" rel="Stylesheet"/>
    </head>
    
    <body>
        
            <thead>
                <tr>
                 
                     <th>Modelo</th>
                     <th>Marca</th>
                    <th>Acciones</th>
                    
                </tr>
            </thead>
            
            <c:forEach var="dato" items="${lista}">
                <tr>
                <br>
                     <td>${dato.Modelo}</td>
                     <td>${dato.Marca}</td>
                    
                    <td>
                        <a href="editarVehiculo.htm?idVehiculo=${dato.idVehiculo}" class="btn btn-warning">Editar</a>
                        <a onclick="return confirm('¿Esta seguro?');"
                           <a href="deleteVehiculo.htm?idVehiculo=${dato.idVehiculo}" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
            
        
    </body>
</html>