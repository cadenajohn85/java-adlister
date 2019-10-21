<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-21
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>Welcome <%= request.getParameter("displayName")%>!</h1>

<h2 style="color:<%=request.getParameter("displayColor")%>">We're so glad you're here today.</h2>

<%@ include file="partials/footer.html"%>

</body>
</html>
