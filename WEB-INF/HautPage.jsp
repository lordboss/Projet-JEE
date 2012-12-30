<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <%@include file="/WEB-INF/jsp/in-logout.jsp" %>
      </sec:authorize>
      <sec:authorize ifNotGranted="ROLE_USER">
        <%@include file="/WEB-INF/jsp/in-login.jsp" %>
      </sec:authorize>
    </header>
    <%@include file="/WEB-INF/jsp/menu/index.jsp" %>
    <div id="content">
      </div>