
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
            String Direccion            =request.getParameter("Direccion");
            String Telefono             =request.getParameter("Telefono");
            String Empresa_idEmpresa    =request.getParameter("Empresa_idEmpresa");
        %>
         <form action="modificarSucursal.jsp" method="POST">
            
            <label for="idSucursal">idSucursal<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="idSucursal" required value='<% out.print(idSucursal);%>' />
            <br>
            <label for="Direccion">Direccion<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Direccion" required value='<% out.print(Direccion);%>'/>
            <br>
            <label for="Telefono">Telefono :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Telefono" required value='<% out.print(Telefono);%>' />
            <br>
            <label for="Empresa_idEmpresa">Empresa :<span><em>(requerido)</em></span></label>
            <br>
            <input name="Empresa_idEmpresa" required value='<% out.print(Empresa_idEmpresa);%>' />
            <br>
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
