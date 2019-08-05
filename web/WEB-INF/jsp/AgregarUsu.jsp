<%-- 
    Document   : AgregarUsu
    Created on : 13-jun-2019, 13:50:08
    Author     : Diego
--%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card-border-info">
                <div class="card-header bg-info">
                    <h4>Agregar nuevo Usuario</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Nombre </label>
                        <input type="text" name="nombre" class="form-control">
                        <label>apellido </label>
                        <input type="text" name="apellido" class="form-control">
                        <label>Direccion</label>
                        <input type="text" name="direccion" class="form-control">
                         <label>Telefono</label>
                        <input type="text" name="telefono" class="form-control">
                         <label>Correo</label>
                        <input type="email" name="correo" class="form-control">
                         <label>Login</label>
                        <input type="text" name="login" class="form-control">
                        <label>Clave </label>
                        <input type="text" name="clave" class="form-control">
                        
                        
                        
                        <input type="submit" value="Agregar" class="btn btn-sucess">
                        <a href="indexUsu.htm">Regresar</a>
                    </form>
                </div>
                
            </div>
            
        </div>
    </body>
</html>
