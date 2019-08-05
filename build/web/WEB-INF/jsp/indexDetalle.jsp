<%-- 
    Document   : indexDetalle
    Created on : 18-jun-2019, 16:34:21
    Author     : Diego
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <table class="table table-hover" style="text-align:center;">
             <th>Cantidad</th>
             <th>Costo</th>
             <th>Acciones</th>
             
              <c:forEach var="dato" items="${lista}">
                <tr>
                
                     <td>${dato.Cantidad}</td>
                     <td>${dato.Costo}</td>
                     
                    
                    <td>
                        <a href="editarDetalle.htm?idDetalle=${dato.idDetalle}" class="btn btn-warning">Editar</a>
                        <a onclick="return confirm('¿Esta seguro?');"
                           <a href="deleteDetalle.htm?idDetalle=${dato.idDetalle}" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="index.htm" class="btn btn-warning">Regresar</a>
        
     <script src="bootstrap/js/jquery.js" type="text/javascript"></script>
    <script src="bootstrap/js/jquery-3.2.1.slim.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="bootstrap/js/popper.min.js" type="text/javascript"></script>
    </body> 
   
</html>