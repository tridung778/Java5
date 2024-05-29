<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/18/2024
  Time: 7:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <div class="container">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/"><i class="fa fa-house"></i></a></li>
                <li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
            </ol>
        </nav>
    </div>
    <form:errors path="quantity" class="form-text text-danger"/>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Stt</th>
            <th scope="col">Hình</th>
            <th scope="col">Tên</th>
            <th scope="col">Chủng loại</th>
            <th scope="col">Loài</th>
            <th scope="col">Mã</th>
            <th scope="col">Số lượng</th>
            <th scope="col">Giá tiền</th>
            <th scope="col">Tổng tiền</th>
            <th scope="col">Sửa</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cartItems}" var="item" varStatus="status">
            <tr>
                <th scope="row">${status.index + 1}</th>
                <td>
                    <img src="${pageContext.request.contextPath}/images/${item.thumbnail}" width="100px" height="100px"
                         alt="">
                </td>
                <td>${item.name}</td>
                <td>${item.type}</td>
                <td>${item.specie}</td>
                <td>${item.code}</td>
                <td>
                    <input type="number" id="${item.id}" name="${item.quantity}" onchange="updateQty('${item.id}')"
                           class="quantityInput" value="${item.quantity}" min="1">
                </td>
                <td><fmt:formatNumber value="${item.price}"/>đ</td>
                <td id="total_${status.index}"><fmt:formatNumber value="${item.price * item.quantity}"/>đ</td>
                <td>
                    <a href="/remove/${item.id}" class="btn btn-danger">Xóa</a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script>
    function updateQty(id) {
        const newQuantity = document.getElementById(id).value;
        console.log(newQuantity)
        if (newQuantity > 0 && newQuantity <= 100) {
            fetch('/updateQuantity', {
                method: 'POST',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded',
                },
                body: new URLSearchParams({
                    'id': id,
                    'quantity': newQuantity
                })
            })
                .then(response => {
                    if (response.ok) {
                        location.reload();
                    } else {
                        console.error('Lỗi cập nhật số lượng');
                    }
                });
        }else{
            alert("Số lượng phải lớn hơn 0 và nhỏ hơn hoặc bằng 100");
            document.getElementById(id).value = 1;
            location.reload();
        }
    }
</script>
