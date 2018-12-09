<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="modelo_has_compra";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String idCompra              =request.getParameter("idCompra");
            String Codigo                  =request.getParameter("Codigo");
            String Cantidad                  =request.getParameter("Cantidad");
            String Precio                  =request.getParameter("Precio");
            
            String insert_value=" INSERT INTO "+ tabla +" (compra_idcompra, Modelo_Codigo, Cantidad, precio_unitario) VALUES ("+idCompra+", "+Codigo+", "+Cantidad+", "+Precio+" );";
            out.print(insert_value);
            st.executeUpdate(insert_value);

            response.sendRedirect("exitoCompra.html");
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

