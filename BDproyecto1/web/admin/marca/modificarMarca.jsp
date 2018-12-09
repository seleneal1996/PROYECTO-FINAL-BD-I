<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="marca";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String idMarca              =request.getParameter("idMarca");
            String Nombre               =request.getParameter("Nombre");
            String Nacionalidad         =request.getParameter("Nacionalidad");
            String Contacto_idContacto  =request.getParameter("Contacto_idContacto");
            
            String select_value="SELECT * FROM "+ tabla+" WHERE idMarca="+idMarca;
            ResultSet rs=st.executeQuery(select_value);
            if(rs.next()){
                String insert_value="UPDATE "+ tabla +" SET Nombre='"+Nombre+"', Nacionalidad='"+Nacionalidad+"', Contacto_idContacto='"+Contacto_idContacto+"' WHERE idMarca="+idMarca+" ";
                st.executeUpdate(insert_value);

                response.sendRedirect("exitoMarca.html");
                
            }
            else{
                response.sendRedirect("errorMarca.html");
            }
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

