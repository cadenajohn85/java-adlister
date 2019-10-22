<%--
  Created by IntelliJ IDEA.
  User: johncadena
  Date: 2019-10-21
  Time: 16:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Pizza Order Form</title>
    <%@ include file="partials/head.html"%>
</head>
<body>

    <%@ include file="partials/navbar.html"%>

    <form action="/display-order.jsp" method="POST">
        <label for="crust">Crust Type: </label>
        <select id="crust" name="crust">
            <option value="hand">Hand Tossed</option>
            <option value="thin">Thin 'n Crispy</option>
        </select>
        <br>

        <label for="sauce">Sauce Type: </label>
        <select id="sauce" name="sauce">
            <option value="tomato">Tomato</option>
            <option value="marinara">Marinara</option>
            <option value="bbq">BBQ</option>
            <option value="alfredo">Alfredo</option>
        </select>
        <br>

        <label for="size">Size: </label>
        <select id="size" name="size">
            <option value="small">Small (10")</option>
            <option value="medium">Medium (12")</option>
            <option value="large">Large (14")</option>
        </select>
        <br>

        Toppings
        <label for="pepperoni"><input type="checkbox" name="toppings" value="pepperoni" id="pepperoni">Pepperoni</label>
        <label for="ham"><input type="checkbox" name="toppings" value="ham" id="ham">Ham</label>
        <label for="sausage"><input type="checkbox" name="toppings" value="sausage" id="sausage">Italian Sausage</label>
        <label for="mushrooms"><input type="checkbox" name="toppings" value="mushrooms" id="mushrooms">Mushrooms</label>
        <label for="olives"><input type="checkbox" name="toppings" value="olives" id="olives">Black Olives</label>
        <label for="onions"><input type="checkbox" name="toppings" value="onions" id="onions">Onions</label>
        <br>

        <label for="address">Delivery Address: </label>
        <input type="text" id="address" name="address">
        <br>

        <button>Submit</button>
    </form>

</body>
</html>
