<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/29/2024
  Time: 5:11 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
<h1 class="text-primary-emphasis text-center mb-5 mt-3">Search by price</h1>
<form class="row g-3 me-auto ms-auto w-50 justify-content-between" action="/product/search" method="post">
    <div class="col-auto">
        <input type="number" min="0" name="min" value="0" placeholder="Min Price" class="form-control"
               id="exampleInputEmail1" aria-describedby="emailHelp">
    </div>
    <div class="col-auto">
        <input type="number" min="0" name="max" value="0" placeholder="Max Price" class="form-control"
               id="exampleInputPassword1">
    </div>
    <div class="col-auto">
        <button type="submit" class="btn btn-primary">Search</button>
    </div>
</form>
<table class="table table-light table-hover me-auto ms-auto w-50 mt-3 text-center">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Price</th>
        <th scope="col">Date</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="p">
        <tr>
            <th scope="row">${p.id}</th>
            <td>${p.name}</td>
            <td><fmt:formatNumber value="${p.price}"/></td>
            <td>${p.createDate}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>