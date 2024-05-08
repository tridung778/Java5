<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/8/2024
  Time: 5:55 PM
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
    <form class="row col-md-12 text-center" action="/bai5" method="get">
        <button formaction="/bai5/forward" class="col-md-4 btn btn-primary">Forward</button>
        <button formaction="/bai5/redirect" type="submit" class="col-md-4 btn btn-secondary">Redirect</button>
        <button formaction="/bai5/resp-body" type="submit" class="col-md-4 btn btn-success">ResponseBody</button>
    </form>
    <h1> Dương Trí Dũng BÀI 5</h1>
    <h1 class="mt-4">${message}</h1>
    !!<h1 class="mt-4">${param.message}</h1>
</div>
<a href="/">trang chu </a>
</body>
</html>
