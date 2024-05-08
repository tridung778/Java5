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
		<c:forEach var="item" items="${page.content }" varStatus="loop">
			<tr>
				<th scope="row">${item.id }</th>
				<td>${item.name }</td>
				<td>${item.price }</td>
				<td>${item.createDate }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<nav aria-label="Page navigation example">
	<ul class="pagination justify-content-center">
		<li class="page-item"><a class="page-link" href="/product/page?page=0">First</a></li>
		<li class="page-item"><a class="page-link" href="/product/page?page=${page.number -1 }">Previous</a></li>
		<li class="page-item"><a class="page-link" href="/product/page?page=${page.number +1 }">Next</a></li>
		<li class="page-item"><a class="page-link" href="/product/page?page=${page.totalPages -1 }">Last</a></li>
	</ul>
</nav>
<ul class="list-group">
	<li class="list-group-item">Số thực thể hiện tại: ${page.numberOfElements }</li>
	<li class="list-group-item">Trang số: ${page.number }</li>
	<li class="list-group-item">Kích thước trang: ${page.size }</li>
	<li class="list-group-item">Tổng số thực thể: ${page.totalElements }</li>
	<li class="list-group-item">Tổng số trang: ${page.totalPages }</li>
</ul>