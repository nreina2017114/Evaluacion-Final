<%-- 
    Document   : add
    Created on : 27/08/2020, 08:58:47 AM
    Author     : aleja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Página de Agregar</title>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-5">
             <h1>Agregar un Registro</h1>
             <form action="Controlador">
                 DPI:<br>
                 <input class="form-control" type="text" name="txtDPI"><br>
                 Nombres:<br>
                 <input class="form-control" type="text" name="txtNombre"><br>
                 <input class="btn btn-primary" type="submit" name="accion" value="Agregar"><br>
                 
             </form>
             </div>
        </div>
    </body>
</html>
