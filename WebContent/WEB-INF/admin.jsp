<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<title>Administration</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="hero-unit">
            <h2>Administration</h2>
            ${result}
            <div class="row">
              <div class="span12">
                <p>Le nombre de points est recalculé toutes les 10 minutes, suivit d’une mise à jour du classement.
                Vous pouvez cependant lancer une mise à jour manuellement du nombre de points et/ou du classement.</p>
                <a href="admin?update=points" class="btn btn-block btn-large btn-primary">Mise à jour des points</a>
                <a href="admin?update=ranking" class="btn btn-block btn-large btn-primary">Mise à jour du classement</a>
                <a href="admin?update=all" class="btn btn-block btn-large btn-primary">Mise à jour des points et du classement</a>
			  </div>
			</div>
            <div class="row">
              <div class="span12">
                <p>Le compteur de mails de chaque joueur est normalement incrémenté et décrémenté à la réception ou la suppression d’un email. Cependant, si des erreurs sont relevé, vous pouvez recalculer les compteurs manuellement.</p>
                <a href="admin?update=mail" class="btn btn-block btn-large btn-primary">Mise à jour des compteurs de mails</a>
			  </div>
			</div>
		  </div>
        </div><!--/span-->
      </div><!--/row-->
      <hr>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>