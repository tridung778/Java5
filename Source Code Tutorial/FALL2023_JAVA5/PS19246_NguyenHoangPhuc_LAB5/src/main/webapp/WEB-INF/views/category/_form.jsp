<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	<h4 class="h4">EDIT CATEGORY</h4>
	<form:form action="/category/index" modelAttribute="category" method="post">
		<div class="form-group">
			<form:label path="id">Category Id:</form:label>
			<form:input path="id" class="form-control"/>
		</div>
		<div class="form-group">
			<form:label path="name">Category Name:</form:label>
			<form:input path="name" class="form-control"/>
		</div>
		<button class="btn btn-success mr-3" formaction="/category/create" formmethod="post"><i class="fas fa-save mr-2"></i>CREATE</button>
		<button class="btn btn-primary mr-3" formaction="/category/update" formmethod="post"><i class="fas fa-times-circle mr-2"></i>UPDATE</button>
		<a class="btn btn-info mr-3 mt-2 mb-2" href="/category/index"><i class="fas fa-times-circle mr-2"></i>RESET</a>
	</form:form>