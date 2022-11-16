<%-- 
    Document   : rentar
    Created on : 14/07/2021, 03:12:58 PM
    Author     : Administrador
--%>

<%@page import="java.util.List"%>
<%@page import="objetosNegocio.Videojuego"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <title>listaVideojuegosRenta</title>
    </head>
    <body>
         <header>
         <h1 ALIGN="center">Mi Aplicacion Web </h1> 
        </header>
        <nav>
            <img src="img/silver.png" width="100"/>
            <ul>
                <li><a href="clientes.html"> Clientes</a></li> 
                <li><a href="videojuegos.html">Videojuegos </a></li> 
                <li><a href="rentas.html"> Rentas</a></li> 
                <li><a href="inventario.html"> Inventario</a></li> 
                <li><a href="index.html"> Principal </a></li> 
            </ul>
        </nav>
        
        <article>
            <h1> Esta es la pagina para rentar videojuegos</h1>
             
            <form action="rentarVideojuegos">
                
                <ul>
                    <li><input type="text" name="cliente" placeholder="Cliente"/> </li>
                    <li><input type="text" name="articulo" placeholder="Articulo"/> </li>
                    <li><input type="text" name="fecha" placeholder="Fecha"/> </li>
                    <li><input type="text" name="tiempo" placeholder="Tiempo"/> </li>
                    <li> <input type="submit" value="Ingresar renta"/> </li> 
                </ul>

            </form>
   
            
            <h2>Listado de la Renta</h2> 
            
            <table class="table table-striped table-dark" border="1" style="background-color: white">
            <%
               Object l = session.getAttribute("miListaVideojuegosRenta");
               
out.print("<thead"
+ "<tr>"
+ "<th>INFO</th></br>"
+ "</thead>");

out.print("<tr>"
+ "<td>" + l + "</td>");
            %>
            </table>
       </article>
    </body>
</html>
