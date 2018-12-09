<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="sucursal";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String Direccion               =request.getParameter("Direccion");
            String Telefono         =request.getParameter("Telefono");
            String Empresa_idEmpresa  =request.getParameter("Empresa_idEmpresa");
            
            String insert_value=" INSERT INTO "+ tabla +" (Direccion, Telefono, Empresa_idEmpresa) VALUES ('"+Direccion+"', '"+Telefono+"', "+Empresa_idEmpresa+" );";
            out.print(insert_value);
            st.executeUpdate(insert_value);

            response.sendRedirect("../sucursal.jsp");
                
            
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

