<%@ page import="java.sql.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String DNI =request.getParameter("DNI");
        int contador= 1;
        Connection conexion=null;
        String mensaje="";
        String driver="com.mysql.jdbc.driver";
        String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
        String tabla_nombre="sueldo";
        String usuario="root";
        String clave="root";
        
        String Cantidad = "";
        try{
                Class.forName("com.mysql.jdbc.Driver");
                conexion=DriverManager.getConnection(url,usuario,clave);
                String select_value=" SELECT * FROM "+tabla_nombre+" WHERE Asociado_DNI = "+DNI;
                Statement st=conexion.createStatement();
                ResultSet rs=st.executeQuery(select_value);
                while(rs.next()){                  
  
                        Cantidad =""+rs.getObject("Cantidad");
                     
                }
                conexion.close();
        }catch(Exception ex){
                out.println(ex.toString());
        }	
        %>
         <form action="modificarSueldo.jsp" method="POST">
            
            <label for="DNI">DNI<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="DNI" required value='<% out.print(DNI);%>' />
            <br>
            <label for="Nombre">Cantidad<span><em>(requerido)</em></span></label>
            <br>
            <input type="text" name="Cantidad" required value='<% out.print(Cantidad);%>'/>
            <br><br>
            <input type="submit" name="submit" value="modificar"/>
        </form>
    </body>
</html>
