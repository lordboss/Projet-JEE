<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="game.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<% List<Building> buildings = (List) request.getAttribute("buildings");
		if (buildings.isEmpty()) { %>
			There is no building.
		<%} else { 
			for(Building b : buildings) { 
				out.print(b.getId()	+ " " + b.getName()); %> <br/>		
			<%}
		}%>
		<p><a href="menu.html">Menu</a></p>
</body>
</html>