<%@page session="true" import="java.sql.*" pageEncoding="UTF-8"%>
<%
Connection conexion=null;
String mensaje="";
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
String tabla_nombre="detalle";
String usuario="root";
String clave="root";

try{
	Class.forName("com.mysql.jdbc.Driver");
	conexion=DriverManager.getConnection(url,usuario,clave);
	String cantidad=request.getParameter("cantidad");
	String ordenventa=request.getParameter("ordenventa");
        String auto=request.getParameter("auto");

	String select_value="SELECT * FROM "+tabla_nombre +" WHERE ordenventa= "+ordenventa+" AND auto= "+auto;
        //out.println(select_value);
	Statement st=conexion.createStatement();
	ResultSet rs=st.executeQuery(select_value);
        if(rs.next()){
             out.print("Ya esta agregado");
        }
        else{
            String insert_value=" INSERT INTO "+ tabla_nombre +" (cantidad,ordenventa,auto) VALUES "+"("+cantidad+","+ordenventa+","+auto+");";
            st.executeUpdate(insert_value);
             out.print("Agregado al carrito");
        }
        conexion.close();
}catch (Exception ex){
	out.println(ex.toString());
}
%>