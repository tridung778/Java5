<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bài 1</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

<form action="/ctrl/ok" method="post">
        <button formaction="/bai11" >OK1 ${ok1}</button>
        <button formaction="/bai22">OK2 ${ok2}</button>
        <button formaction="/bai33">OK3 ${ok3}</button>
    </form>
    <h1>${ok}</h1>
   

	<a href="http://localhost:8080">trang chu </a>
</body>
</html>