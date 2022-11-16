<%-- 
    Document   : login
    Created on : 7/07/2021, 01:09:50 PM
    Author     : Juan Carlos Lizarraga Encinas 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
         <link href="css/estiloLogin.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body>
        <header>
         <h1 ALIGN="center">Mi Aplicacion Web </h1> 
        </header>
     
        <div class="container col-lg-3">
            <form action="miLogin">
                <div class="form-group text-center">
                    <h1><img src="img/blue.png" width="60"/>Login </h1>
                </div>
                <div class="form-group">
                    <label> Nombre </label>
                    <input class="form-control" type="text" name="usuario" placeholder="Ingrese Nombre">
                </div>
                <div class="form-group">
                    <label> Contraseña:</label>
                    <input type="password" name="contra" placeholder="Ingresa Contraseña" class="form-control">
                </div>
                <input class="btn btn-danger btn-block" type="submit" name="accion" value="Ingresar"> 
            </form>
     
        
            <p>
                
            </p>
            
            <footer> Alumno: Juan Carlos Lizarraga Encinas  ID:00000181661 </footer>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
