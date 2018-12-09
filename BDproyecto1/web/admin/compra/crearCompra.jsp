<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="compra";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();
            String fecha               =request.getParameter("fecha");
            Date date = new SimpleDateFormat("yyyy-MM-dd").parse(fecha);
            String insert_value=" INSERT INTO "+ tabla +" (fecha) VALUES ( '"+fecha+"' );";
            out.print(insert_value);
            st.executeUpdate(insert_value);

            response.sendRedirect("../compra.jsp");
                
            
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

