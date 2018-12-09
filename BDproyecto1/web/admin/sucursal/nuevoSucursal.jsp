
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="crearSucursal.jsp" method="POST">
            <label for="Direccion">Direccion<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Direccion" required />
            <br>
            <label for="Telefono">Telefono :<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Telefono" required />
            <br>
            <label for="Empresa_idEmpresa">Contacto<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Empresa_idEmpresa" required value="1"/>
            <br>
            <input type="submit" name="submit" value="Crear"/>
        </form>
    </body>
</html>
