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
        <link rel="stylesheet" href="css\forml.css">
        <title>JSP Page</title>
    </head>
    <body>
               <div class="container">
            <h1><c:if test="${aviso.id == 0}">Nuevo</c:if>
                <c:if test="${aviso.id != 0}">Editar</c:if> Producto
                </h1>
                <form action="AvisoController" method="post">
                    <input type="hidden" name="id" value="${aviso.id}" />
                   <h2 class="form__titulo">Ingrese Nuevo Producto</h2>
		<div class="contenedor-inputs">

			<input type="text" name="descripcion" placeholder="Descripcion" class="input-48" required value="${aviso.descripcion}">
			
			<input type="text" name="stock" placeholder="Stock"value="${aviso.stock}" class="input-100" required>
			
			<input type="submit" value="Enviar" class="btn-enviar">
		
                </div>
            </form>
        </div>
    </body>
</html>
