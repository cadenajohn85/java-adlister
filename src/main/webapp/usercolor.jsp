<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-21
  Time: 16:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome!</title>
    <%@ include file="partials/head.html"%>
    <style>
        body {
            background: ${param.userColor}
        }
    </style>
</head>
<body>

    <%@ include file="partials/navbar.html"%>

    <h2>I love ${param.userColor}, too.</h2>
</body>
</html>
