<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<sec:authorize ifAllGranted="ROLE_USER">
  <% response.sendRedirect("/");%>
</sec:authorize>
<!DOCTYPE html>
<html>
  <head>
    <title>Droits insuffisants, veuillez vous connecter !</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link href="/css/login.css" type="text/css" rel="stylesheet" media="screen" />
    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/page_login.js"></script>
    <script type="text/javascript" src="js/login_alone.js"></script>
  </head>
  <body>
    <form id="login" action="/login.htm" method="post">
      <fieldset>
        <legend>Se connecter</legend>
        <input type="text" required="required" name="username" value="" >
        <input type="password" required="required" name="password" value="" >
        <div class="submit-button">
          <div class="top"></div>
          <div class="content">Connexion</div>
        </div>
      </fieldset>
    </form>
  <nav>
    <ul>
      <li><a href="/lost-password.htm" rel="nofollow">Mot de passe oublié ?</a></li>
      <li><strong><a href="/registration.htm" rel="nofollow">Inscrivez vous !</a></strong></li>
    </ul>
  </nav>

</body>
</html>