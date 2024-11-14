<%-- 
    Document   : listar
    Created on : 23/10/2024, 14:58:42
    Author     : jeffr
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Persona"%>
<%@page import="ModeloDao.PersonDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <h1>Estudiantes</h1>
            <a class="btn btn-success btn-lg" href="Controlador?accion=add">Agregar Nuevo</a>
            <br>
            <br>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th class="text-center">ID</th>
                        <th class="text-center">Nombre</th>
                        <th class="text-center">Correo</th>
                        <th class="text-center">Clave</th>
                        <th class="text-center">Acciones</th>
                    </tr> 
                </thead>
                <%
                    PersonDao dao=new PersonDao();
                    List<Persona>list=dao.listar();
                    Iterator<Persona>iter=list.iterator();
                    Persona per=null;
                    while(iter.hasNext()){
                    per=iter.next();
                    
                    
                %>
                <tbody>
                    <tr>
                        <td class="text-center"><%= per.getId()%></td>
                        <td class="text-center"><%= per.getNombre()%></td>
                        <td class="text-center"><%= per.getCorreo()%></td>
                        <td class="text-center"><%= per.getClave()%></td>
                        <td class="text-center">
                            <a class="btn btn-warning" href="Controlador?accion=editar&ID=<%= per.getId() %>">Editar</a>
                            <a class="btn btn-danger" href="Controlador?accion=eliminar&ID=<%= per.getId() %>">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                <a href="Principal.jsp" class="btn btn-secondary">Regresar</a>
        </div>
    </body>
</html>
