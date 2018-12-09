<%@ page  import="java.sql.*"%>


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
        <table>
            <tr>
                <th>idSucursal</th> 
                <th>DNI</th> 
                <th>Nombre</th>
            </tr>
          <%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="asociado_has_sucursal";
        String usuario="root";
        String clave="root";
        try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion=DriverManager.getConnection(url,usuario,clave);
                String idSucursal           =request.getParameter("idSucursal");
                String select_value="SELECT * FROM asociado_has_sucursal INNER JOIN asociado as a ON a.DNI= Asociado_DNI WHERE Sucursal_idSucursal = "+idSucursal;
                Statement st=conexion.createStatement();
                ResultSet rs=st.executeQuery(select_value);
                while(rs.next()){                  
                    out.print("<tr>");
                        out.print("<td><input type='text' name='idSucursal' value='"+rs.getObject("Sucursal_idSucursal")+"'/></td>");
                        out.print("<td><input type='text' name='Asociado_DNI' value='"+rs.getObject("Asociado_DNI")+"'/></td>");
                        out.print("<td><input type='text' name='Nombre' value='"+rs.getObject("Nombre")+"'/></td>");          
                    out.print("</tr>");
                }
                out.print("<a href=\"agregarAsociado.jsp?idSucursal="+idSucursal+"\"><button> Agregar</button></a>");
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
%>    
        </table>
        
    </body>
</html>
