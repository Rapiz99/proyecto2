<%-- 
    Document   : indexllanta
    Created on : 11-jun-2019, 13:56:38
    Author     : Diego
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <a class="btn" href="Agregarllanta.htm">Nuevo Registro<br></a>
        <link  href="bootstrap/css/bootstrap.min.css" rel="Stylesheet"/>
    </head>
    
    <body>
        
            <thead>
                <tr>
                 
                     <th>Nombre Proveedor</th>
                     <th>Ancho</th>
                     <th>Diametro</th>
                     <th>Indice Velocidad</th>
                     <th>tipo llanta</th>
                     <th>Valor</th>
                    <th>Acciones</th>
                    
                </tr>
            </thead>
            
            <c:forEach var="dato" items="${lista}">
                <tr>
                <br>
                     <td>${dato.nomProveedor}</td>
                     <td>${dato.ancho}</td>
                     <td>${dato.diametro}</td>
                     <td>${dato.indiceVelocidad}</td>
                     <td>${dato.tipollanta}</td>
                     <td>${dato.Valor}</td>
                    
                    <td>
                        <a href="editarllanta.htm?idllanta=${dato.idllanta}" class="btn btn-warning">Editar</a>
                        <a onclick="return confirm('¿Esta seguro?');"
                           <a href="deletellanta.htm?idllanta=${dato.idllanta}" class="btn btn-danger">Eliminar</a>
                    </td>
                </tr>
            </c:forEach>
            
        
    </body>
</html>
