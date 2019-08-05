<%-- 
    Document   : indexPe
    Created on : 06-jun-2019, 14:35:03
    Author     : Diego
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a class="btn" href="AgregarPe.htm">Nuevo Registro<br></a>
        <link  href="bootstrap/css/bootstrap.min.css" rel="Stylesheet"/>
    </head>
    
    <body>
        
            <thead>
                <tr>
                 
                    <th>Fecha Pedido</th>
                     <th>Nombre Empresa</th>
                    <th>Acciones</th>
                    
                </tr>
            </thead>
            
            <c:forEach var="dato" items="${lista}">
                <tr>
                <br>
                    <td>${dato.fechaPedido}</td>
                     <td>${dato.nomProveedor}</td>
                    
                    <td>
                        <a href="editarPe.htm?idPedido=${dato.idPedido}" class="btn btn-warning">Editar</a>
                        <a onclick="return confirm('¿Esta seguro?');"
                           <a href="deletePe.htm?idPedido=${dato.idPedido}" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
            
        
    </body>
</html>