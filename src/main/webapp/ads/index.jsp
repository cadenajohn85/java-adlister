<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-22
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>AdLister - View all ads</title>
</head>
<body>
    <h1>View all ads</h1>
    <c:forEach var="ad" items="${ads}">
        <div class="ad">
            <h3>${ad.title}</h3>
            <p>${ad.description}</p>
        </div>
    </c:forEach>
</body>
</html>
