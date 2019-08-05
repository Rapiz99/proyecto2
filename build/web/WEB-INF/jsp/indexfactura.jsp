<%-- 
    Document   : indexfactura
    Created on : 18-jun-2019, 17:38:32
    Author     : Diego
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a class="btn" href="Agregarfactura.htm">Nuevo Registro<br></a>
        <link  href="bootstrap/css/bootstrap.min.css" rel="Stylesheet"/>
    </head>
    
    <body>
        
            <thead>
                <tr>
                 
                     <th>Fecha</th>
                     <th>Valor</th>
                     <th>Iva</th>
                    <th>Acciones</th>
                    
                </tr>
            </thead>
            
            <c:forEach var="dato" items="${lista}">
                <tr>
                <br>
                     <td>${dato.fecha}</td>
                     <td>${dato.Valor}</td>
                     <td>${dato.Iva}</td>
                     
                    
                    <td>
                        <a href="editarfactura.htm?idFacturaVenta=${dato.idFacturaVenta}" class="btn btn-warning">Editar</a>
                        <a onclick="return confirm('¿Esta seguro?');"
                           <a href="deletefactura.htm?idFacturaVenta=${dato.idFacturaVenta}" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
            
        
    </body>
</html>