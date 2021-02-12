<%-- 
    Document   : enviarMensaje
    Created on : 12 feb. 2021, 11:32:14
    Author     : Pablo
--%>

<%@page import="Modelo.Alumno"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Mensaje a alumnos</h1>
        
        <%
            ArrayList<Alumno> alumnos = (ArrayList<Alumno>) request.getAttribute("alumnos");
            String grupo = (String) request.getAttribute("grupo");
        %>
        
        <h2><%= grupo %></h2>

        <table>
            <tbody>
                <%
                    for (Alumno alum : alumnos) {
                %>
                <tr>
                    <td><%= alum.getNombre()%></td>
                    <td><%= alum.getApellidos()%></td>
                    <td><%= alum.getEmail()%></td>
                </tr>




                <%    }%>
            </tbody>
        </table>


    </body>
</html>
