<%@ page import="java.sql.*"%>
<%
	Connection conexion=null;
	String mensaje="";
	String driver="com.mysql.jdbc.Driver";
	String url="jdbc:mysql://localhost:3306/venta_auto?serverTimezone=UTC";
	String tabla_nombre="ordenventa";
	String usuario="root";
	String clave="root";

	try{
            Class.forName("com.mysql.jdbc.Driver");
            conexion=DriverManager.getConnection(url,usuario,clave);

            Statement st=conexion.createStatement();

            String cliente_dni=request.getParameter("dni");
            //out.print("-- a --");
            String select_value="SELECT * FROM "+ tabla_nombre+" WHERE cliente_dni="+cliente_dni+" AND estado = 'O' ";
            ResultSet rs=st.executeQuery(select_value);
            //out.print("-- a --");            

            if(rs.next()){
                //out.print("-- rs --");   
                out.println(""+rs.getString("idordenventa"));
            }
            else{
                //out.print("-- e --");   
                String insert_value=" INSERT INTO "+ tabla_nombre +" (cliente_dni) VALUES "+"("+cliente_dni+")";
                st.executeUpdate(insert_value);
                //out.print("-- e --");   
                ResultSet rss=st.executeQuery(select_value);
                out.print(select_value);   
                out.println(""+rss.getString("idordenventa"));
            }
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

