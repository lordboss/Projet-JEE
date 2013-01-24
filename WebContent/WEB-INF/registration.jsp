<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" rel="stylesheet" href="css/form.css" />
<title>Inscription</title>
</head>
<body>

<h1>Inscription</h1>
	<form method="post" action="registration">
		<fieldset>
			<legend>Inscription</legend>
			<p>Veuillez completer le formulaire ci-dessous.</p>
			<label for="lastname">Nom</label>
			<input type="text" id="lastname" name="lastname"
				value="<c:out value="${values['lastname']}"/>" size="20"
				maxlength="60" />
			<p class="error">${errors['lastname']}</p>
			<label for="firstname">Prénom</label>
			<input type="text" id="firstname" name="firstname"
				value="<c:out value="${values['firstname']}"/>" size="20"
				maxlength="60" />
			<p class="error">${errors['firstname']}</p>
			<label for="email">E-Mail</label>
			<input type="text" id="email" name="email"
				value="<c:out value="${values['email']}"/>" size="20"
				maxlength="60" />
			<p class="error">${errors['email']}</p>
			<label for="birth">Date de naissance</label>
			<input type="text" id="birth" name="birth"
				value="<c:out value="${values['birth']}"/>" size="20"
				maxlength="60" />
			<p class="error">${errors['birth']}</p>
			<label for="city">Ville</label>
			<input type="text" id="city" name="city"
				value="<c:out value="${values['city']}"/>" size="20"
				maxlength="60" />
			<p class="error">${errors['city']}</p>
			<label for="country">Pays</label>
			<input type="text" id="country" name="country"
				value="<c:out value="${values['country']}"/>" size="20"
				maxlength="60" />
			<p class="error">${errors['country']}</p>
			<label for="nickname">Pseudo</label>
			<input type="text" id="nickname" name="nickname"
				value="<c:out value="${values['nickname']}"/>" size="20"
				maxlength="60" />
			<p class="error">${errors['nickname']}</p>
			<label for="password">Mot de passe</label>
			<input type="password" id="password"
				name="password" value="${values['password']}" size="20" maxlength="20" />
			<p class="error">${errors['password']}</p>
			<label for="passwordconf">Confirmation du mot de passe</label>
			<input type="password" id="passwordconf"
				name="passwordconf" value="" size="20" maxlength="20" />
			<p class="error">${errors['passwordconf']}</p>
			<input type="submit" value="S’inscrire" class="sansLabel" />
			<br />
			<p><a href="connection">Déjà inscrit ?</a></p>
		</fieldset>
	</form>
</body>
</html>