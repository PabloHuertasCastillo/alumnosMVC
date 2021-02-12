<%-- 
    Document   : mostrarGrupo
    Created on : 5 feb. 2021, 11:16:35
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
            String grupoActivo = (String) request.getAttribute("grupoSel");
            ArrayList<String> grupos = (ArrayList<String>) request.getAttribute("grupos");
            ArrayList<Alumno> alumnos = (ArrayList<Alumno>) request.getAttribute("alumnos");
        %>   
        Grupo Seleccionado: <%= grupoActivo%>
        <br>
        <br>
        <form action="AlumnosControler" method="get">
            Selecciona un grupo: <select name="grupo" >

                <%
                    for (String grup : grupos) {
                        String textoSelected = "";
                        if (grup.equalsIgnoreCase(grupoActivo)) {
                            textoSelected = "selected";
                        }
                %>

                <option <%= textoSelected%> value="<%= grup%>"><%= grup%></option>

                <%     }   %>
            </select>
            <input type="submit" value="Enviar" >
        </form >

        <br>
        <br>

        <form action="AlumnosControler" method="post"  >
            Alumnos:
        <input type="hidden" value="<%= grupoActivo%>" name="grupo" >
            <table>
                <tbody>
                    <%
                        for (Alumno alum : alumnos) {
                    %>

               

                    <tr>
                        <td scope="row"> <%= alum.getId()%></td>
                        <td><%= alum.getNombre()%></td>
                        <td><%= alum.getApellidos()%></td>
                        <td><%= alum.getEmail()%></td>
                        <td> <input name="<%= alum.getId()%>" value="1" type="checkbox" > </td>
                    </tr>




                    <%    }%>
                </tbody>
            </table>
            <br>
            <br>
            <input type="submit" value="Enviar" >
        </form>
    </body>
</html>
