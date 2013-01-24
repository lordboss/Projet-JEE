<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="game.entities.Player" %>
<div class="navbar navbar-inverse navbar-fixed-top">
  <div class="navbar-inner">
    <div class="container-fluid">
      <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </a>
      <a class="brand" href="home">${title}</a>
      <div class="nav-collapse collapse">
        <p class="navbar-text pull-right">
          Connecté en tant que <a href="profile" class="navbar-link">${player.nickname}</a>
        </p>
        <ul class="nav" id="banner">
<%@include file="banner-items.jsp" %>
        </ul>
      </div><!--/.nav-collapse -->
    </div>
  </div>
</div>