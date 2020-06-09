<%-- 
    Document   : index
    Created on : 08-06-2020, 07:57:37 AM
    Author     : usuario
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>JSP Page</title>
    </head>
    <body>
           <jsp:include page="Enlace.jsp">
            <jsp:param name="opcion" value="inicio" />
        </jsp:include>
        <div class="container">
            <h1>Productos</h1>
             
        <table border="1">
                  <tr>
                    <th>Id</th>
                    <th>Descripcion</th>
                    <th>Stock</th>
                   
                   </tr>
            <c:forEach var="item" items="${avisos}">
                                <tr>
                           <td>${item.id}</td>
                           <td>${item.descripcion} </td>
                           <td>${item.stock}</td>
                                </tr>

            </c:forEach> 
        </table> 
            </div>
    </body>
</html>
