<%-- 
    Document   : listadoVideojuegos
    Created on : 7/07/2021, 09:29:43 PM
    Author     : Administrador
--%>
<%@page import="objetosNegocio.Videojuego"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <title>Lista Videojuegos</title>
    </head>
    <body>
         <header>
        <h1>Listado de Videojuegos</h1>
        </header>
        <nav>
            <ul>
                <li><a href="control?tarea=listaVideojuegos"> Lista Videojuegos </a></li>
                <li><a href="control?tarea=agregarVideojuegos"> Agregar Videojuego </a></li>
                <li><a href="control?tarea=editarVideojuegos"> Editar Videojuego </a></li>
                <li><a href="control?tarea=eliminarVideojuegos"> Eliminar Videojuego </a></li>
                <li><a href="index.html"> Principal </a></li> 
                
            </ul>
        </nav>
        <article>
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
                   + "<td>" + v.getNumCatalogo() + "</td>"
                   + "<td>" + v.getTitulo() + "</td>"
                   + "<td>" + v.getGenero() + "</td>"
                   + "<td>" + v.getClasificacion() + "</td>"
                   + "<td>" + v.getConsola()+ "</td>"
                   + "<td>" + v.getFabricante()+ "</td>"
                   + "<td>" + v.getVersion() + "</td>");
               }
            %>
            </table>
        </article>
        <footer>
           Alumno: Juan Carlos Lizarraga Encinas ID:00000181661
        </footer>
    </body>
</html>
