<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<%@include file="header.jsp" %>
<title>TITRE</title>
</head>
  <body>
<%@include file="banner.jsp" %>
    <div class="container-fluid">
      <div class="row-fluid">
      	<%@include file="menu.jsp" %>
        <div class="span10">
          <div class="hero-unit">
            <h1>Bienvenue, ${ player.nickname } !</h1>
            <p>This is a template for a simple marketing or 
informational website. It includes a large callout called the hero unit 
and three supporting pieces of content. Use it as a starting point to 
create something more unique.</p>
            <p><a class="btn btn-primary btn-large">Learn more Â»</a></p>
          </div>
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce
 dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut 
fermentum massa justo sit amet risus. Etiam porta sem malesuada magna 
mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details Â»</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce
 dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut 
fermentum massa justo sit amet risus. Etiam porta sem malesuada magna 
mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details Â»</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce
 dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut 
fermentum massa justo sit amet risus. Etiam porta sem malesuada magna 
mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details Â»</a></p>
            </div><!--/span-->
          </div><!--/row-->
          <div class="row-fluid">
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce
 dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut 
fermentum massa justo sit amet risus. Etiam porta sem malesuada magna 
mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href=""#">View details Â»</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce
 dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut 
fermentum massa justo sit amet risus. Etiam porta sem malesuada magna 
mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details Â»</a></p>
            </div><!--/span-->
            <div class="span4">
              <h2>Heading</h2>
              <p>Donec id elit non mi porta gravida at eget metus. Fusce
 dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut 
fermentum massa justo sit amet risus. Etiam porta sem malesuada magna 
mollis euismod. Donec sed odio dui. </p>
              <p><a class="btn" href="#">View details Â»</a></p>
            </div><!--/span-->
          </div><!--/row-->
        </div><!--/span-->
      </div><!--/row-->
      <hr>
    </div>
    <%@include file="footer.jsp" %>
</body>
</html>