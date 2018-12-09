
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idPrecio     =request.getParameter("idPrecio");
            String Precio       =request.getParameter("Precio");
        %>
         <form action="modificarPrecio.jsp" method="POST">
            
            <label for="idPrecio">idPrecio<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="idPrecio" required value='<% out.print(idPrecio);%>' />
            <br>
            <label for="Precio">Precio<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Precio" required value='<% out.print(Precio);%>'/>
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
