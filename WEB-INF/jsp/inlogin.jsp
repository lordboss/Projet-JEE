<%@page contentType="text/html" pageEncoding="UTF-8" language="java"%>
<nav id="userlinks">
  <ul>
    <li><a href="/lost-password.htm" rel="nofollow">Mot de passe oublie ?</a></li>
    <li><strong><a href="/registration.htm" rel="nofollow">Inscrivez vous !</a></strong></li>
  </ul>
</nav>
<form id="login-area" action="/login.htm" method="post">
  <div>
    <input type="text" required="required" name="username" value="" >
    <input type="password" required="required" name="password" value="" >
    <input type="hidden" name="from" value="<c:url value="${currentUrl} "/>">
    <div class="submit-button">
      <div class="top"></div>
      <div class="content">Connexion</div>
    </div>
  </div>
</form>