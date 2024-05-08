<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/8/2024
  Time: 5:25 PM
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
    <form class="d-flex text-center justify-content-around" action="" method="post">
        <button formaction="/bai1/form" type="submit" class="btn btn-primary">Bài 1</button>
        <button formaction="/bai2/form" type="submit" class="col-md-2 btn btn-secondary">Bài 2</button>
        <button formaction="/bai3/form" type="submit" class="btn btn-success">Bài 3</button>
        <button formaction="/bai4/form" type="submit" class="btn btn-info">Bài 4</button>
<%--        <button formaction="/bai5" type="submit" class="btn btn-dark">Bài 5</button>--%>
    </form>
</div>
</body>
</html>
