
<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/29/2024
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Lab5</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<div class="col-md-4 me-auto ms-auto mt-4">
    <form class="d-flex text-center justify-content-around" action="" method="get">
        <button formaction="/product/search" type="submit" class="btn btn-primary">Search</button>
        <button formaction="/product/search-page?p=0" type="submit" class="btn btn-info">Search & Page</button>
        <button formaction="/product/report" type="submit" class="btn btn-secondary">Report</button>
    </form>
</div>
</body>
</html>
