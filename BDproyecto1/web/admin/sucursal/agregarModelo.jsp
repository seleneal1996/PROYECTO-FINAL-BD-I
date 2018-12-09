
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String idSucursal           =request.getParameter("idSucursal");

        %>
         <form action="guardarModelo.jsp" method="POST">
            
            <label for="idSucursal">idSucursal<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="idSucursal" required value='<% out.print(idSucursal);%>' />
            <br>
            <label for="Codigo">Codigo<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Codigo" required value=''/>
            <br>
            <label for="Cantidad">Cantidad<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Cantidad" required value=''/>
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
