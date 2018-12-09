
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="crearMarca.jsp" method="POST">
            <label for="Nombre">Nombre<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Nombre" required />
            <br>
            <label for="Nacionalidad">Nacionalidad :<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Nacionalidad" required />
            <br>
            <label for="Nombrec">Nombre Contacto<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Nombrec" required />
            <br>
            <label for="Nombrec">Telefono Contacto<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Telefonoc" required />
            <br>
            <label for="Correoc">Correo Contacto<span><em>(requerido)</em></span></label>
            <br>
            <input type="mail" name="Correoc" required />
            <br>
            <input type="submit" name="submit" value="Crear"/>
        </form>
    </body>
</html>
