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
                <th>Codigo</th>
                <th>Descipcion</th> 
                <th>Agrupacion</th>
                <th>Precio</th>
            </tr>
<%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="modelo";
        String usuario="root";
        String clave="root";
        try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion=DriverManager.getConnection(url,usuario,clave);
                String select_value=" SELECT `modelo`.`Codigo`, `modelo`.`Descipcion`, `modelo`.`Agrupacion_idAgrupacion`, `modelo`.`Precio_idPrecio`, `precio`.`Precio` FROM `modelo` INNER JOIN `precio` ON `precio`.`idPrecio`=`modelo`.`Precio_idPrecio`; ";
                Statement st=conexion.createStatement();
                Statement stp=conexion.createStatement();
                ResultSet rs=st.executeQuery(select_value);
                while(rs.next()){                  
                    out.print("<tr>");
                        out.print("<form action='modelo/FormModelo.jsp'>");
                        out.print("<td><input type='text' name='Codigo' value='"+rs.getObject("Codigo")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Descipcion' value='"+rs.getObject("Descipcion")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Agrupacion_idAgrupacion' value='"+rs.getObject("Agrupacion_idAgrupacion")+"' readonly /></td>");

                        out.print("<td><input type='submit' value='Modificar'/></td>");
                        out.print("</form>");
                    out.print("</tr>");    
                    out.print("<tr>");
                        out.print("<form action='modelo/FormPrecio.jsp'>");
                        out.print("<td><input type='text' hidden /></td>");
                        out.print("<td><input type='text' name='idPrecio' value='"+rs.getObject("Precio_idPrecio")+"' hidden /></td>");
                        out.print("<td><input type='text' name='Precio' value='"+rs.getObject("Precio")+"'  readonly /></td>");
                        out.print("<td><input type='submit' value='Modificar'/></td>");
                        out.print("</form>");
                    out.print("</tr>");
                                            
                }
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
%>    
        </table>
        <a href="modelo/nuevoModelo.jsp"><button> Agregar</button></a>
    </body>
</html>
