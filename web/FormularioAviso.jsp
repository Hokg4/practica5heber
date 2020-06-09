<%-- 
    Document   : FormularioAviso
    Created on : 08-06-2020, 07:57:09 AM
    Author     : usuario
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <div class="container">
            <h1><c:if test="${aviso.id == 0}">Nuevo</c:if>
                <c:if test="${aviso.id != 0}">Editar</c:if> Producto
                </h1>
                <form action="AvisoController" method="post">
                    <input type="hidden" name="id" value="${aviso.id}" />
                
                <div class>
                    <label>Descripcion:</label>
                    <input type="text" name="descripcion" value="${aviso.descripcion}">
                </div>
                <br>
                <div class>
                    <label>Stock:</label>
                     <input type="text" name="stock" value="${aviso.stock}" >
                </div>
                <br>
                <input type="submit" value="Enviar">
            </form>
        </div>
    </body>
</html>
