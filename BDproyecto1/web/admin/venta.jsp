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
        <table>
            <tr>
                <th>ID</th>
                <th>Fecha</th> 
                <th>Cliente_DNI</th>
                <th>Tipo_Venta</th> 
                <th>Estado_Venta_idEstado_Venta</th>
                <th></th> 
            </tr>
          <%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="venta";
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
                        out.print("<form action='venta/modelos.jsp'>");
                        out.print("<td><input type='text' name='idVenta' value='"+rs.getObject("idVenta")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Fecha' value='"+rs.getObject("Fecha")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Cliente_DNI' value='"+rs.getObject("Cliente_DNI")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Tipo_Venta_idFactura' value='"+rs.getObject("Tipo_Venta_idFactura")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Estado_Venta_idEstado_Venta' value='"+rs.getObject("Estado_Venta_idEstado_Venta")+"' readonly /></td>");
                        out.print("<td><input type='submit' value='Agregar Modelos'/></td>");
                        out.print("</form>");
                        
                        //out.print("<td><a hreft></a><a href='eliminarcliente.jsp?dni="+rs.getObject("dni")+"'>ELIMINAR</a></td>");

                    out.print("</tr>");
                }
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
%>    
        </table>
        <a href="venta/nuevoVenta.jsp"><button> Crear Venta</button></a>
    </body>
</html>
