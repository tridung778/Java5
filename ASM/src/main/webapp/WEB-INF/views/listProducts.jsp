<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/18/2024
  Time: 6:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li class="breadcrumb-item active" aria-current="page">${productName}</li>
        </ol>
    </nav>
    <div class="row">
        <div class="col-2 second-background rounded">
            <h1 class="fs-4">Khoảng giá</h1>
            <div class="d-flex justify-content-between">
                <span class="px-4 border border-dark rounded">0d</span>
                <span class="px-2 border border-dark rounded">1.000.000d</span>
            </div>
            <input type="range" class="w-100 mt-2">
            <hr>
            <h1 class="fs-4">Chủng loại</h1>
            <div>
                <label class="d-flex text-center">
                    <input type="checkbox">
                    <span class="ms-2">Mèo anh lông ngắn</span>
                </label>
                <label class="d-flex text-center">
                    <input type="checkbox">
                    <span class="ms-2">Mèo anh lông ngắn</span>
                </label>
                <label class="d-flex text-center">
                    <input type="checkbox">
                    <span class="ms-2">Mèo anh lông ngắn</span>
                </label>
                <label class="d-flex text-center">
                    <input type="checkbox">
                    <span class="ms-2">Mèo anh lông ngắn</span>
                </label>
            </div>
        </div>
        <div class="col-10">
            <div class="d-flex second-background rounded" style="display: flex;align-items: center">
                <h3 class="me-2">${productName}</h3>
                <span>(<span>${products.size()}</span> sản phẩm)</span>
            </div>
            <div class=" second-background rounded my-2" style="display: flex;align-items: center">
                <h5>Sắp xếp theo</h5>
                <div class="my-2 ms-2">
                    <select id="inputState" class="form-select" path="type">
                        <option value="Ao">Ao</option>
                        <option value="Quan">Quan</option>
                    </select>
                </div>
            </div>
            <div class=" second-background rounded">
                <div class="row p-2">
                    <c:forEach items="${products}" var="product" varStatus="status">
                        <div class="col-md-3 mb-3">
                            <div class="card">
                                <img src="/images/${product.thumbnail}"
                                     class="card-img-top"
                                     alt="...">
                                <div class="card-body">
                                    <span class="change-color"> ${product.code}</span>
                                    <h5 class="card-title">${product.specie}</h5>
                                    <p class="card-text">
                                            ${product.name}</p>
                                    <p class="text-danger">
                                        <fmt:formatNumber value="${product.price}"/> đ
                                    </p>
                                    <form method="post" action="/addToCart/${product.id}">
                                        <input type="hidden" name="quantity" value="1">
                                        <button type="submit"
                                                class="btn border-primary d-flex justify-content-center">Thêm vào
                                            giỏ
                                            hàng
                                        </button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>
