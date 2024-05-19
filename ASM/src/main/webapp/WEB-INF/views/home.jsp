<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/17/2024
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Banner --%>
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active" data-bs-interval="10000">
            <img src="https://i1.wp.com/pet-care.co.za/wp-content/uploads/2018/07/Pet-Care-Banner.jpg?ssl=1"
                 class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item" data-bs-interval="2000">
            <img src="https://static.vecteezy.com/system/resources/previews/007/301/665/non_2x/pet-shop-banner-design-template-cartoon-illustration-of-cats-dogs-house-food-vector.jpg"
                 class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
            <img src="https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/four-happy-cats-website-banner-susan-schmitz.jpg"
                 class="d-block w-100" alt="...">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

<%-- Cat conponent--%>
<div class="container bg-primary mt-5">
    <div class="text-light d-flex justify-content-between align-items-center">
        <h1>Mèo</h1>
        <a>Xem tất cả ></a>
    </div>
    <hr>
    <div class="row">
        <c:forEach items="${cats}" var="cat">


            <div class="col-md-3 mb-3">
                <div class="card">
                    <img src="/images/${cat.thumbnail}"
                         class="card-img-top"
                         alt="...">
                    <div class="card-body">
                        <h5 class="card-title">${cat.specie}</h5>
                        <p class="card-text">
                                ${cat.name}</p>
                        <p class="text-danger">
                                ${cat.price} đ
                        </p>
                        <form method="post" action="/addToCart/${cat.id}">
                            <input type="hidden" name="quantity" value="1"> <!-- Mặc định số lượng là 1 -->
                            <button type="submit" class="btn border-primary d-flex justify-content-center">Thêm vào giỏ hàng</button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>