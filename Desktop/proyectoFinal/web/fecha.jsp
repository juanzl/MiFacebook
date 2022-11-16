<%-- 
    Document   : fecha
    Created on : 5/07/2021, 10:24:14 AM
    Author     : Administrador
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Date fecha = new Date();
            out.println("La fecha scriptlet es " + fecha);
        %>
        <br/>

        <script>
            fecha = new Date();
            document.write("La fecha JS es "+ fecha);
                
        </script>
    </body>
</html>
