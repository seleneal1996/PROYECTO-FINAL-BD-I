
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="crearContacto.jsp" method="POST">
            <label for="Nombre">Nombre<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Nombre" required />
            <br>
            <label for="Telefono">Telefono :<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Telefono" required />
            <br>
            <label for="Correo">Contacto<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Correo" required />
            <br>
            <input type="submit" name="submit" value="Crear"/>
        </form>
    </body>
</html>
