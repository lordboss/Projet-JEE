<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<title>Accueil</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="hero-unit">
            <h2>Bienvenue, ${ player.nickname } !</h2>
            <br />
            <ul>
              <li>Votre classement : ${player.stats.rank}</li>
              <li>Votre nombre de points : ${player.stats.points}</li>
            </ul>
          </div>
        </div><!--/span-->
      </div><!--/row-->
      <hr>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>