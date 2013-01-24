<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<title>Messagerie</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="hero-unit">
            <h2>Messagerie</h2>
<form method="post" action="mail" class="form-horizontal">
	<fieldset>
		<div class="control-group">
		<label for="recipient" class="control-label">Destinataire</label>
		<div class="controls">
		<input type="text" name="recipient" class="input-xlarge" value="${recipient}" />
		<p class="text-${status}">${result}</p>
		</div>
		</div>
		<div class="control-group">
		<label for="topic" class="control-label">Sujet</label>
		<div class="controls">
		<input type="text" name="topic" class="input-xlarge" value="${topic}" />
		</div>
		</div>
		<div class="control-group">
		<label for="body" class="control-label">Message</label>
		<div class="controls">
		<textarea name="body" rows="10" class="input-xlarge">${body}</textarea>
		</div>
		</div>
		<div class="control-group">
		<div class="controls">
		<input type="submit" value="Envoyer" class="btn btn-primary" />
		<a href="mail"><button type="button" class="btn">Annuler</button></a>
		</div>
		</div>
	</fieldset>
</form>
          </div>
        </div><!--/span-->
      </div><!--/row-->
      <hr>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>