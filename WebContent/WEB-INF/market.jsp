<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<title>Commerce</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="row-fluid">
	        <div class="hero-unit">
	          <h2>Commerce</h2>
	          <p>Vous pouvez échanger des ressources avec les autres joueurs. Pour cela, vous pouvez soit publier une offre, soit accepter une offre proposée par un autre joueur.</p>
<c:choose>
	<c:when test="${result == 2 }">
		<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Offre publiée.</div>
	</c:when>
	<c:when test="${result == 1 }">
		<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Offre supprimée.</div>
	</c:when>
	<c:when test="${result == 0 }">
		<div class="alert alert-success"><button type="button" class="close" data-dismiss="alert">&times;</button>Échange effectué.</div>
	</c:when>
	<c:when test="${result == -1 }">
		<div class="alert alert-error"><button type="button" class="close" data-dismiss="alert">&times;</button>Certains champs contiennent des erreurs.</div>
	</c:when>
	<c:when test="${result == -2 }">
		<div class="alert alert-error"><button type="button" class="close" data-dismiss="alert">&times;</button>Vous n’avez pas les ressources nécessaires.</div>
	</c:when>
</c:choose>
	        </div>
		  </div>
		  <div class="row-fluid">
		    <div class="span12 well">
		      <div class="row-fluid">
		      	<div class="span12">
		      	  <h2 class="btn-publish">Publier une offre</h2>
		      	</div>
		      </div>
			  <div class="row-fluid">
			    <div class="span12 sliding-publish">
<form method="post" action="market">
	<fieldset>
		<p>Complétez les champs ci-dessous pour publier une offre.</p>
		<table class="table">
			<tr>
				<td class="2"></td>
				<th class="5">Offre</th>
				<th class="5">Demande</th>
			</tr>
			<tr>
				<th>Pierre</th>
				<td><input type="text" name="offer_stone" class="input-block-level"/></td>
				<td><input type="text" name="request_stone" class="input-block-level"/></td>
			</tr>
			<tr>
				<th>Or</th>
				<td><input type="text" name="offer_gold" class="input-block-level"/></td>
				<td><input type="text" name="request_gold" class="input-block-level"/></td>
			</tr>
			<tr>
				<th>Argent</th>
				<td><input type="text" name="offer_argent" class="input-block-level"/></td>
				<td><input type="text" name="request_argent" class="input-block-level"/></td>
			</tr>
			<tr>
				<th>Cuivre</th>
				<td><input type="text" name="offer_cuivre" class="input-block-level"/></td>
				<td><input type="text" name="request_cuivre" class="input-block-level"/></td>
			</tr>
			<tr>
				<th>Métal</th>
				<td><input type="text" name="offer_metal" class="input-block-level"/></td>
				<td><input type="text" name="request_metal" class="input-block-level"/></td>
			</tr>
		</table>
		<div class="span4 offset4">
			<input type="submit" value="Publier" class="btn btn-primary btn-block" />
		</div>
	</fieldset>
</form>
				</div>
			  </div>
		    </div>
		  </div>
		  <div class="row-fluid">
		    <div class="span12 well">
		      <div class="row-fluid">
		      	<div class="span 12">
			      <h2 class="btn-consult">Consulter les offres</h2>
		      	</div>
		      </div>
		      <div class="row-fluid">
		      	<div class="span 12 sliding-consult">
<table class="table table-condensed table-bordered">
<c:forEach items="${transactions}" var="t">
<tr class="info">
	<th rowspan="6" class="span3" style="text-align: center;">
<c:choose>
	<c:when test="${t.proposer.nickname == player.nickname}">
		<a href="market?transaction=${t.id}" class="btn">Supprimer</a>
	</c:when>
	<c:otherwise>
		<a href="market?transaction=${t.id}" class="btn">Accepter</a>
	</c:otherwise>
</c:choose>
		<a href="mail?action=write&to=${t.proposer.nickname}" class="btn">Écrire</a>
	</th>
	<td class="span3" style="text-align: center;"><strong>${t.proposer.nickname}</strong></td>
	<td class="span3" style="text-align: center;"><strong>donne</strong></td>
	<td class="span3" style="text-align: center;"><strong>contre</strong></td>
</tr>
<tr>
	<th>Pierre</th>
	<td>${t.offer.stone}</td>
	<td>${t.request.stone}</td>
</tr>
<tr>
	<th>Or</th>
	<td>${t.offer.gold}</td>
	<td>${t.request.gold}</td>
</tr>
<tr>
	<th>Argent</th>
	<td>${t.offer.argent}</td>
	<td>${t.request.argent}</td>
</tr>
<tr>
	<th>Cuivre</th>
	<td>${t.offer.cuivre}</td>
	<td>${t.request.cuivre}</td>
</tr>
<tr>
	<th>Métal</th>
	<td>${t.offer.metal}</td>
	<td>${t.request.metal}</td>
</tr>
</c:forEach>
</table>
				</div>
			  </div>
		    </div>
		  </div>
		</div>
      </div>
    </div>
<script type="text/javascript">
$(document).ready(function(){
	$(".sliding-publish").hide();
    $('.btn-publish').click(function(){
    	$(".sliding-publish").slideToggle(400);
    });
});
$(document).ready(function(){
	$(".sliding-consult").hide();
    $('.btn-consult').click(function(){
    	$(".sliding-consult").slideToggle(400);
    });
});
</script>
    <%@include file="footer.jsp" %>
</body>
</html>