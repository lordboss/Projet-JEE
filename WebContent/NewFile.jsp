<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page
 import="java.util.*,javax.naming.*,javax.sql.DataSource,java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<% 
	 DataSource ds = null;
	 Connection con = null;
	 Statement stmt = null;
	 InitialContext ic;
	  
	 try {
	 ic = new InitialContext();
	 ds = (DataSource) ic.lookup("java:/postgresDS");
	 con = ds.getConnection();
	 stmt = con.createStatement();
	 ResultSet rs = stmt.executeQuery("select * from films");
	 
	 while (rs.next()) {
	 out.println("<br> " + rs.getString("code"));
	 }
	 rs.close();
	 stmt.close();
	 } catch (Exception e) {
	 out.println("Exception thrown :/");
	 e.printStackTrace();
	 } finally {
	 if (con != null) {
	 con.close();
	 }
	 }
	    %> 
</body>
</html>