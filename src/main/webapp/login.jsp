<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-21
  Time: 12:23
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    if (request.getParameter("username") != null) {
        if (request.getParameter("username").equalsIgnoreCase("admin") &&
            request.getParameter("password").equals("password")) {
            response.sendRedirect("/profile.jsp");
        }
    }
%>

<html>
<head>
    <title>JSP and JSTL - Login</title>
    <%@ include file="partials/head.html"%>
</head>
<body>

    <%@ include file="partials/navbar.html"%>

    <form action="/login.jsp" method="POST">
        <label for="username">Username: </label>
        <input type="text" id="username" name="username">
        <br>

        <label for="password">Password: </label>
        <input type="text" id="password" name="password">
        <br>

        <button>Submit</button>
    </form>

</body>
</html>
