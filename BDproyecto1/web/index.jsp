<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <%@include file="includes/head.jsp" %>

<body  onload="checkCookie()">
<div class="bg">
    <%@include file="includes/header.jsp" %>
  <div id="slider">
    <div class="slider-block">
      <div class="slider">
        <ul class="items">
          <li><img src="images/slide-1.jpg" alt="">
            <div class="banner">
              <div><span>Ford</span><strong>FORD ECOSPORT</strong>
                <p>El EcoSport de primera generación está¡ emparentado con el Ford Fusión, la versión familiar del Ford Fiesta de quinta generación, mientras que la segunda generación de la EcoSport está emparentada con el Ford Fiesta de sexta generación.</p>
                </div>
            </div>
          </li>
          <li><img src="images/slide-2.jpg" alt="">
            <div class="banner">
              <div><span>Maserati GT</span><strong>Gran Turismo</strong>
                <p>El GT tiene carroceria coupÃ© de dos puertas, fue presentado oficialmente en el Salon del Automovil de Ginebra de 2007. El GranCabrio es un descapotable que se presentacion en el salon del Automovil de Frankfurt de 2009. Muchos elementos del diseño vienen del Ferrari 599 GTB Fiorano, que tambien es un gran turismo.</p>
                </div>
            </div>
          </li>
          <li><img src="images/slide-3.jpg" alt="">
            <div class="banner">
              <div><span>Honda HSC</span><strong>Honda Sports</strong>
                <p>El NSX se encuentra en perfecto estado. Su cuentakilometros solo marca 56.234 kilometros, lo que significa que recorrera unos 2.250 kilometros al año.</p>
                </div>
            </div>
          </li>
        </ul>
      </div>
      <a href="#" class="prev"></a> <a href="#" class="next"></a> </div>
  </div>
  <section id="content">
    <div class="block-1 box-1">
      <div> <img src="images/page1-img1.jpg" alt="">
        <p class="text-1">Contactenos<strong>MR AUTOS</strong></p>
        <p class="upper">Si necesita mas informacion, no dude en ponerse en contacto con nosotros, estaremos encantados de ayudarle en todo lo que podamos. Estos son nuestros datos de contacto: MR AUTOS  Urb Jiron Victoria 223 Manuel Prado - TelÃ©fono: 986 192 501 - E-mail: info@mrAutos.es</p>
        </div>
      <div> <img src="images/page1-img2.jpg" alt="">
        <p class="text-1">Prevencion<strong>de riesgos</strong></p>
        <p class="upper">Nuestros autos incluyen el sistema de frenado automatico como parte del equipo estandar en practicamente todos sus modelos para 2022, pero por ahora esa tecnologia es opcional en la mayoria de los  modelos, especialmente en las marcas consideradas no de lujo
        </div>
      <div> <img src="images/page1-img3.jpg" alt="">
        <p class="text-1">Servicios<strong>de mantenimiento</strong></p>
        <p class="upper">Al adquirir cualquiera de nuestros autos ,UD obtiene servicio gratuito de mantenimiento durante 1 año, esto incluye:<br>-Mantenimiento Menor <br>-Mantenimiento Mayor <br>-Cambio de Aceite <br>-Cambio de Frenos</p></p>
        </div>
      <div class="last"> <img src="images/page1-img4.jpg" alt="">
        <p class="text-1">Neumaticos <strong>y Ruedas</strong></p>
        <p class="upper">Si tienes que cambiar tus neumaticos ten en cuenta que poseemos los mejores marcas para su auto..</p>
    </div>
  </section>
 <%@include file="includes/foot.jsp" %>
 </div>
</body>
</html>