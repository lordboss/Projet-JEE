<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<!--<link href="css/form.css" rel="stylesheet">-->
<title>Modification du profil</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="hero-unit">
          	<h2>Modification du profil</h2>


	<form method="post" action="profile" class="form-horizontal">
		<fieldset>
			<p>Vous pouvez modifier votre profil via ce formulaire.</p>
			<div class="control-group">
			<label for="lastname" class="control-label">Nom</label>
			<div class="controls">
			<input type="text" id="lastname" name="lastname"
				value="${player.information.lastname}" size="20"
				maxlength="60" />
			<p class="text-${types['lastname']}">${msg['lastname']}</p>
			</div>
			</div>
			<div class="control-group">
			<label class="control-label" for="firstname">Prénom</label>
			<div class="controls"><input type="text" id="firstname" name="firstname"
				value="${player.information.firstname}" size="20"
				maxlength="60" />
			<p class="text-${types['firstname']}">${msg['firstname']}</p>
			</div>
			</div>
			<div class="control-group">
			<label class="control-label" for="email">E-Mail</label>
			<div class="controls"><input type="text" id="email" name="email"
				value="${player.information.email}" size="20"
				maxlength="60" />
			<p class="text-${types['email']}">${msg['email']}</p>
			</div>
			</div>
			<div class="control-group">
			<label class="control-label" for="birth">Date de naissance</label>
			<div class="controls"><input type="text" id="birth" name="birth"
				value="${birthdate}" size="20"
				maxlength="60" />
			<p class="text-${types['birth']}">${msg['birth']}</p>
			</div>
			</div>
			<div class="control-group">
			<label class="control-label" for="city">Ville</label>
			<div class="controls"><input type="text" id="city" name="city"
				value="${player.information.city}" size="20"
				maxlength="60" />
			<p class="text-${types['city']}">${msg['city']}</p>
			</div>
			</div>
			<div class="control-group">
			<label class="control-label" for="country">Pays</label>
			<div class="controls"><input type="text" id="country" name="country"
				value="${player.information.country}" size="20"
				maxlength="60" />
			<p class="text-${types['country']}">${msg['country']}</p>
			</div>
			</div>
			<div class="control-group">
			<label class="control-label" for="password">Mot de passe</label>
			<div class="controls"><input type="password" id="password"
				name="password" size="20" maxlength="20" />
			<p class="text-${types['password']}">${msg['password']}</p>
			</div>
			</div>
			<div class="control-group">
			<label class="control-label" for="passwordconf">Confirmation</label>
			<div class="controls"><input type="password" id="passwordconf"
				name="passwordconf" size="20" maxlength="20" />
			<p class="text-${types['passwordconf']}">${msg['passwordconf']}</p>
			</div>
			</div>
			<div class="control-group">
			<div class="controls">
			<input type="submit" value="Mettre à jour" class="btn btn-primary" />
			</div>
			</div>
		</fieldset>
	</form>

          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->
      <hr>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>