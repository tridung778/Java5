<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/27/2024
  Time: 4:44 PM
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
<h1 class="text-primary-emphasis text-center mb-5 mt-3">Sorting By ${field}</h1>
<table class="table table-light table-hover me-auto ms-auto w-50 mt-3 text-center">
    <thead>
    <tr>
        <th scope="col"><a class="text-decoration-none text-dark-emphasis" href="/product/sort?field=id">ID</a></th>
        <th scope="col"><a class="text-decoration-none text-dark-emphasis" href="/product/sort?field=name">Name</a></th>
        <th scope="col"><a class="text-decoration-none text-dark-emphasis" href="/product/sort?field=price">Price</a></th>
        <th scope="col"><a class="text-decoration-none text-dark-emphasis" href="/product/sort?field=createDate">Date</a></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${products}" var="p">
        <tr>
            <th scope="row">${p.id}</th>
            <td>${p.name}</td>
            <td>${p.price}</td>
            <td>${p.createDate}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
