<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="venta_detalle";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String idVenta              =request.getParameter("idVenta");
            String Codigo                  =request.getParameter("Codigo");
            String Cantidad                  =request.getParameter("Cantidad");
            String Precio                  =request.getParameter("Precio");
            
            String insert_value=" INSERT INTO "+ tabla +" (Venta_idVenta, Modelo_Codigo, Cantidad, Precio) VALUES ("+idVenta+", "+Codigo+", "+Cantidad+", "+Precio+" );";
            out.print(insert_value);
            st.executeUpdate(insert_value);

            response.sendRedirect("exitoVenta.html");
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

