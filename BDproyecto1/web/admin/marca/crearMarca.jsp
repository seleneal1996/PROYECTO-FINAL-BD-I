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

            String Nombre               = request.getParameter("Nombre");
            String Nacionalidad         = request.getParameter("Nacionalidad");
            String Nombrec              = request.getParameter("Nombrec");
            String Telefonoc            = request.getParameter("Telefonoc");
            String Correoc              = request.getParameter("Correoc");

            
            String insert_value="CALL `nuevoMarca` ('"+Nombre+"', '"+Nacionalidad+"', '"+Nombrec+"', '"+Telefonoc+"', '"+Correoc+"' );";
            out.print(insert_value);
            st.executeUpdate(insert_value);

            response.sendRedirect("../marca.jsp");
                
            
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

