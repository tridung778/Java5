<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Category Management</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
	<form:form action="/category/create" modelAttribute="categoryItem" method="post" class="me-auto ms-auto w-50 mt-3 row">
	  <h1 class="text-primary-emphasis text-center mb-5">Category Management</h1>
	  <c:if test="${not empty success_category}">
		  <div class="alert alert-success" role="alert">
		   	${success_category}
		  </div>
	  </c:if>
	  <div class="mb-3">
	    <form:input path="id" type="text" placeholder="Category Id" class="form-control"/>
	    <form:errors path="id" class="form-text text-danger" />
	    <c:if test="${not empty error_category}">
	    	<div class="form-text text-danger" >${error_category}</div>
	    </c:if>
	  </div>
	  <div class="mb-3">
	    <form:input path="name" type="text" placeholder="Category Name" class="form-control"/>
	  	<form:errors path="name" class="form-text text-danger" />
	  </div>
	  <div>
	  	<div class="float-end">
		  	<button formaction="/category/create" type="submit" class="btn btn-primary">Create</button>
		  	<button formaction="/category/update" type="submit" class="btn btn-secondary">Update</button>
		  	<button formaction="/category/delete" type="submit" class="btn btn-danger">Delete</button>
		  	<button formaction="/category/index" type="submit" class="btn btn-warning">Reset</button>
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
		    <c:forEach items="${categoryItems}" var="ca">
		    	<tr>
			      <th scope="row">${ca.id}</th>
			      <td>${ca.name}</td>
			      <td>
			      	<a href="/category/edit?id=${ca.id}"><i class="bi bi-pencil text-success me-2"></i></a>
			      	<a href="/category/delete?id=${ca.id}"><i class="bi bi-trash3 text-danger"></i></a>
			      </td>
			    </tr>
		    </c:forEach>
		  </tbody>
	</table>
</body>
</html>