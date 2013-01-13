<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="game.*" %>
<%@ include file="background.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Mail selectedMail = (Mail) request.getAttribute("selectedMail"); %>
	<aside>
		<ul>
		  <li><a href="MailGestion?mailAction=receivedMails">Messages reçus</a></li>
		  <li><a href="MailGestion?mailAction=sentMails">Messages envoyés</a></li>	
		  <li><a href="MailGestion?mailAction=sendMail">Envoyer un message</a>	
		</ul>
	</aside>
		<section>
			De<div id="sender"><%= selectedMail.getSender() %></div>
			A<div id="receiver"><%= selectedMail.getReceiver() %></div>
			Sujet<div id="subject"><%= selectedMail.getObject() %></div>
			<div id="body"><%= selectedMail.getBody() %></div>
		</section>
</body>
</html>