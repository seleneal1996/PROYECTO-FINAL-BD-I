<%@ page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>    
    </head>
    <body>
        <%@include file="include/include.html" %>
        <table class="table table-bordered table-dark">
            <thead>
                <tr>
                    <th>idPGC</th>
                    <th>fecha</th> 
                    <th>total</th>
                    <th>Accion</th>
                </tr>
            </thead>
            <tbody>
          <%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="pgc";
        String usuario="root";
        String clave="root";
        try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion=DriverManager.getConnection(url,usuario,clave);
                String select_value=" SELECT * FROM "+tabla_nombre;
                Statement st=conexion.createStatement();
                ResultSet rs=st.executeQuery(select_value);
                while(rs.next()){                  
                    out.print("<tr>");
                        out.print("<td><input type='text' name='idPGC' value='"+rs.getObject("idPGC")+"'/></td>");
                        out.print("<td><input type='text' name='fecha' value='"+rs.getObject("fecha")+"'/></td>");
                        out.print("<td><input type='text' name='total' value='"+rs.getObject("total")+"'/></td>");
                        out.print("<td><a href='ingresoVentas.jsp?idPGC="+rs.getObject("idPGC")+"&fecha="+rs.getObject("fecha")+"' class='btn btn-primary'>ver Ventas</a></td>");
                        out.print("<td><a href='pagoSueldos.jsp?idPGC="+rs.getObject("idPGC")+"&fecha="+rs.getObject("fecha")+"' class='btn btn-primary'>ver Servicios</a></td>");
                        out.print("<td><a href='gastoServicios.jsp?idPGC="+rs.getObject("idPGC")+"&fecha="+rs.getObject("fecha")+"' class='btn btn-primary'>ver Sueldos</a></td>");
                    out.print("</tr>");
                }
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
%>    
            </tbody>
        </table>
        <a href="GPC/nuevoGPC.jsp"><button> Cierre Dia</button></a>
    </body>
</html>
