
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
         <form action="guardarAlamacen.jsp" method="POST">
            
            <label for="idSucursal">idSucursal<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="idSucursal" required value='<% out.print(idSucursal);%>' />
            <br>
            <label for="idAlmacen">idAlmacen<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="idAlmacen" required value=''/>
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
