
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="crearVenta.jsp" method="POST">
            <label for="fecha">fecha<span><em>(requerido)</em></span></label>
            <br>
            <input type="date" name="fecha" required value="dd/MM/yyyy"/>
            <br>
            <label for="Cliente_DNI">Cliente_DNI<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Cliente_DNI" required />
            <br>
            <label for="Estado_Venta_idEstado_Venta">Estado_Venta_idEstado_Venta<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Estado_Venta_idEstado_Venta" required value="1"/>
            <br>
            <label for="Tipo_Venta_idFactura">Tipo_Venta_idFactura<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Tipo_Venta_idFactura" required value="1"/>
            <br>
            <input type="submit" name="submit" value="Crear"/>
        </form>
    </body>
</html>
