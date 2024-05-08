<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/8/2024
  Time: 5:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<div class="col-md-4 me-auto ms-auto mt-4">
    <form class="col-md-12" action="/bai3/save" method="post">
        <div class="input-group mb-3">
            <span class="input-group-text">Name</span>
            <input type="text" name="name" class="form-control" aria-label="Sizing example input"
                   aria-describedby="inputGroup-sizing-default" required="required">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">Price</span>
            <input type="number" name="price" class="form-control" aria-label="Sizing example input"
                   aria-describedby="inputGroup-sizing-default" required="required">
        </div>
        <button type="submit" class="btn btn-primary float-end">Save</button>
    </form>
    Result:
    <ul class="list-group mt-2">
        <li style="width: fit-content" class="list-group-item">${product.name}</li>
        <li style="width: fit-content" class="list-group-item">${product.price}</li>
    </ul>
</div>
<a href="/">trang chu </a>
</body>
</html>
