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
            <li class="breadcrumb-item active" aria-current="page">${petName}</li>
        </ol>
    </nav>
    <div class="row">
        <div class="col-2 second-background rounded">
            <h1 class="fs-4">Khoảng giá</h1>
            <div class="d-flex justify-content-between">
                <span class="border border-dark rounded w-50 text-center" id="range1">25.000.000 ₫</span>
                <span class="border border-dark rounded w-50 text-center" id="range2">75.000.000 ₫</span>
            </div>
            <div class="middle">
                <div class="multi-range-slider">
                    <input type="range" id="input-left" min="0" max="100" value="25" />
                    <input type="range" id="input-right" min="0" max="100" value="75" />
                    <div class="slider">
                        <div class="track"></div>
                        <div class="range"></div>
                        <div class="thumb left"></div>
                        <div class="thumb right"></div>
                    </div>
                </div>
            </div>
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
                <h3 class="me-2">${petName}</h3>
                <span>(<span>${pets.size()}</span> sản phẩm)</span>
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
                    <c:forEach items="${pets}" var="pet" varStatus="status">
                        <c:if test="${status.count <= 8}">
                                <div class="col-md-3 mb-3">
                                    <div class="card ">
                                        <img src="/images/${pet.image}"
                                             class="card-img-top"
                                             alt="...">
                                        <div class="card-body d-flex justify-content-center align-items-center flex-column">
                                            <div class="d-flex flex-row">
                                                <h5 class="card-title"> ${pet.name}</h5>
                                                <c:if test="${pet.gender.toString() == 'MALE'}">
                                                    <i class="fa-solid fa-mars"></i>
                                                </c:if>
                                                <c:if test="${pet.gender.toString() == 'FEMALE'}">
                                                    <i class="fa-solid fa-venus"></i>
                                                </c:if>
                                            </div>
                                            <p class="card-text">
                                                    ${pet.breed}</p>
                                            <p class="text-danger">
                                                <fmt:formatNumber value="${pet.price}"/> đ
                                            </p>
                                            <form method="post" action="/addToCart/${pet.id}">
                                                <input type="hidden" name="quantity" value="1">
                                                <button type="submit" class="btn border-primary d-flex justify-content-center">Thêm
                                                    vào
                                                    giỏ
                                                    hàng
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </c:if>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>