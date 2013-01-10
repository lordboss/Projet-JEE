<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
    body { padding-left: 11em;font-family: Georgia, "Times New Roman",
          Times, serif;background-image:url(http://www.ogametut.free.fr/galeries/10/497.jpg);}
     h1 {font-family: "Georgia", serif ; color: blanchedalmond;text-align: center;} 
     ul{list-style-type:none;margin:0;padding:0;overflow:hidden;}  
     .bar{display:inline;float:left;}
  .menu:link, .menu:visited{color: steelblue ;font-weight: bold;text-align: center;padding: 4px;text-decoration: none;text-transform: uppercase;display:block;width:300px;background-color: cornflowerblue;}
  .menu:hover,.menu:active{background-color: lightseagreen;}
  
div.img
  {
  margin:1px;
  border:1px solid black;
  height:auto;
  width:auto;
  float:left;
  text-align:center;
  }
div.img img
  {
  display:inline;
  margin:1px;
  border:1px black;
  }
div.img a:hover img
  {
  border:1px solid buttontext;
  }
div.desc
  {
  text-align:center;
  font-weight:normal;
  width:300px;
  margin:2px;
  }
  
  div.cadre
  {
      
      
      width: 700px;
      margin: 4px;
      height: 500px;
      text-align: center;
      font-family:   "Georgia",serif;
      position: absolute; top:300px; left:500px;
  }
  div.authen{ border:1px solid;
      padding:7px;
      background-image: url(http://www.ogametut.free.fr/galeries/09/GalleryImage29081.jpg);
  text-align:center;
  font-weight:normal;
  width:300px;
  margin:2px;
  position:absolute ;top :300px;
  
  }
  
  .logout:link{
      position: absolute;
      top:300px;
      left:300px;
      color:blue;
  }
.menu:link, .menu:visited{color: steelblue ;font-weight: bold;text-align: center;padding: 4px;text-decoration: none;text-transform: uppercase;display:block;width:300px;background-color: cornflowerblue;}
  .menu:hover,.menu:active{background-color: lightseagreen;}
  
  .bar_verti{display: inline;position: absolute;top:400px; left:50px;}
  .menu_verti:link, .menu_verti:visited{color: steelblue ;font-weight: bold;text-align: center;padding: 4px;text-decoration: none;text-transform: uppercase;display:block;width:300px;background-color: cornflowerblue;}
  .menu_verti:hover,.menu_verti:active{background-color: lightseagreen;}
  
</style>

    
<body>
      <h1>Bienvenue sur OGames</h1>
    <ul>
        <li class="bar"><a href="/menu.html" class="menu">Home</a></li>
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
      
       
      <div> <a href="./menu.html" class="logout">Deconnexion</a></div>
   
       <ul>
        <li class="bar_verti"><a href="/menu.html" class="menu_verti">Creer des ressources</a></li>
        <li class="bar_verti"> <a href="/information" class="menu_verti">Creer des buildings</a></li>
        <li class="bar_verti"><a href="/news" class="menu_verti">Options</a></li>
           </ul>
     
</body>
</html>
