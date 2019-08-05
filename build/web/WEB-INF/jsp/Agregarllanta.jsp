<%-- 
    Document   : Agregarllanta
    Created on : 11-jun-2019, 14:15:28
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
                    <h4>Agregar nueva llanta</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Ancho</label>
                        <input type="text" name="ancho" placeholder="Ingrese el ancho" class="form-control">
                         <label>Diametro</label>
                        <input type="text" name="diametro" placeholder="Ingrese el diametro" class="form-control">
                        <label>Indice Velocidad</label>
                        <input type="text" name="indiceVelocidad" placeholder="Ingrese el indice de velocidad"  class="form-control">
                        <label>Tipo LLanta</label>
                        <input type="text" name="tipollanta" placeholder="Agregue el tipo de llanta" class="form-control">
                        <label>Valor</label>
                        <input type="text" name="Valor" placeholder="Ingrese el valor" class="form-control">
                        
                        
                        <select name="idProveedor">
                    <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idProveedor !=lista[0].idProveedor}">
                                    <option value="${dato.idProveedor}">
                                    ${dato.nombreEmpresa}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.idProveedor==lista[0].idProveedor}">
                                        <option value="${dato.idProveedor}" selected="true">
                                        ${dato.nombreEmpresa}
                                        </option>
                                    
                                </c:if>
                            </c:forEach>
                            
                        </select>
                        <input type="submit" value="Agregar" class="btn btn-sucess">
                        <a href="indexllanta.htm">Regresar</a>
                    </form>
                </div>
                
                
            </div>
            
        </div>
    </body>
</html>
