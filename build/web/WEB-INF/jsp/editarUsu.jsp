<%-- 
    Document   : editarUsu
    Created on : 13-jun-2019, 13:52:40
    Author     : Diego
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar datos</title>
    </head>
    <body>
        <div class="container">
            <h1>Actualizar Usuario</h1>
            <form method="POST">
                <table>
                    <thead>
                        <tr>
                            <th>Nombre </th>
                            <th>apellido </th>
                            <th>Direccion</th>
                            <th>Telefono</th>
                            <th>Correo</th>
                            <th>Login</th>
                            <th>Clave</th>
                            
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tr>
                        <td>
                            <input type="text" name="nombre" placeholder="nombre" value="${lista[0].nombre}">
                        </td>
                        
                        <td>
                            <input type="text" name="apellido" placeholder="Apellido" value="${lista[0].apellido}">
                        </td>
                        
                        <td>
                            <input type="text" name="direccion" placeholder="direccion" value="${lista[0].direccion}">
                        </td>
                        
                        <td>
                            <input type="text" name="telefono" class="form-control" placeholder="telefono" value="${lista[0].telefono}">
                        </td>
                        
                        <td>
                            <label>Correo Electronico:</label>
                            <input type="email" name="correo" class="form-control" placeholder="correo" value="${lista[0].correo}">
                        </td>
                        
                        <td>
                            <label>Nombre de usuario:</label>
                            <input type="text" name="login" class="form-control" placeholder="login" value="${lista[0].login}">
                        </td>
                        <td>
                             <label>Contraseña:</label>
                            <input type="password" name="clave" class="form-control" placeholder="Ingrese su clave" value="${lista[0].clave}">
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