<%-- 
    Document   : Avisos
    Created on : 08-06-2020, 07:56:36 AM
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
            <h2>Productos</h2>
            <p><a href="AvisoController?action=add" >Nuevo</a></p>
            <table border="1">
                <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th>Stock</th>
                    <th>Editar</th>
                    <th>Eliminar</th>
                </tr>
                <c:forEach var="item" items="${avisos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.descripcion}</td>
                        <td>${item.stock}</td>
                        <td><a href="AvisoController?action=edit&id=${item.id}" >Editar</a></td>
                        <td><a href="AvisoController?action=delete&id=${item.id}" onclick="return(confirm('Esta seguro ???'))">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
