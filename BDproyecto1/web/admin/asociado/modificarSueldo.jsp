<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="sueldo";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String DNI              =request.getParameter("DNI");
            String Cantidad           =request.getParameter("Cantidad");
  
            
            String select_value="SELECT * FROM "+ tabla+" WHERE Asociado_DNI="+DNI;
            ResultSet rs=st.executeQuery(select_value);
            if(rs.next()){
                String insert_value="UPDATE "+ tabla +" SET Cantidad="+Cantidad+" WHERE Asociado_DNI="+DNI+" ";
                st.executeUpdate(insert_value);

                response.sendRedirect("exitoAsociado.html");
                
            }
            else{
                response.sendRedirect("errorAsociado.html");
            }
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

