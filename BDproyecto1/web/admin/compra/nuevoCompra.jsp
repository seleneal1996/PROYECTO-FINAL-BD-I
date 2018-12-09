
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="crearCompra.jsp" method="POST">
            <label for="fecha">fecha<span><em>(requerido)</em></span></label>
            <br>
            <input type="date" name="fecha" required value="dd/MM/yyyy"/>
            <br>
            <input type="submit" name="submit" value="Crear"/>
        </form>
    </body>
</html>
