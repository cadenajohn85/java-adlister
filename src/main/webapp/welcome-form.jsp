<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-21
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome!</title>
</head>
<body>

    <form method="POST" action="/display-form.jsp">
        <label for="displayName">Name: </label>
        <input type="text" id="displayName" name="displayName">
        <br>

        <label for="displayColor">Color: </label>
        <input type="text" id="displayColor" name="displayColor">
        <br>

        <button>Submit</button>
    </form>

    <%@ include file="partials/footer.html"%>


</body>
</html>
