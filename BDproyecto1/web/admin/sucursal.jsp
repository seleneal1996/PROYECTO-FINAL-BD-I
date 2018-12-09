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
                <th>idSucursal</th>
                <th>Direccion</th> 
                <th>Telefono</th>
                <th>Empresa</th>
            </tr>
          <%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="sucursal";
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
                        out.print("<form action='sucursal/FormSucursal.jsp'>");
                        out.print("<td><input type='text' name='idSucursal' value='"+rs.getObject("idSucursal")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Direccion' value='"+rs.getObject("Direccion")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Telefono' value='"+rs.getObject("Telefono")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Empresa_idEmpresa' value='"+rs.getObject("Empresa_idEmpresa")+"' readonly /></td>");
                        out.print("<td><input type='submit' value='Modificar'/></td>");
                        out.print("</form>");
                        out.print("<form action='sucursal/almacenes.jsp' method='GET'>");
                        out.print("<td><input type='text' name='idSucursal' hidden value='"+rs.getObject("idSucursal")+"' readonly /></td>");
                        out.print("<td><input type='submit' value='Almacenes' /></td>");
                        out.print("</form>");
                        out.print("<form action='sucursal/asociados.jsp?' method='GET'>");
                        out.print("<td><input type='text' name='idSucursal' hidden value='"+rs.getObject("idSucursal")+"' readonly /></td>");
                        out.print("<td><input type='submit' value='Asociados' /></td>");
                        out.print("</form>");
                        out.print("<form action='sucursal/modelos.jsp?' method='GET'>");
                        out.print("<td><input type='text' name='idSucursal' hidden value='"+rs.getObject("idSucursal")+"' readonly /></td>");
                        out.print("<td><input type='submit' value='Stock' /></td>");
                        out.print("</form>");
                    out.print("</tr>");
                }
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
%>    
        </table>
        <a href="sucursal/nuevoSucursal.jsp"><button> Agregar</button></a>
    </body>
</html>
