<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="css/menu.css" /> 
 <link rel="stylesheet" type="text/css" href="css/authen.css"/>
<script src="js/dmc_utils.js" type="text/javascript"> </script>
<script src="js/dmcplugnewsV.js" type="text/javascript"> </script>
<script> dmcNewsV.dmcNewsVaddNews({id:"dmcNews", timer:100, spacer:20, bouge:true, width:100, height:200, btshow:"parent"});</script> 

<title>Authentification</title>
</head>
<body>
 <h1>Bienvenue sur OGames</h1>
    <ul>
        <li><a href="/menu.html" class="menu">Home</a></li>
        <li> <a href="/information" class="menu">Regles</a></li>
        <li><a href="/news" class="menu">News</a></li>
   </ul>
     
<div class="img">
  <a target="_blank" href="listeressources.html" class="menu">
  <img src="http://www.ogametut.free.fr/galeries/10/fond2.jpg" alt="Ressources" width="110" height="90">
  </a>
  <div class="desc">Ressources</div>
</div>
<div class="img">
  <a target="_blank" href="listebatiments.html" class="menu">
  <img src="http://www.ogametut.free.fr/galeries/10/menu10bw.jpg" alt="Batiments" width="110" height="90">
  </a>
  <div class="desc">Batiments</div>
</div>
<div class="img">
  <a target="_blank" href="listeplayers.jsp" class="menu">
  <img src="http://www.ogametut.free.fr/galeries/10/Cs613SpacefighteR.jpg" alt="Liste des joueurs" width="110" height="90">
  </a>
  <div class="desc">Joueurs</div>
</div>
<div class="img">
  <a target="_blank" href="classement.jsp" class="menu">
  <img src="http://www.ogametut.free.fr/galeries/10/Explosionelectrique.jpg" alt="Classement" width="110" height="90">
  </a>
  <div class="desc">Classement</div>
</div>
      

     <div class="date">
         <script src="date.js"></script>
        </div>  
      
        
            
     <ul id="dmcNews">
  <li>
    <span>20/01/2013</span>
    <p>Ajout d'un nouveau script</p>
  </li>
  <li>
    <span>20/01/2013</span>
    <p>
      <a href="menu.html" target="_blank">On peut faire des liens
      </a>
    </p>
  </li>
  <li>
    <img src="http://www.ogametut.free.fr/galeries/11/00002625.jpg"/>
  </li>
</ul>


<div class="authen">
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
                        
</div>
                        
                        
                         <div class="cadre">
          <table>
   <tr>
    <td>OGame - A la conquete de l`univers</td>
  </tr>
      <tr> <td>Des milliers de joueurs s'affrontent sans arret sur nos serveurs. </td></tr>
      <tr> <td>OGame est un jeu de strategie dans l'espace. </td></tr>
           <tr> <td> Pour jouer, il vous suffit d'avoir un navigateur Internet.  </td></tr>
</table>
      </div>
</body>
</html>
