<%-- 
    Document   : updateVideojuego
    Created on : 9/07/2021, 04:33:04 PM
    Author     : Administrador
--%>

<%@page import="objetosNegocio.Videojuego"%>
<%@page import="dao.Videojuegos"%>
<%@page import="java.util.List"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <title>Actualizar videojuegos</title>
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
            <h1> Esta es la pagina para actualizar videojuegos</h1>
             
            <form action="actualizarVideojuegos">
                <input type="text" name="id" placeholder="ID"/> <br/>
                <input type="text" name="titulo" placeholder="Titulo"/> <br/>
                <input type="text" name="genero" placeholder="Genero"/> <br/>
                <input type="text" name="clasificacion" placeholder="Clasificacion"/> <br/>
                <input type="text" name="consola" placeholder="Consola"/> <br/>
                <input type="text" name="fabricante" placeholder="Fabricante"/> <br/>
                <input type="text" name="version" placeholder="Version"/> <br/>
                <input type="submit" value="Ingresar videojuego"/> <br/>
            </form>
   
            
            <h2>Listado de Videojuegos</h2> 
            
            <table class="table table-striped table-dark" border="1" style="background-color: white">
            <%
               List<Videojuego> lista = (List<Videojuego>)session.getAttribute("miListaVideojuegos");
               out.print(" <thead>"
               + "<tr>"
               + "<th>ID</th>"
               + "<th>Titulo</th>"
               + "<th>Genero</th>"
               + "<th>Clasificacion</th>"
               + "<th>Consola</th>"
               + "<th>Fabricante</th>"
               + "<th>Version</th>"            
               + "</thead>");
               for (Videojuego v : lista){
                   out.print("<tr>"
                   + "<td>" + v.getNumCatalogo()+ "</td>"
                   + "<td>" + v.getTitulo()+ "</td>"
                   + "<td>" + v.getGenero()+ "</td>"
                   + "<td>" + v.getClasificacion()+ "</td>"
                   + "<td>" + v.getConsola()+ "</td>"
                   + "<td>" + v.getFabricante()+ "</td>"
                   + "<td>" + v.getVersion()+ "</td>");
               }
            %>
            </table>
       </article>
       
    </body>
</html>
