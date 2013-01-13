<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="game.*" %>
<%@ page import="java.util.List" %>
<%@ include file="background.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% List<Mail> sentMails = (List<Mail>) request.getAttribute("sentMails"); %>
	<aside>
		<ul>
		  <li><a href="MailGestion?mailAction=receivedMails">Messages reçus</a></li>
		  <li><a href="MailGestion?mailAction=sentMails">Messages envoyés</a></li>	
		  <li><a href="MailGestion?mailAction=sendMail">Envoyer un message</a>	
		</ul>
	</aside>
	
    <form method=post action=MailGestion>	
	<section>
	  <% if (sentMails.isEmpty()) { %>
	  <div id="nomail">Vous n'avez envoyé aucun mail.</div>
	  <% } else { %>
	  <h2>Messages envoyés</h2>
	  <table>
	   <tr id="head">
	    <td>Sujet</td>
	    <td>A</td>
	   </tr>
	   <% for(Mail m : sentMails) { %>
	   <tr>
	    <td><input type="submit" value="<%= m.getObject() %>"></td>
	    <td><%= m.getReceiver() %></td>
	   <tr>
	   <input type="hidden" name="selectedMail" value="<%= m.getId() %>">
	   <% } %>
	  </table>
	  <% } %>
  	</section>	 
  	<input type="hidden" name="mailAction" value="sentMails">
  	</form> 
</body>
</html>