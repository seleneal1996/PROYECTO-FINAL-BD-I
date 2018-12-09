<%@page import="java.sql.*" pageEncoding="UTF-8"%>
<%
Connection conexion=null;
String mensaje="";
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
String tabla_nombre="usuario";
String usuario="root";
String clave="root";

try{
	Class.forName("com.mysql.jdbc.Driver");
	conexion=DriverManager.getConnection(url,usuario,clave);
	String user=request.getParameter("user");
	String contrasena=request.getParameter("contrasena");

	String select_value="SELECT * FROM "+tabla_nombre +" WHERE usuario= "+user+" AND tipo_usuario_idtipo_usuario = 1";
	Statement st=conexion.createStatement();
	ResultSet rs=st.executeQuery(select_value);
	while(rs.next()){
		if(rs.getObject("password").equals(contrasena)){
                    response.sendRedirect("usuario.jsp");
                    return;
	  	}
	}
	out.print("<script>alert('Usuario o contrasenha incorrectos!'); window.location.replace('../sesion.jsp');</script>");
	conexion.close();
}catch (Exception ex){
	out.println(ex.toString());
}
%>