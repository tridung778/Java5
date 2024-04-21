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
</head>
<body>
	<form action="/login/user" method="post" class="me-auto ms-auto w-50 mt-3" enctype="multipart/form-data">
	  <div class="mb-3">
	    <label for="exampleInputEmail1" class="form-label">Username</label>
	    <input value="${username}" type="text" class="form-control" name="username" id="exampleInputEmail1" aria-describedby="emailHelp">
	  </div>
	  <div class="mb-3">
	    <label for="exampleInputPassword1" class="form-label">Password</label>
	    <input value="${password}" type="password" name="password" class="form-control" id="exampleInputPassword1">
	  </div>
	  <div class="input-group mb-3">
		<label class="input-group-text" for="inputGroupFile01">Upload</label>
		<input type="file" name="file" class="form-control" id="inputGroupFile01">
      </div>
      <div class="mb-3 form-check">
        <input type="checkbox" name="remember" class="form-check-input" id="exampleCheck1">
    	<label class="form-check-label" for="exampleCheck1">Remember</label>
  	  </div>
	  <button type="submit" class="btn btn-primary">Submit</button>
	</form>
	<img src="/upload/${anhupload}" width="400" height="400"></img>
</body>
</html>