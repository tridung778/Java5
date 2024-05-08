<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/8/2024
  Time: 5:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<form action="/add-product" method="post">
  <input type="text" name="nameProduct">
  <input type="text" name="priceProduct">
  <button>Add</button>
</form>
<table class="table">
  <thead>
  <tr>
    <th scope="col">Name</th>
    <th scope="col">Price</th>
  </tr>
  </thead>
  <tbody>
  <tr th:each="product: ${products}">
    <td th:text="${product.name}"></td>
    <td th:text="${product.price}"></td>
  </tr>
  </tbody>
</table>
</body>
</html>
