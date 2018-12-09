<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="precio";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String idPrecio     =request.getParameter("idPrecio");
            String Precio       =request.getParameter("Precio");
            
            String select_value="SELECT * FROM "+ tabla+" WHERE idPrecio="+idPrecio;
            ResultSet rs=st.executeQuery(select_value);
            if(rs.next()){
                String insert_value="UPDATE "+ tabla +" SET Precio="+Precio+" WHERE idPrecio="+idPrecio+" ";
                st.executeUpdate(insert_value);

                response.sendRedirect("exitoModelo.html");
                
            }
            else{
                response.sendRedirect("errorModelo.html");
            }
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

