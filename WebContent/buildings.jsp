<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List" %>
<%@ page import="game.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/buildings.css" type="text/css" rel="stylesheet"/>
</head>
<body>
	<% List<Buildings> upb = (List) request.getAttribute("buildings"); %>
	<form method=post action=TestServlet>
	  <div id="wrapper">
		<header>
		 <h1>Jeu de stratégie</h1>
		  <nav>
		   <ul>
			<li><a href="">Accueil</a></li>
			<li><a href="">Bâtiments</a></li>
			<li><a href="">Mails</a></li>
			<li><a href="">Classement</a></li>
	       </ul>
	      </nav>
	     </header>
	     <section class="buildings">
			<table>
				<% for(Buildings b : upb) { %>
				 <article>
					<tr>
						<td class="building"><img src="<%= b.getBuilding().getImagePath() %>" alt="Submit" width="200" height="200"></td>
						<td class="comments">
							<ul>
								<li>Niveau : <%= b.getBuilding().getLevel() %></li>
								<li><%= b.getBuilding().getComments() %></li>
								<% if (b.getUpgradedBuilding() == null) { %>
									Ce bâtiment a été amélioré au maximum.
								<% } else { %>
								<li>Ressources nécessaires pour le niveau <%= b.getUpgradedBuilding().getLevel() %> : 
									<ul>
										<li>Argent : <%= b.getUpgradedBuilding().getRessourcesNeeded().getArgent() %></li>
										<li>Or : <%= b.getUpgradedBuilding().getRessourcesNeeded().getGold() %></li>
										<li>Cuivre : <%= b.getUpgradedBuilding().getRessourcesNeeded().getCuivre() %></li>
										<li>Metal : <%= b.getUpgradedBuilding().getRessourcesNeeded().getMetal() %></li>
									</ul>
								</li>
								<% } %>
							</ul>
						</td>
						<% if (b.getUpgradedBuilding() == null) { %>
						<td><input type="submit" name="develop" value="Développer" disabled>
						<% } else { %>
						<td><input type="hidden" name="buildingToUpgrade" value="<%= b.getBuilding().getId() %>">
							<input type="submit" name="develop" value="Développer" ></td>
						<% } %>
					</tr>
				 </article>
				<% } %>
			</table>
		</section>
		</div>
		<input type="hidden" name="action" value="listbuildings">
	</form>
	
</body>
</html>