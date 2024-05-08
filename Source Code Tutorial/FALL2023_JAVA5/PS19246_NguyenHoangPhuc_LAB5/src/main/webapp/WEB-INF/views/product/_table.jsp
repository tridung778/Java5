<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt"%>

<table class="table table-light table-hover">
	<thead>
		<tr>
			<th scope="col"><a href="/product/sort?field=id">ID</a></th>
			<th scope="col"><a href="/product/sort?field=name">NAME</a></th>
			<th scope="col"><a href="/product/sort?field=price">PRICE</a></th>
			<th scope="col"><a href="/product/sort?field=createDate">DATE</a></th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="item" items="${products }" varStatus="loop">
			<tr>
				<th scope="row">${item.id }</th>
				<td>${item.name }</td>
				<td>${item.price }</td>
				<td>${item.createDate }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
