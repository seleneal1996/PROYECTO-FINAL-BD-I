<!DOCTYPE html>
<html lang="en">
<%@include file="includes/head.jsp" %>

<body onload="checkCookie()">
<div class="bg">
      <%@include file="includes/header.jsp" %>
s
  <section id="content">
    <div class="sub-page">
      <div class="sub-page-left box-9">
        <form action="login/checklogin.jsp" method="post" >
            <p> Inicie sesión al nuevo mundo</p>
            <br>
            <label>Dirección de correo:</label>
            <br>
            <input type="email" name="correo" id="correo" required>
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
      </div>
      <div class="sub-page-right">
        <p>Registrate Mr Auto </p>
        <form action="cliente/nuevocliente.jsp" method="POST">
            <label for="nombre">Nombre:<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="nombre" required/>
            <br>
            <label for="dni">DNI:<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="dni" required/>
            <br>
            <label for="correo">Email :<span><em>(requerido)</em></span></label>
            <br>
            <input type="email" name="correo" required/>
            <br>
            <label for="contrasena">Contrasenha<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="contrasena" required/>
            <br>
            <br><br>
            <input type="submit" name="submit" value="Suscribirse"/>
        </form>
        <br>
      </div>
    </div>
  </section>
 <%@include file="includes/foot.jsp" %>
</div>
</body>
</html>