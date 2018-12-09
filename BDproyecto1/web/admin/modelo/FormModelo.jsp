
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String Codigo                   =request.getParameter("Codigo");
            String Descipcion               =request.getParameter("Descipcion");
            String Agrupacion_idAgrupacion  =request.getParameter("Agrupacion_idAgrupacion");

        %>
         <form action="modificarModelo.jsp" method="POST">
            
            <label for="Codigo">Codigo<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Codigo" required value='<% out.print(Codigo);%>' />
            <br>
            <label for="Descipcion">Descipcion<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Descipcion" required value='<% out.print(Descipcion);%>'/>
            <br>
            <label for="Agrupacion_idAgrupacion">Agrupacion_idAgrupacion :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Agrupacion_idAgrupacion" required value='<% out.print(Agrupacion_idAgrupacion);%>' />
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
