<%-- 
    Document   : indexPed
    Created on : 04-jun-2019, 14:42:36
    Author     : Diego
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link  href="bootstrap/css/bootstrap.min.css" rel="Stylesheet"/>
        
    </head>
    
    <body>
        <table class="table table-hover" style="text-align:center;">
            <tr>
                <th>Nombre Empresa</th>
                    <th>Direccion</th>
                    <th>Telefono</th>
                    <th>Correo</th>
                    <th>Nit</th>
                    <th>Acciones</th>
            </tr>
             <c:forEach var="dato" items="${lista}">
                <tr>
                   
                    <td>${dato.nombreEmpresa}</td>
                    <td>${dato.direccion}</td>
                    <td>${dato.telefono}</td>
                    <td>${dato.correo}</td>
                    <td>${dato.Nit}</td>
                    
                    <td>
                        <a href="editarPro.htm?idProveedor=${dato.idProveedor}" class="btn btn-warning">Editar</a>
                        <a onclick="return confirm('¿Esta seguro?');"
                           <a href="deletePro.htm?idProveedor=${dato.idProveedor}" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
                
        </table>
            <a href="index.htm" class="btn btn-warning">Regresar</a>
        
    </body>
</html>