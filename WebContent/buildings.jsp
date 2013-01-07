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
	<% List<Buildings> upb = (List) request.getAttribute("buildings"); %>
	<form method=post action=TestServlet>
		<% for(Buildings b : upb) { %>
			<% %>
			<p><img src="<%= b.getBuilding().getImagePath()%>" alt="Submit"><br/>
				Nom <%= b.getBuilding().getName() %><br/>
				Niveau <%= b.getBuilding().getLevel() %><br/>
				Commentaires <%= b.getBuilding().getComments()%><br/>
				<% if (b.getUpgradedBuilding() != null) { %>
					<% Ressources neededRessources = b.getUpgradedBuilding().getRessourcesNeeded(); %>
					Nécessaires pour le niveau <%= b.getUpgradedBuilding().getLevel() %><br/>
					Argent <%= neededRessources.getArgent() %><br/>
					Or <%= neededRessources.getGold() %><br/>
					Metal <%= neededRessources.getMetal() %><br/>
					Cuivre <%= neededRessources.getCuivre() %><br/>
					<input type="submit" name="développer" value="Développer">
					<input type="hidden" name="buildingToUpgrade" value="<%=b.getBuilding().getId() %>">
				<% } else { %>
					Ce bâtiment a été amélioré au maximum.
				<% } %>
			</p>	
		<%} %>
		<input type="hidden" name="action" value="listbuildings">
	</form>
	<p><a href="menu.html">Menu</a></p>
</body>
</html>