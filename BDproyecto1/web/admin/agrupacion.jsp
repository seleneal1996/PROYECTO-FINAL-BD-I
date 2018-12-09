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
                <th>idAgrupacion</th>
                <th>Nombre</th> 
                <th>Descripion</th>
                <th>Marca</th>
            </tr>
<%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="agrupacion";
        String usuario="root";
        String clave="root";
        try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion=DriverManager.getConnection(url,usuario,clave);
                String select_value=" SELECT a.idAgrupacion AS idAgrupacion, a.Nombre AS Nombre, a.Descripion AS Descripion, a.Marca_idMarca AS Marca_idMarca, m.Nombre AS NombreM FROM "+tabla_nombre+" AS a INNER JOIN marca AS m WHERE a.Marca_idMarca=m.idMarca";
                Statement st=conexion.createStatement();
                ResultSet rs=st.executeQuery(select_value);
                while(rs.next()){                  
                    out.print("<tr>");
                        out.print("<form action='agrupacion/FormAgrupacion.jsp'>");
                        out.print("<td><input type='text' name='idAgrupacion' value='"+rs.getObject("idAgrupacion")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Nombre' value='"+rs.getObject("Nombre")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Descripion' value='"+rs.getObject("Descripion")+"' readonly /></td>");
                        out.print("<td><input type='text' name='NombreM' value='"+rs.getObject("NombreM")+"' readonly /></td>");
                        out.print("<td><input type='submit' value='Modificar'/></td>");
                        out.print("<td><input type='text' name='Marca_idMarca' value='"+rs.getObject("Marca_idMarca")+"' hidden /></td>");
                        out.print("</form>");
                    out.print("</tr>");
                }
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
%>    
        </table>
        <a href="agrupacion/nuevoAgrupacion.jsp"><button> Agregar</button></a>
    </body>
</html>
