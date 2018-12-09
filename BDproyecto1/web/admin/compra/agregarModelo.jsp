
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idCompra           =request.getParameter("idCompra");

        %>
         <form action="guardarModelo.jsp" method="POST">
            
            <label for="idCompra">idCompra<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="idCompra" required value='<% out.print(idCompra);%>' />
            <br>
            <label for="Codigo">Codigo<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Codigo" required value=''/>
            <br>
            <label for="Cantidad">Cantidad<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Cantidad" required value=''/>
            <br>
            <label for="Precio">Precio<span><em>(requerido)</em></span></label>
            <br>
            <input type="number" required name="Precio" min="0" value="0" step="0.01" required />
            
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
