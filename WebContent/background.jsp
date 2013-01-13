<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="game.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% Player p = (Player) session.getAttribute("user"); %>
	<div id="wrapper">
		<header>
		  <nav>
		   <ul>
		    <li id="name">joueur : <%= p.getNickname() %></li>
			<li><a href="">Amis</a></li>
			<li><a href="MailGestion?mailAction=receivedMails">Messages</a></li>
			<li><a href="">Classement</a> (<%= p.getRank() %>)</li>
			<li><a href="">Chercher</a></li>
			<li><a href="">Options</a></li>
			<li><a href="">Support</a></li>
			<li><a href="">Dialogue en ligne</a></li>
			<li><a href="login/authen.jsp">Logout</a></li>
	       </ul>
	      </nav>
	      
	      <div class="ressources">
	      	<ul>
	      	  <li><img src="metal.gif" alt="Métal"><text class="valeur"><%= p.getRessources().getMetal() %></text></li>
	      	  <li><img src="gold.jpg" alt="Or"><text class="valeur"><%= p.getRessources().getGold() %></text></li>
	      	  <li><img src="copper.jpg" alt="Cuivre"><text class="valeur"><%= p.getRessources().getCuivre() %></text></li>
	      	  <li><img src="silver.jpg " alt="Argent"><text class="valeur"><%= p.getRessources().getArgent() %></text></li>
	      	</ul>
	      </div>
	     </header>
	     
	     <aside>
	     	<ul>
	     	  <li><a href="">Vue générale</a></li>
	     	  <li><a href="">Ressources</a></li>
	     	  <li><a href="">Installations</a></li>
	     	  <li><a href="">Marchand</a></li>
	     	  <li><a href="">Recherche</a></li>
	     	  <li><a href="">Chantier spatial</a></li>
	     	  <li><a href="">Defense</a></li>
	     	  <li><a href="">Flotte</a></li>
	     	  <li><a href="">Galaxie</a></li>
	     	  <li><a href="">Alliance</a></li>
	     	</ul>
	     </aside>
</body>
</html>