<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/8/2024
  Time: 5:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/ctrl/ok" method="post">
    <button formaction="/bai1-lab1" >OK1 ${ok1}</button>
    <button formaction="/bai2-lab1">OK2 ${ok2}</button>
    <button formaction="/bai3-lab1">OK3 ${ok3}</button>
</form>
<h1>Button: ${ok}</h1>


<a href="/">trang chu </a>
</body>
</html>
