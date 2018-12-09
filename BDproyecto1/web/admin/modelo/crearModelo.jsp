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

           
            String Descipcion               =request.getParameter("Descipcion");
            String Agrupacion_idAgrupacion  =request.getParameter("Agrupacion_idAgrupacion");
            String Precio                   =request.getParameter("Precio");
            
            
            
            String insert_value=" INSERT INTO precio (precio, Concepto_idConcepto) VALUES ( "+Precio+", 1);";
            st.executeUpdate(insert_value);
            
            
            
            
            String select_value=" SELECT * FROM  precio";
            ResultSet rs=st.executeQuery(select_value);
            String idprecio ="";
            while(rs.next()){                  
                idprecio=rs.getObject("idPrecio").toString();
            }
            
            
            System.out.println("className.methodName()"+idprecio);
            insert_value=" INSERT INTO "+ tabla +" (Descipcion, Agrupacion_idAgrupacion, Precio_idPrecio) VALUES ('"+Descipcion+"', "+Agrupacion_idAgrupacion+", "+idprecio+" );";
            out.print(insert_value);
            st.executeUpdate(insert_value);
            
            response.sendRedirect("../modelo.jsp");
                
            
            conexion.close();
	}
	catch (Exception ex){
	out.println(ex.toString());
    }
%>

