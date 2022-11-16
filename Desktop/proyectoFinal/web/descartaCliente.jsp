<%@page import="objetosNegocio.Cliente"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Descarta Clientes</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header>
         <h1 ALIGN="center"> Mi Aplicacion Web </h1> 
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
            <h1> Esta es la pagina para eliminar clientes </h1>
            <p>Ingresa el id del cliente</p>
            
            <form action="eliminarClientes">
                <input type="text" name="id" placeholder="ID"/> <br/> 
                <input type="submit" value="Descartar cliente"/> <br/>
            </form>
               <h2>Listado de Clientes</h2> 
            <table class="table table-striped table-dark" border="1" style="background-color: white">
            <%
               List<Cliente> lista = (List<Cliente>)session.getAttribute("miListaClientes");
               out.print(" <thead>"
               + "<tr>"
               + "<th>ID</th>"
               + "<th>Nombre</th>"
               + "<th>Direccion</th>"
               + "<th>Telefono</th>"
               + "</thead>");
               for (Cliente c : lista){
                   out.print("<tr>"
                   + "<td>" + c.getNumCredencial() + "</td>"
                   + "<td>" + c.getNombre() + "</td>"
                   + "<td>" + c.getDireccion() + "</td>"
                   + "<td>" + c.getTelefono() + "</td>");
               }
            %>
            </table>
            

        </article>
    </body>
</html>
