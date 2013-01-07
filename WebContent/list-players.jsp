<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="game.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv=Content-Type content=texthtml; charset=ISO-8859-1>
<title>Insert title here</title>
</head>
<body>
	<% List<Player> players = (List) request.getAttribute("players");
		if (players.isEmpty()) { %>
			There is no player.
		<%} else { 
			for(Player p : players) { %>
				<p> <%= p.getNickname() %>, <%= p.getRessources().getArgent() %> <br/>
				<%for(Building b : p.getBuildings()) { %>
					<%= b.getName() %> <br/>					
				<%} 
			} %> <br/>
	<%}%>
		<p><a href="menu.html">Menu</a></p>
</body>
</html>