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

            String idSucursal              =request.getParameter("idSucursal");
            String Direccion               =request.getParameter("Direccion");
            String Telefono         =request.getParameter("Telefono");
            String Empresa_idEmpresa  =request.getParameter("Empresa_idEmpresa");
            
            String select_value="SELECT * FROM "+ tabla+" WHERE idSucursal="+idSucursal;
            ResultSet rs=st.executeQuery(select_value);
            if(rs.next()){
                String insert_value="UPDATE "+ tabla +" SET Direccion='"+Direccion+"', Telefono='"+Telefono+"', Empresa_idEmpresa="+Empresa_idEmpresa+" WHERE idSucursal="+idSucursal+" ";
                st.executeUpdate(insert_value);

                response.sendRedirect("exitoSucursal.html");
                
            }
            else{
                response.sendRedirect("errorSucursal.html");
            }
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

