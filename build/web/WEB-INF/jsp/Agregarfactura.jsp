<%-- 
    Document   : Agregarfactura
    Created on : 18-jun-2019, 17:43:29
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
                    <h4>Agregar nuevo Detalle Pedido</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Fecha</label>
                        <input type="date" name="fecha" placeholder="Ingrese la fecha" class="form-control">
                         <label>Valor</label>
                        <input type="text" name="Valor" placeholder="Ingrese el Valor" class="form-control">
                        <label>Iva</label>
                        <input type="text" name="Iva" placeholder="Ingrese el Iva" class="form-control">
                        
                        
                        
                        <select name="idUsuario">
                    <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idUsuario !=lista[0].idUsuario}">
                                    <option value="${dato.idUsuario}">
                                    ${dato.idUsuario}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.idUsuario==lista[0].idUsuario}">
                                        <option value="${dato.idUsuario}" selected="true">
                                        ${dato.idUsuario}
                                        </option>
                                    
                                </c:if>
                            </c:forEach>                                                                            
                        </select>
                        
                             <select name="idVehiculo">
                    <c:forEach var="dato" items="${listav}">
                                <c:if test="${dato.idVehiculo !=lista[0].idVehiculo}">
                                    <option value="${dato.idVehiculo}">
                                    ${dato.idVehiculo}
                                    </option>
                                </c:if>
                                    <c:if test="${dato.idVehiculo==lista[0].idVehiculo}">
                                        <option value="${dato.idVehiculo}" selected="true">
                                        ${dato.idVehiculo}
                                        </option>
                                    
                                </c:if>
                            </c:forEach>                                                                            
                        </select>
                        
                             <select name="idllanta">
                    <c:forEach var="dato" items="${listal}">
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
                        <a href="indexfactura.htm">Regresar</a>
                    </form>
                </div>
                
                
            </div>
            
        </div>
    </body>
</html>
