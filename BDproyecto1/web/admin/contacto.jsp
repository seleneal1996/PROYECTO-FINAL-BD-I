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
                <th>idContacto</th>
                <th>Nombre</th> 
                <th>Telefono</th>
                <th>Correo</th>
            </tr>
          <%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="contacto";
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
                        out.print("<form action='contacto/FormContacto.jsp'>");
                        out.print("<td><input type='text' name='idContacto' value='"+rs.getObject("idContacto")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Nombre' value='"+rs.getObject("Nombre")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Telefono' value='"+rs.getObject("Telefono")+"' readonly /></td>");
                        out.print("<td><input type='text' name='Correo' value='"+rs.getObject("Correo")+"' readonly /></td>");
                        out.print("<td><input type='submit' value='Modificar'/></td>");
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
        <a href="contacto/nuevoContacto.jsp"><button> Agregar</button></a>
    </body>
</html>
