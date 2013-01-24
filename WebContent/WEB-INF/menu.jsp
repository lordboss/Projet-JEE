<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="game.entities.Player" %>
<div class="span2">
  <div class="well sidebar-nav">
    <ul class="nav nav-list">
      <li class="nav-header">Menu</li>
      <li><a href="home">Accueil</a></li>
      <li><a href="building">Bâtiments</a></li>
      <li><a href="production">Production</a></li>
      <li><a href="ranking">Classement</a></li>
      <li><a href="market">Commerce</a></li>
      <li><a href="mail">Messagerie</a></li>
      <li><a href="mail?action=write&to=admin">Contact</a></li>
      <li><a href="profile">Profil</a></li>
	  ${player.permissions > 0 ? "<li><a href=\"admin\">Administration</a></li>" : ""}
      <li><a href="connection?action=logout">Déconnexion</a></li>
    </ul>
  </div><!--/.well -->
</div><!--/span-->