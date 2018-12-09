
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="crearModelo.jsp" method="POST">
            <label for="Descipcion">Descipcion<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Descipcion" required />
            <br>
            <label for="Agrupacion_idAgrupacion">Agrupacion :<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Agrupacion_idAgrupacion" required />
            <br>
            <label for="Precio">Precio<span><em>(requerido)</em></span></label>
            <br>
            <input type="number" required name="Precio" min="0" value="0" step="0.01" required />
            <br>
            <input type="submit" name="submit" value="Crear"/>
        </form>
    </body>
</html>
