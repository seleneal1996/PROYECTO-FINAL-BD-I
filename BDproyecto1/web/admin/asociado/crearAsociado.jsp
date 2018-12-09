<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="asociado";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String DNI   =request.getParameter("DNI");
            String Telefono =request.getParameter("Telefono");
            String Direccion   =request.getParameter("Direccion");
            String Nombre   =request.getParameter("Nombre");
            String Cargo_idCargo =request.getParameter("Cargo_idCargo");
            String Sueldo =request.getParameter("Sueldo");
            
            String insert_value=" CALL `nuevoAsociado` ("+DNI+", '"+Telefono+"', '"+Direccion+"', '"+Nombre+"', "+Cargo_idCargo+", "+Sueldo+");";
            out.print(insert_value);
            st.executeUpdate(insert_value);

            response.sendRedirect("../asociado.jsp");
                
            
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

