<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/27/2024
  Time: 2:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <title>Title</title>
</head>
<body>
<div class="col-md-4 me-auto ms-auto mt-4">
    <form class="d-flex text-center justify-content-around" action="" method="get">
        <button formaction="/category" type="submit" class="btn btn-primary">Category Management</button>
        <button formaction="/product/index" type="submit" class="btn btn-info">Sort</button>
        <button formaction="/product/page" type="submit" class="btn btn-secondary">Pagination</button>
    </form>
</div>
</body>
</html>
