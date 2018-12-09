
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="crearAsociado.jsp" method="POST">
            <label for="DNI">DNI<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="DNI" required />
            <br>
            <label for="Nombre">Nombre<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Nombre" required />
            <br>
            <label for="Telefono">Telefono :<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Telefono" required />
            <br>
            <label for="Direccion">Direccion :<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Direccion" required />
            <br>
            <label for="Cargo_idCargo">Cargo :<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Cargo_idCargo" required />
            <br>
             <label for="Cargo_idCargo">Sueldo :<span><em>(requerido)</em></span></label>
            <br>
            <input type="number" name="Sueldo" required />
            <br>
            <input type="submit" name="submit" value="Crear"/>
        </form>
    </body>
</html>
