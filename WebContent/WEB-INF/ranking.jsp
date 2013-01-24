<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<title>Classement</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="hero-unit">
            <h2>Classement</h2>
<table class="table table-striped">
<tr>
<td>#</td>
<td>Nombre de points</td>
<td>Pseudo</td>
<td></td>
</tr>
<c:forEach items="${players}" var="p">
<tr>
<td>${p.stats.rank}</td>
<td>${p.stats.points}</td>
<td>${p.nickname}</td>
<td><a class="btn btn-mini" href="mail?action=write&to=${p.nickname}">écrire</a></td>
</tr>
</c:forEach>
</table>
          </div>
        </div><!--/span-->
      </div><!--/row-->
      <hr>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>