<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html lang="en">
<%@include file="includes/head.jsp" %>

<body onload="checkCookie()">
<div class="bg">
    <%@include file="includes/header.jsp" %>

  <section id="content">
    <div class="sub-page">
        
        
        
            <section class="tienda">
        <h2>En El Carrito</h2>
        
        <div class="contenedor">
<%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="autoagregados";
        String usuario="root";
        String clave="root";
        Cookie[] cookies = request.getCookies();
        String dni=request.getParameter("dni");;
        String ordenventa=request.getParameter("ordenventa");;

        //out.println(dni+" "+ordenventa);
        try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion=DriverManager.getConnection(url,usuario,clave);
                String select_value=" SELECT * FROM "+tabla_nombre+" WHERE cliente_dni = "+dni+" AND ordenventa ="+ordenventa;
                Statement st=conexion.createStatement();
                ResultSet rs=st.executeQuery(select_value);
                while(rs.next()){
                    out.print("<article class='producto'>");
                        out.print("<div class='product--fond'>");
                            out.print("<div class='product_inner'>");
                                out.print("<img src='images/auto"+rs.getObject("idauto")+".jpg' height='75xp'  width='75xp' />");
                                out.print("<p>"+rs.getObject("modelo")+"</p>");
                                out.print("<p>"+rs.getObject("marca")+"</p>");
                                out.print("<p>Precio S/"+rs.getObject("precio")+"</p>");
                                out.print("<button class='btnHiden' style='visibility: hidden;' onclick=\"AjaxOutOrdenVenta('"+rs.getObject("idauto")+"','"+rs.getObject("marca")+"','"+rs.getObject("modelo")+"')\" >Eliminar del carrito</button>");
                            out.print("</div>");
                            out.print("<div class='product_overlay'>");
                                out.print("<h2>Agregado</h2>");
                                out.print("<i class=' icon-ok'></i>");
                            out.print("</div>");
                        out.print("</div>");
                    out.print("</article>");
                }
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
%>
        </div>
        
        <%
        out.print("<button onclick='comprarAutos()'> Comprar");
        out.print("</button>");
        %>
    </section>
        
        
    </div>
  </section>
 <%@include file="includes/foot.jsp" %>
</div>
</body>
</html>