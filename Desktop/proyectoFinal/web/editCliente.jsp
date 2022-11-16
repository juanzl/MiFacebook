<%-- 
    Document   : editCliente
    Created on : 12/07/2021, 07:52:40 PM
    Author     : Administrador
--%>

<%@page import="java.util.List"%>
<%@page import="objetosNegocio.Cliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/estilo.css" rel="stylesheet" type="text/css"/>
        <title>Edit Cliente</title>
    </head>
    <body>
          <header>
            <h1 ALIGN="center">Mi Aplicacion Web </h1> 
        </header>
        <nav>
            
            <ul>
                <li><a href="control?tarea=listaClientes"> Lista Clientes </a></li>
                <li><a href="control?tarea=agregarClientes"> Agregar Cliente </a></li>
                <li><a href="control?tarea=editarClientes"> Editar Cliente </a></li>
                <li><a href="control?tarea=eliminarClientes"> Eliminar Clientes </a></li>
                <li><a href="index.html"> Principal </a></li> 

            </ul>
        </nav>
        <article>
            <h1> Esta es la pagina para editar clientes </h1>

            <form action="editarClientes">
                <input type="text" name="id" placeholder="ID"/> <br/>
                <input type="text" name="nombre" placeholder="Nombre"/> <br/>
                <input type="text" name="direccion" placeholder="Direccion"/> <br/>
                <input type="text" name="telefono" placeholder="Telefono"/> <br/>
                <input type="submit" value="Editar cliente"/> <br/>
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
        <footer>
            Alumno: Juan Carlos Lizarraga Encinas ID:00000181661
        </footer>
    </body>
</html>
