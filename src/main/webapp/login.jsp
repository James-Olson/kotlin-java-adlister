<%--
  Created by IntelliJ IDEA.
  User: jamesolson
  Date: 5/30/23
  Time: 5:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: jayarredondo
  Date: 5/17/23
  Time: 12:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Login</title>
  <jsp:include page="partials/head.jsp" />
</head>
<body>
<%@ include file="partials/navbar.jsp"%>

<form action="login.jsp" method="post">
  <label for="username">Username</label>
  <input type="text" name="username" id="username">
  <label for="password">Password</label>
  <input type="password" name="password" id="password">
  <button>Login</button>
</form>
<%--<c:if test='<%=request.getMethod().equalsIgnoreCase("post")%>'>--%>
<c:choose>
  <c:when test='${param.username.equals("admin") && param.password.equals("password")}'>
    <%--      <c:redirect url="profile.jsp"/>--%>
    <% response.sendRedirect("profile.jsp"); %>
  </c:when>
  <%--    <c:otherwise>--%>
  <%--      <% response.sendRedirect("login.jsp"); %>--%>
  <%--    </c:otherwise>--%>
</c:choose>
<%--</c:if>--%>
<jsp:include page="partials/scripts.jsp"/>
</body>
</html>

</body>
</html>
