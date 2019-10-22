<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-22
  Time: 15:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Adlister - Create a New Ad</title>
</head>
<body>
    <h1>Create a New Ad</h1>
    <form action="/ads/create" method="POST">
        <label for="title">Ad Title: </label>
        <input type="text" id="title" name="title">
        <br />
        <label for="description">Ad Description: </label>
        <br />
        <textarea id="description" name="description"></textarea>
        <br />
<%--        <buttton>Submit</buttton>--%>
        <input type="submit">
    </form>
</body>
</html>
