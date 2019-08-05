<%-- 
    Document   : indexUsu
    Created on : 13-jun-2019, 13:46:18
    Author     : Diego
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Usuarios registrados en el Sistema</title>
    </head>
    <body>
        <table class="table table-hover" style="text-align:center;">
            <tr>
                <th>Nombre </th>
                <th>Apellido </th>
                <th>Direccion</th>
                <th>Telefono</th>
                <th>Correo</th>
                <th>Login</th>
                <th>Clave </th>
                <th>Acciones</th>
                
                     <c:forEach var="dato" items="${lista}">
               <tr>
                    <td>${dato.nombre}</td>
                    <td>${dato.apellido}</td>
                    <td>${dato.direccion}</td>
                    <td>${dato.telefono}</td>
                    <td>${dato.correo}</td>
                    <td>${dato.login}</td>
                    <td>${dato.clave}</td>  
                    <td>
                        <a href="editarUsu.htm?idUsuario=${dato.idUsuario}" class="btn btn-warning">Editar</a>
                        <a onclick="return confirm('¿Esta seguro?');"
                           <a href="deleteUsu.htm?idUsuario=${dato.idUsuario}" class="btn btn-danger">Eliminar</a>
                    </td>
               </tr>
                   
                    
                    
                    
               
            </c:forEach>
        
            </tr>
        </table>
        
</html>
