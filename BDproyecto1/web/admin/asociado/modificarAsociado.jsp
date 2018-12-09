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

            String DNI              =request.getParameter("DNI");
            String Nombre           =request.getParameter("Nombre");
            String Telefono         =request.getParameter("Telefono");
            String Direccion        =request.getParameter("Direccion");
            String Cargo_idCargo    =request.getParameter("Cargo_idCargo");
            
            String select_value="SELECT * FROM "+ tabla+" WHERE DNI="+DNI;
            ResultSet rs=st.executeQuery(select_value);
            if(rs.next()){
                String insert_value="UPDATE "+ tabla +" SET Nombre='"+Nombre+"', Telefono='"+Telefono+"', Direccion='"+Direccion+"', Cargo_idCargo='"+Cargo_idCargo+"' WHERE DNI="+DNI+" ";
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

