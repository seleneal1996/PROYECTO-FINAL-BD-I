<%-- 
    Document   : index.jsp
    Created on : 8/07/2018, 04:07:18 PM
    Author     : pbl_8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form action="checklogin.jsp" method="post" >
            <p> Inicie sesión al nuevo mundo</p>
            <br>
            <label>Dirección de correo:</label>
            <br>
            <input type="text" name="user" id="correo" required>
            <br>
            <br>
            <label>Password:</label>
            <br>
            <input type="password" name="contrasena" id="contrasena" required>
            <br>
            <br>
            <input type="submit" name="Submit" value="Acceder">
            <br>
            <br>
        </form>
    </body>
</html>
