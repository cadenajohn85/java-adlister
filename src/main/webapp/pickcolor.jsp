<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-21
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP Practice - Pick Color</title>
    <%@ include file="partials/head.html"%>
</head>
<body>

    <%@ include file="partials/navbar.html"%>

    <form action="/usercolor.jsp" method="POST">
        <label for="userColor">Please select a color: </label>
        <input type="color" id="userColor" name="userColor" value="#6AA833">
        <button>Submit</button>
    </form>

</body>
</html>
