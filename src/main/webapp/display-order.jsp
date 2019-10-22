<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-21
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
    if (request.getParameter("crust") == null ||
        request.getParameter("sauce") == null ||
        request.getParameter("size") == null ||
        request.getParameter("toppings") == null ||
        request.getParameter("address") == null) {
            response.sendRedirect("/pizza-order.jsp");
    }
%>

<html>
<head>
    <title>Pizza Order Confirmation</title>
    <%@ include file="partials/head.html"%>
</head>
<body>

    <%@ include file="partials/navbar.html"%>

    <h1>Your Order:</h1>

    <h3>Crust Type:</h3>
    <p>${param.crust}</p>

    <h3>Sauce Type:</h3>
    <p>${param.sauce}</p>

    <h3>Size:</h3>
    <p>${param.size}</p>

    <h3>Toppings:</h3>
    <ul class="toppings-list">
<%--        Source for paramValues--%>
<%--        http://www.java2s.com/Tutorial/Java/0380__JSTL/JSTLFormSelectandCheckBoxGroup.htm--%>
        <c:forEach var="topping" items="${paramValues.toppings}">
            <li class="topping">${topping}</li>
        </c:forEach>
    </ul>


    <h3>Delivery Address:</h3>
    <p>${param.address}</p>

</body>
</html>
