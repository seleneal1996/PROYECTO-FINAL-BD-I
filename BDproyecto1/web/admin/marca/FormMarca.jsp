
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idMarca      =request.getParameter("idMarca");
            String Nombre       =request.getParameter("Nombre");
            String Nacionalidad =request.getParameter("Nacionalidad");
            String Contacto_idContacto =request.getParameter("Contacto_idContacto");
        %>
         <form action="modificarMarca.jsp" method="POST">
            
            <label for="idMarca">idMarca<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="idMarca" required value='<% out.print(idMarca);%>' />
            <br>
            <label for="Nombre">Nombre<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Nombre" required value='<% out.print(Nombre);%>'/>
            <br>
            <label for="Nacionalidad">Nacionalidad :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Nacionalidad" required value='<% out.print(Nacionalidad);%>' />
            <br>
            <label for="Contacto_idContacto">Contacto :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Contacto_idContacto" required value='<% out.print(Contacto_idContacto);%>' />
            <br>
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
