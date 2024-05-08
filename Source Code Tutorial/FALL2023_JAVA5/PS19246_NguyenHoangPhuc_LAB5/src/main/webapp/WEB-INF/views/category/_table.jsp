<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>

<table class="table table-light table-hover">
	<thead>
		<tr>
			<th scope="col">ID</th>
			<th scope="col">NAME</th>
			<th scope="col"></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${categories }" varStatus="loop">
		<tr>
			<th scope="row">${item.id }</th>
			<td>${item.name }</td>
			<td class="text-right">				
				<a class="btn btn-primary mr-2" href="/category/edit/${item.id }" role="button">></a>
				<a class="btn btn-danger mr-2" href="/category/delete/${item.id }" role="button"><i class="fas fa-times-circle"></i></a>
			</td>
		</tr>
		</c:forEach>
	</tbody>
</table>