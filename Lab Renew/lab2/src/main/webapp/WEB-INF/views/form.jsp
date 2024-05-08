<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/8/2024
  Time: 5:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/phep-tinh" method="get">
    <label>
        Nhap a
        <input type="text" name="a">
    </label>
    <br>
    <label>
        Toan tu
        <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select>
    </label>
    <br>
    <label>
        Nhap b
        <input type="text" name="b">
    </label>
    <button>Tinh</button>
</form>
<h1>Ket qua: ${kq}</h1>
</body>
</html>
