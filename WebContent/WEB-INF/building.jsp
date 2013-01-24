<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<title>Bâtiments</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="row-fluid">
          <div class="hero-unit">
            <h2>Bâtiments</h2>
            <p>Vous pouvez ici augmenter votre production de ressources en améliorant les bâtiments de votre choix.</p>
			${result}
          </div>
          </div>
<c:forEach items="${buildings}" var="b">
<div class="row-fluid">
  <div class="span12 well">
  	<div class="span2">
		<img src="${b.imagePath}" />
	</div>
	<div class="span4">
		<h3>${b.name}</h3>
		<h4>niveau ${b.level}</h4>
		<p>${b.comments}</p>
	</div>
	<div class="span4">
		<h4>Ressources nécessaires :</h4>
		<table class="table table-condensed">
			<tr class="${b.resourcesNeeded.stone > player.resources.stone ? 'error' : 'success' }">
				<th>Pierre : </th><td>${b.resourcesNeeded.stone}</td>
			</tr>
			<tr class="${b.resourcesNeeded.gold > player.resources.gold ? 'error' : 'success' }">
				<th>Or : </th><td>${b.resourcesNeeded.gold}</td>
			</tr>
			<tr class="${b.resourcesNeeded.argent > player.resources.argent ? 'error' : 'success' }">
				<th>Argent : </th><td>${b.resourcesNeeded.argent}</td>
			</tr>
			<tr class="${b.resourcesNeeded.cuivre > player.resources.cuivre ? 'error' : 'success' }">
				<th>Cuivre : </th><td>${b.resourcesNeeded.cuivre}</td>
			</tr>
			<tr class="${b.resourcesNeeded.metal > player.resources.metal ? 'error' : 'success' }">
				<th>Métal : </th><td>${b.resourcesNeeded.metal}</td>
			</tr>
		</table>
	</div>
	<div class="span2">
		<br /><br /><br /><br />
		<a href="building?build=${b.id}"><button type="button" class="btn btn-large">Lancer la construction</button></a>
	</div>
  </div>
</div>
</c:forEach>
		  </div>
		</div>
      <hr>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>