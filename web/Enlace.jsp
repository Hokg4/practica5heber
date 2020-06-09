<%-- 
    Document   : Enlace
    Created on : 08-06-2020, 07:56:02 AM
    Author     : usuario
--%>

<%
    String opcion = request.getParameter("opcion");
%>        

                <li <%= (opcion.equals("avisos")?"active":"")%>">
                    <a href="AvisoController">Insertar Productos</a>
                </li>