<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="contacto";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String idContacto       =request.getParameter("idContacto");
            String Nombre           =request.getParameter("Nombre");
            String Telefono         =request.getParameter("Telefono");
            String Correo           =request.getParameter("Correo");
            
            String select_value="SELECT * FROM "+ tabla+" WHERE idContacto="+idContacto;
            ResultSet rs=st.executeQuery(select_value);
            if(rs.next()){
                String insert_value="UPDATE "+ tabla +" SET Nombre='"+Nombre+"', Telefono='"+Telefono+"', Correo='"+Correo+"' WHERE idContacto="+idContacto+" ";
                st.executeUpdate(insert_value);

                response.sendRedirect("exitoContacto.html");
                
            }
            else{
                response.sendRedirect("errorContacto.html");
            }
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

