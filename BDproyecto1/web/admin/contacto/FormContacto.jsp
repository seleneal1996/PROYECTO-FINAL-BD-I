
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idContacto =request.getParameter("idContacto");
            String Nombre =request.getParameter("Nombre");
            String Telefono=request.getParameter("Telefono");
            String Correo =request.getParameter("Correo");
        %>
         <form action="modificarContacto.jsp" method="POST">
            
            <label for="idContacto">idContacto<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="idContacto" required value='<% out.print(idContacto);%>' />
            <br>
            <label for="Nombre">Nombre<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Nombre" required value='<% out.print(Nombre);%>'/>
            <br>
            <label for="Telefono">Telefono :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Telefono" required value='<% out.print(Telefono);%>' />
            <br>
             <label for="Correo">Correo :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Correo" required value='<% out.print(Correo);%>' />
            <br>
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
