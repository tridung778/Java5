<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
	<ol class="w-50 me-auto ms-auto mt-3 list-group list-group-numbered">
	  <c:forEach items="${items}" var="item">
		  <li class="list-group-item d-flex justify-content-between align-items-start">
		    <div class="ms-2 me-auto">
		      <div class="fw-bold">${item.name}</div>
		      <span>${item.price}</span>
		    </div>
		    <span class="badge rounded-pill">
		    	<a href="/cart/add/${item.id}"><i class="bi bi-bag-plus-fill"></i></a>
		    </span>
		  </li>
	  </c:forEach>
	</ol>
	<div class="w-50 me-auto ms-auto mt-3">
		<table class="table table-hover">
			<thead>
			    <tr>
			      <th scope="col">ID</th>
			      <th scope="col">Name</th>
			      <th scope="col">Price</th>
			      <th scope="col">Quantity</th>
			      <th scope="col">Amount</th>
			      <th scope="col">Action</th>
			    </tr>
		  	</thead>
			  <tbody>
			    <c:forEach items="${cart}" var="c">
				    <tr>
				      <th scope="row">${c.id}</th>
				      <td >${c.name}</td>
				      <td >${c.price}</td>
				      <td class="w-25"> <input class="w-50" id="${c.id}input" value="${c.qty}" onblur="updateQty('${c.id}')" type="number" min="1" /></td>
				      <td >${c.qty * c.price}</td>
				      <td><a href="/cart/remove/${c.id}" class="text-danger"><i class="bi bi-trash"></i></a></td>
				    </tr>
				    
			    </c:forEach>
			    <h1>Tổng Tiền: ${tongtien} </h1>
			  </tbody>
		</table>
		<a href="/cart/clear"><button type="button" class="float-end btn btn-danger">Clear</button></a>
    </div>
	<script type="text/javascript">
		function updateQty(id){
			location.href = "/cart/update?id="+id+"&qty="+document.getElementById(id+"input").value;
		}
	</script>
</body>
</html>