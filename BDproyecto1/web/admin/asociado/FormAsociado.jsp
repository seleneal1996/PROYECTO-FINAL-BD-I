
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String DNI =request.getParameter("DNI");
            String Nombre =request.getParameter("Nombre");
            String Telefono=request.getParameter("Telefono");
            String Direccion =request.getParameter("Direccion");
            String Cargo_idCargo =request.getParameter("Cargo_idCargo");
        %>
         <form action="modificarAsociado.jsp" method="POST">
            
            <label for="DNI">DNI<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="DNI" required value='<% out.print(DNI);%>' />
            <br>
            <label for="Nombre">Nombre<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Nombre" required value='<% out.print(Nombre);%>'/>
            <br>
            <label for="Telefono">Telefono :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Telefono" required value='<% out.print(Telefono);%>' />
            <br>
             <label for="Direccion">Direccion :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Direccion" required value='<% out.print(Direccion);%>' />
            <br>
             <label for="Cargo_idCargo">Cargo :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Cargo_idCargo" required value='<% out.print(Cargo_idCargo);%>' />
            <br>
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
