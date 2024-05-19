<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/18/2024
  Time: 7:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container" style="margin-top: 70px">
    <div class="container">
        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/"><i class="fa-regular fa-house"></i></a></li>
                <li class="breadcrumb-item active" aria-current="page">Giỏ hàng</li>
            </ol>
        </nav>
    </div>
    <table class="table">
        <thead>
        <tr>
            <th scope="col">Stt</th>
            <th scope="col">Hình</th>
            <th scope="col">Tên</th>
            <th scope="col">Chủng loại</th>
            <th scope="col">Loài</th>
            <th scope="col">Số lượng</th>
            <th scope="col">Giá tiền</th>
            <th scope="col">Tổng tiền</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${cartItems}" var="item" varStatus="status">
            <tr>
                <th scope="row">${status.index + 1}</th>
                <td>
                    <img src="${pageContext.request.contextPath}/images/${item.thumbnail}" width="100px" height="100px" alt="">
                </td>
                <td>${item.name}</td>
                <td>${item.type}</td>
                <td>${item.specie}</td>
                <td>
                    <input type="number" id="${item.id}" name="${item.quantity}" onchange="updateQty('${item.id}')" class="quantityInput" value="${item.quantity}" min="1">
                </td>
                <td>${item.price}</td>
                <td id="total_${status.index}">${item.price * item.quantity}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<script>
    function updateQty(id) {
        var newQuantity = document.getElementById(id).value;
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
    }
</script>
