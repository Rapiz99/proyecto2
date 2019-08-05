<%-- 
    Document   : AgregarPro
    Created on : 06-jun-2019, 13:30:36
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
                    <h4>Agregar nuevo departamento</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Nombre Empresa</label>
                        <input type="text" name="nombreEmpresa" class="form-control">
                        <label>Direccion</label>
                        <input type="text" name="direccion" class="form-control">
                         <label>Telefono</label>
                        <input type="text" name="telefono" class="form-control">
                         <label>Correo</label>
                        <input type="email" name="correo" class="form-control">
                         <label>Nit</label>
                        <input type="text" name="Nit" class="form-control">
                        
                        
                        
                        <input type="submit" value="Agregar" class="btn btn-sucess">
                        <a href="indexPro.htm">Regresar</a>
                    </form>
                </div>
                
            </div>
            
        </div>
    </body>
</html>

