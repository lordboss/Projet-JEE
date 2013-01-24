<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<title>Messagerie</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="hero-unit">
            <h2>
            	Messagerie
	            <a href="mail?action=write" class="btn btn-primary pull-right" type="button"><i class="icon-pencil">
	            	</i>Rédiger un message
	            </a>
            </h2>
${result}
<table class="table">
<thead>
<tr>
<th class="span1"></th>
<th class="span2">Expéditeur</th>
<th class="span3">Sujet</th>
<th class="span5">Message</th>
<th class="span1"></th>
</tr>
</thead>
<tbody>
<c:forEach items="${mails}" var="m">
<tr>
<td><a href="mail?action=delete&id=${m.id}" class="close">&times;</a></td>
<td>${m.sender.nickname}</td>
<td>${m.topic}</td>
<td>${m.body}</td>
<td><a href="mail?action=answer&to=${m.id}"><button class="btn pull-right" type="button">Répondre</button></a></td>
</tr>
</c:forEach>
</tbody>
</table>
          </div>
        </div><!--/span-->
      </div><!--/row-->
      <hr>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>