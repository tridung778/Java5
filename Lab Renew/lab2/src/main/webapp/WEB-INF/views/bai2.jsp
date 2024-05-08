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
    <form class="col-md-12" action="/bai2/sum" method="post">
        <div class="input-group mb-3">
            <span class="input-group-text">A</span>
            <input type="text" name="a" class="form-control" aria-label="Sizing example input"
                   aria-describedby="inputGroup-sizing-default" required="required">
        </div>
        <div class="input-group mb-3">
            <span class="input-group-text">B</span>
            <input type="text" name="b" class="form-control" aria-label="Sizing example input"
                   aria-describedby="inputGroup-sizing-default" required="required">
        </div>
        <label>
            Operator
            <select name="operator">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
        </label>
        <button type="submit" class="btn btn-primary float-end">Calculate</button>
    </form>
    Result:
    <span>${total}</span>
    <div class="d-flex mt-5 justify-content-around">
        <a href="/bai2/product/Sumsung">
            <button type="submit" class="btn btn-primary">Samsung</button>
        </a>
        <a href="/bai2/product/Apple">
            <button type="submit" class="btn btn-success">Apple</button>
        </a>
        <a href="/bai2/product/Dell">
            <button type="submit" class="btn btn-info">Dell</button>
        </a>
    </div>
    <p class="mt-3">Result: ${sp}</p>
</div>
<a href="/">trang chu </a>
</body>
</html>
