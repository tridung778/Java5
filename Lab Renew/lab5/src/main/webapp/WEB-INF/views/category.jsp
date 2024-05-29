<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/27/2024
  Time: 4:38 PM
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
<form:form action="/category/create" modelAttribute="categoryItem" method="post" class="me-auto ms-auto w-50 mt-3 row">
    <h1 class="text-primary-emphasis text-center mb-5">Category Management</h1>
<%--    <c:if test="${not empty message}">--%>
<%--        <div class="alert alert-${message.startsWith('SUCCESS') ? 'success' : 'danger'}" role="alert">--%>
<%--                ${message.text}--%>
<%--        </div>--%>
<%--    </c:if>--%>
    <div class="mb-3">
        <form:input path="id" type="text" placeholder="Category Id" class="form-control"/>
        <form:errors path="id" class="form-text text-danger"/>
    </div>
    <div class="mb-3">
        <form:input path="name" type="text" placeholder="Category Name" class="form-control"/>
        <form:errors path="name" class="form-text text-danger"/>
    </div>
    <div>
        <div class="float-end">
            <button formaction="/category/create" type="submit" class="btn btn-primary">Create</button>
            <button formaction="/category/update" type="submit" class="btn btn-secondary">Update</button>
            <button formaction="/category/delete" type="submit" class="btn btn-danger">Delete</button>
            <button formaction="/category" type="submit" class="btn btn-warning">Reset</button>
        </div>
    </div>
</form:form>
<table class="table table-light table-hover me-auto ms-auto w-50 mt-3 text-center">
    <thead>
    <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Action</th>
    </tr>
    </thead>
    <tbody>
<%--    <c:forEach items="${categories}" var="category">--%>
<%--        <p>3434</p>--%>
<%--    </c:forEach>--%>
    <c:forEach items="${categories}" var="category">
        <tr>
            <th scope="row">${category.id}</th>
            <td>${category.name}</td>
            <td>
                <a href="/category/edit?id=${category.id}"><i class="bi bi-pencil text-success me-2"></i></a>
                <a href="/category/delete?id=${category.id}"><i class="bi bi-trash3 text-danger"></i></a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
