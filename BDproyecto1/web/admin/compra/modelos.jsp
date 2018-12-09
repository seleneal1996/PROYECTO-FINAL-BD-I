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
                <th>idCompra</th> 
                <th>Codigo</th> 
                <th>Cantidad</th>
                <th>Precio  </th>
            </tr>
          <%
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="modelo_has_compra";
        String usuario="root";
        String clave="root";
        try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion=DriverManager.getConnection(url,usuario,clave);
                String idCompra           =request.getParameter("idCompra");
                String select_value="SELECT * FROM modelo_has_compra INNER JOIN modelo as m ON m.Codigo= Modelo_Codigo WHERE Compra_idCompra = "+idCompra;
                Statement st=conexion.createStatement();
                ResultSet rs=st.executeQuery(select_value);
                while(rs.next()){                  
                    out.print("<tr>");
                        out.print("<td><input type='text' name='idCompra' value='"+rs.getObject("Compra_idCompra")+"'/></td>");
                        out.print("<td><input type='text' name='Codigo' value='"+rs.getObject("Codigo")+"'/></td>");
                        out.print("<td><input type='text' name='Cantidad' value='"+rs.getObject("Cantidad")+"'/></td>");  
                        out.print("<td><input type='text' name='precio_unitario' value='"+rs.getObject("precio_unitario")+"'/></td>");  
                    out.print("</tr>");
                }
                out.print("<a href=\"agregarModelo.jsp?idCompra="+idCompra+"\"><button> Agregar</button></a>");
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
%>    
        </table>
        
    </body>
</html>
