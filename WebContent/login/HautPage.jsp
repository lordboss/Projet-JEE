<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
  <head>
    <title><c:out value="${title}"/></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <link href="/css/design.css" type="text/css" rel="stylesheet" media="screen" />
    <script type="text/javascript" src="/js/jquery.js"></script>
    <script type="text/javascript" src="/js/jquery.tools.js"></script>
    <script type="text/javascript" src="/js/page_login.js"></script>
        <script type="text/javascript" src="/js/traitement_login.js"></script>
  </head>
  <body>
    <header>
      <sec:authorize ifAllGranted="ROLE_USER">
        <%@include file="/login/logout.jsp" %>
      </sec:authorize>
      <sec:authorize ifNotGranted="ROLE_USER">
        <%@include file="/login/inlogin.jsp" %>
      </sec:authorize>
    </header>
      <!-- barre d'index pas encore totalement implémentée -->
    <%@include file="/login/index.jsp" %>
    <div id="content">
      </div>