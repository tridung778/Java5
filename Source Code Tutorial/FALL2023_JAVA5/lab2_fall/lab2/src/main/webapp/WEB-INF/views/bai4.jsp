<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bài 4</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<div class="col-md-4 me-auto ms-auto mt-4">
		<form class="col-md-12" action="/bai4/save" method="post">
			<div class="input-group mb-3">
			  <span class="input-group-text" id="inputGroup-sizing-default">Name</span>
			  <input type="text" name="name" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required="required">
			</div>
			<div class="input-group mb-3">
			  <span class="input-group-text" id="inputGroup-sizing-default">Price</span>
			  <input type="number" name="price" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required="required">
			</div>
			<button type="submit" class="btn btn-primary float-end">Save</button>
		</form>
		Result:
		<ul class="list-group mt-2">
		  	<li style="width: fit-content" class="list-group-item">${product.name}</li>
		  	<li style="width: fit-content" class="list-group-item">${product.price}</li>
		</ul>
		<c:forEach items="${products}" var="p">
			<ul class="list-group mt-2">
			  	<li style="width: fit-content" class="list-group-item">${p.name}</li>
			  	<li style="width: fit-content" class="list-group-item">${p.price}</li>
			</ul>
		</c:forEach>
	</div>
		<a href="http://localhost:8080">trang chu </a>
</body>
</html>