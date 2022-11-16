
<%@page import="objetosNegocio.Videojuego"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Descarta Videojuegos</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
            <h1 ALIGN="center">Mi Aplicacion Web </h1> 
        </header>
        <nav>
            <img src="img/dele.png" width="100"/>
            <ul>
                <li><a href="clientes.html"> Clientes</a></li> 
                <li><a href="videojuegos.html">Videojuegos </a></li> 
                <li><a href="rentas.html"> Rentas</a></li> 
                <li><a href="inventario.html"> Inventario</a></li> 
                <li><a href="index.html"> Principal </a></li> 
            </ul>
        </nav>

        <article>
            <h1>Esta es la pagina para eliminar videojuegos</h1>
            <p>Ingresa el id del videojuego</p>

            <form action="eliminarVideojuegos">
                <input type="text" name="id" placeholder="ID"/> <br/>
                <input type="submit" value="Ingresar videojuego"/> <br/>
            </form>
            <h2>Listado de Clientes</h2> 
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
    </body>
</html>
