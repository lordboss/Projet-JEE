<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/form.css" />
<title>${title}</title>
</head>
<body>

<h1>Bienvenue sur ${title}</h1>

<div class="sylabus">
<p>Game7 est un jeu multi-joueur par navigateur, dans lequel vous devez développer votre empire.
Vous pouvez vous <a href="registration">inscrire gratuitement</a> et rejoindre nos … 7 joueurs au dernier recensement.</p>
</div>

	<form method="post" action="connection">
		<fieldset>
			<legend>Authentification</legend>
			<p>Veuillez entrer vos identifiants.</p>
			<label for="nickname">Identifiant</label>
			<input type="text" id="nickname" name="nickname"
				value="<c:out value="${values['nickname']}"/>" size="20"
				maxlength="60" />
			<p class="error">${errors['nickname']}</p>
			<label for="password">Mot de passe</label>
			<input type="password" id="password"
				name="password" value="" size="20" maxlength="20" />
			<p class="error">${errors['password']}</p>
			<input type="submit" value="Connexion" class="sansLabel" />
			<br />
			<p class="${empty form.errors ? 'success' : 'error'}">${form.resultat}</p>
			<p><a href="registration">Pas encore inscrit ?</a></p>
		</fieldset>
	</form>
</body>
</html>
