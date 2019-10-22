<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-22
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>AdLister - View all ads</title>
    <%@ include file="../partials/head.jsp" %>
</head>
<body>
    <%@ include file="../partials/navbar.jsp" %>
    <main class="ml-4">
        <h1 class="mb-5">View all ads</h1>
        <c:forEach var="ad" items="${ads}">
            <div class="ad mb-4">
                <h3 class="text-info">${ad.title}
                    <small class="text-muted"> submitted by user ${ad.userId}</small>
                </h3>

                <p>${ad.description}</p>
            </div>
        </c:forEach>
    </main>
</body>
</html>
