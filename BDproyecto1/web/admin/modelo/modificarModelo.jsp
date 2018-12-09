<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="modelo";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String Codigo                       =request.getParameter("Codigo");
            String Agrupacion_idAgrupacion      =request.getParameter("Agrupacion_idAgrupacion");
            String Descipcion                   =request.getParameter("Descipcion");
            
            String select_value="SELECT * FROM "+ tabla+" WHERE Codigo="+Codigo;
            ResultSet rs=st.executeQuery(select_value);
            if(rs.next()){
                String insert_value="UPDATE "+ tabla +" SET Agrupacion_idAgrupacion='"+Agrupacion_idAgrupacion+"', Descipcion='"+Descipcion+"' WHERE Codigo="+Codigo+" ";
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

