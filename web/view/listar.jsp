<%-- 
    Document   : listar
    Created on : 27/08/2020, 08:58:10 AM
    Author     : aleja
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Persona"%>
<%@page import="modeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Página de Listar</title>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center">Personas</h1>  
            <a class="btn btn-success" href="Controlador?accion=add">Agregar Nuevo</a>
            <br><br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <td class="text-center text-primary"><strong>CODIGO PERSONA</strong></td>
                        <td class="text-center text-primary"><strong>DPI</strong></td>
                        <td class="text-center text-primary"><strong>NOMBRES</strong></td>
                        <td class="text-center text-primary"><strong>ACCIONES</strong></td>
                    </tr>
                </thead>
                <%
                    PersonaDAO dao = new PersonaDAO();
                    List<Persona> listaPersona = dao.listar();
                    Iterator<Persona> iterator = listaPersona.iterator();
                    Persona per = null;
                    while (iterator.hasNext()) {
                        per = iterator.next();
                 %>
                <tbody>
                    <tr>
                      <td class="text-center active"><%=per.getCodigoPersona()%></td>
                      <td class="text-center"><%=per.getDPI()%></td>
                      <td class="text-center active"><%=per.getNombrePersona()%></td>
                     <td>
                         <a class="btn btn-warning" href="Controlador?accion=editar&codigoPersona=<%= per.getCodigoPersona()%>">Edit</a>                         
                         <a class="btn btn-danger" href="Controlador?accion=eliminar&codigoPersona=<%= per.getCodigoPersona()%>">Remove</a>                         

                      </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                
        </div>
    </body>
</html>
