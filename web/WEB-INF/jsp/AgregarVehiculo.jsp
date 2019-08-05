<%-- 
    Document   : AgregarVehiculo
    Created on : 11-jun-2019, 16:33:58
    Author     : Diego
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card-border-info">
                <div class="card-header bg-info">
                    <h4>Agregar nuevo Vehiculo</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Modelo</label>
                        <input type="text" name="Modelo" placeholder="Ingrese el Modelo" class="form-control">
                         <label>Marca</label>
                        <input type="text" name="Marca" placeholder="Ingrese la Marca" class="form-control">
                        
                        
                        
                        <select name="idllanta">
                    <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idllanta !=lista[0].idllanta}">
                                    <option value="${dato.idllanta}">
                                    ${dato.idllanta}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.idllanta==lista[0].idllanta}">
                                        <option value="${dato.idllanta}" selected="true">
                                        ${dato.idllanta}
                                        </option>
                                    
                                </c:if>
                            </c:forEach>
                            
                        </select>
                        <input type="submit" value="Agregar" class="btn btn-sucess">
                        <a href="indexVehiculo.htm">Regresar</a>
                    </form>
                </div>
                
                
            </div>
            
        </div>
    </body>
</html>