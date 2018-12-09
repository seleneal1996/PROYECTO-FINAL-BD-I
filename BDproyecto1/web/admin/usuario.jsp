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
                <th>Usuario</th>
                <th>Password</th> 
                <th>Tipo Persona</th>
                <th>Accion</th>
            </tr>
          <%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="usuario";
        String usuario="root";
        String clave="root";
        try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion=DriverManager.getConnection(url,usuario,clave);
                String select_value=" SELECT * FROM "+tabla_nombre+" inner join tipo_usuario ON "+tabla_nombre+".tipo_usuario_idtipo_usuario = tipo_usuario.idtipo_usuario";
                Statement st=conexion.createStatement();
                ResultSet rs=st.executeQuery(select_value);
                while(rs.next()){                  
                    out.print("<tr>");
                        out.print("<form action='usuario/FormUsuario.jsp'>");
                        out.print("<td><input readonly type='text' name='usuario' value='"+rs.getObject("usuario")+"'/></td>");
                        out.print("<td><input readonly type='text' name='password' value='"+rs.getObject("password")+"'/></td>");
                        out.print("<td><input readonly type='text' name='titulo' value='"+rs.getObject("titulo")+"'/></td>");
                        out.print("<td><input type='submit' value='Modificar'/></td>");
                        out.print("<td><input type='text' name='tipo_usuario_idtipo_usuario' value='"+rs.getObject("tipo_usuario_idtipo_usuario")+"' hidden /></td>");
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
        <a href="usuario/nuevoform.jsp"><button> Agregar</button></a>
    </body>
</html>
