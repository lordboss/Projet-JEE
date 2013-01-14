
  border:1px black;
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  <link rel="stylesheet" type="text/css" href="menu.css" /> </head>
<style type="text/css">

    .logout:link{
      position: absolute;
      top:300px;
      left:700px;
      color:cornsilk;
  }
  
  .menu_verti:link, .menu_verti:visited{color: steelblue ;font-weight: bold;text-align: center;padding: 4px;text-decoration: none;text-transform: uppercase;display:block;width:300px;background-color: cornflowerblue;}
  .menu_verti:hover,.menu_verti:active{background-color: lightseagreen;}
  
  .logout{color:whitesmoke; font-family: "Georgia",serif; position :absolute; top:100px; left:100px;}
  
</style>

    
<body>
      <h1>Bienvenue sur OGames</h1>
    <ul>
        <li class="bar"><a href="./menu.html" class="menu">Home</a></li>
        <li class="bar"> <a href="/information" class="menu">Regles</a></li>
        <li class="bar"><a href="/news" class="menu">News</a></li>
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
      
       
      <div class ="logout"> <a href="./menu.html" class="logout">Deconnexion</a></div>
   
       <ul>
        <li ><a href="/menu.html" class="menu_verti">Creer des ressources</a></li>
        <li> <a href="/information" class="menu_verti">Creer des buildings</a></li>
        <li><a href="/news" class="menu_verti">Options</a></li>
           </ul>
     
</body>
</html>
