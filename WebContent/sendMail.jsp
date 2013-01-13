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
	<aside>
		<ul>
		  <li><a href="MailGestion?mailAction=receivedMails">Messages reçus</a></li>
		  <li><a href="MailGestion?mailAction=sentMails">Messages envoyés</a></li>	
		  <li><a href="MailGestion?mailAction=sendMail">Envoyer un message</a>	
		</ul>
	</aside>
	<form method=post action=MailGestion>
		<section>
			<input type="submit" value="Envoyer">
			De<div id="sender"><%= p.getNickname() %></div>
			<div id="receiver">
			  A<input type="text" name="destinataire">
			</div>
			<div id="subject">
			  Sujet<input type="text" name="sujet">
			</div>
			<div id="body">
			  <input type="text" name="corps">
			</div>
		</section>
		<input type="hidden" name="mailAction" value="sendMail">
	</form>
</body>
</html>