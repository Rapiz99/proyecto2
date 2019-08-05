<%-- 
    Document   : editarPro
    Created on : 06-jun-2019, 13:35:08
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Actualizar Proveedor</h1>
            <form method="POST">
                <table>
                    <thead>
                        <tr>
                            <th>Nombre Empresa</th>
                            <th>Direccion</th>
                            <th>Telefono</th>
                            <th>Correo</th>
                            <th>Nit</th>
                            
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tr>
                        <td>
                            <input type="text" name="nombreEmpresa" placeholder="nombre de la Empresa" value="${lista[0].nombreEmpresa}">
                        </td>
                        
                        <td>
                            <input type="text" name="direccion" placeholder="direccion" value="${lista[0].direccion}">
                        </td>
                        
                        <td>
                            <input type="text" name="telefono" placeholder="telefono" value="${lista[0].telefono}">
                        </td>
                        
                        <td>
                            <input type="email" name="correo" placeholder="correo" value="${lista[0].correo}">
                        </td>
                        
                        <td>
                            <input type="text" name="Nit" placeholder="Nit" value="${lista[0].Nit}">
                        </td>
                        <td>
                            <input type="submit" value="Actualizar" class="Agregar">
                        </td>
                    </tr>
                </table>
                        <a href="index.htm">Regresar </a>
            </form>
        </div>
    </body>
</html>
