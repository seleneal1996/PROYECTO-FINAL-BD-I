<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla="venta";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();
            String fecha                        =request.getParameter("fecha");
            String Cliente_DNI                  =request.getParameter("Cliente_DNI");
            String Estado_Venta_idEstado_Venta  =request.getParameter("Estado_Venta_idEstado_Venta");
            String Tipo_Venta_idFactura         =request.getParameter("Tipo_Venta_idFactura");
            String insert_value=" INSERT INTO "+ tabla +" (Fecha, Cliente_DNI, Estado_Venta_idEstado_Venta, Tipo_Venta_idFactura) VALUES ( '"+fecha+"',"+Cliente_DNI+","+Estado_Venta_idEstado_Venta+","+Tipo_Venta_idFactura+" );";
            out.print(insert_value);
            st.executeUpdate(insert_value);

            response.sendRedirect("../venta.jsp");
                
            
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

