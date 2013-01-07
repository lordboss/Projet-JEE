<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<nav id="userlinks">
  <ul>
    <sec:authorize ifNotGranted="ROLE_ADMIN">
      <li>Bienvenue <sec:authentication property="principal.title"/> <sec:authentication property="principal.firstname"/> <sec:authentication property="principal.lastname"/></li>
         <li><a href="/profil/<sec:authentication property="principal.login"/>/index.htm" rel="nofollow">Mon profil</a></li>
    </sec:authorize>
    <sec:authorize ifAllGranted="ROLE_ADMIN">
      <li>L'Administrateur</li>
      <li><a href="/admin/index.htm" rel="nofollow">Administration</a></li>
    </sec:authorize>
    <li><strong><a href="/logout.htm?from=<c:url value="${currentUrl}"/>" rel="nofollow">Deconnexion</a></strong></li>
  </ul>
</nav