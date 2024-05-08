<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bài 2</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
	<div class="col-md-4 me-auto ms-auto mt-4">
		<form class="col-md-12" action="/bai2/sum" method="post">
			<div class="input-group mb-3">
			  <span class="input-group-text" id="inputGroup-sizing-default">A</span>
			  <input type="text" name="a" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required="required">
			</div>
			<div class="input-group mb-3">
			  <span class="input-group-text" id="inputGroup-sizing-default">B</span>
			  <input type="text" name="b" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" required="required">
			</div>
			<button type="submit" class="btn btn-primary float-end">Sum</button>
		</form>
		Result:
		<span>${sum}</span>
		<div class="d-flex mt-5 justify-content-around">
			<a href="/bai2/product/product-1"><button type="submit" class="btn btn-primary">Product 1</button></a>
			<a href="/bai2/product/product-2"><button type="submit" class="btn btn-success">Product 2</button></a>
			<a href="/bai2/product/product-3"><button type="submit" class="btn btn-info">Product 3</button></a>
		</div>
		<p class="mt-3">Result: ${sp}</p>
	</div>
		<a href="http://localhost:8080">trang chu </a>
</body>
</html>