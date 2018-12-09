<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="asociado_has_sucursal";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String idSucursal              =request.getParameter("idSucursal");
            String Asociado_DNI               =request.getParameter("Asociado_DNI");
            
            String insert_value=" INSERT INTO "+ tabla +" (Sucursal_idSucursal, Asociado_DNI) VALUES ("+idSucursal+", "+Asociado_DNI+" );";
            out.print(insert_value);
            st.executeUpdate(insert_value);

            response.sendRedirect("exitoSucursal.html");
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

