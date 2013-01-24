<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<title>Production</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="hero-unit">
            <h2>Production</h2>
            Voici les détails de votre production.
          </div>
          <div class="well">
<table class="table">
	<tr>
		<th>#</th>
		<th>Pierre</th>
		<th>Or</th>
		<th>Argent</th>
		<th>Cuivre</th>
		<th>Métal</th>
	</tr>
	<tr>
		<th>Production de base</th>
		<td>${base.stone}</td>
		<td>${base.gold}</td>
		<td>${base.argent}</td>
		<td>${base.cuivre}</td>
		<td>${base.metal}</td>
	</tr>
<c:forEach items="${buildings}" var="b">
	<tr>
		<th>${b.name} (${b.level})</th>
		<td>${b.resourcesProvided.stone}</td>
		<td>${b.resourcesProvided.gold}</td>
		<td>${b.resourcesProvided.argent}</td>
		<td>${b.resourcesProvided.cuivre}</td>
		<td>${b.resourcesProvided.metal}</td>
	</tr>
</c:forEach>
	<tr class="info">
		<th>Total</th>
		<td>${total.stone}</td>
		<td>${total.gold}</td>
		<td>${total.argent}</td>
		<td>${total.cuivre}</td>
		<td>${total.metal}</td>
	</tr>
</table>
          </div>
        </div><!--/span-->
      </div><!--/row-->
      <hr>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>