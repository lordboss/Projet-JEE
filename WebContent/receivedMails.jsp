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
<!--  <link href="css/mails.css" type="text/css" rel="stylesheet"/> -->
</head>
<body>
  <form method=post action=MailGestion>
	<% List<Mail> receivedMails = (List<Mail>) request.getAttribute("receivedMails"); %>
	<aside>
		<ul>
		  <li><a href="MailGestion?mailAction=receivedMails">Messages reçus</a></li>
		  <li><a href="MailGestion?mailAction=sentMails">Messages envoyés</a></li>	
		  <li><a href="MailGestion?mailAction=sendMail">Envoyer un message</a>	
		</ul>
	</aside>
	
	<section>
	  <% if (receivedMails.isEmpty()) { %>
	  <div id="nomail">Vous n'avez reçu aucun mail.</div>
	  <% } else { %>
	  <h2>Messages reçus</h2>
	  <table>
	   <tr id="head">
	    <td>Sujet</td>
	    <td>De</td>
	   </tr>
	   <% for(Mail m : receivedMails) { %>
	   <tr>
	    <td><input type="submit" value="<%= m.getObject() %>"></td>
	    <td><%= m.getSender() %></td>
	    <td><input type="hidden" name="selectedMail" value="<%= m.getId() %>"></td>
	   </tr>
	   <% } %>
	  </table>
	  <% } %>
  	</section>	
  	<input type="hidden" name="mailAction" value="sentMails">  
  </form>
</body>
</html>