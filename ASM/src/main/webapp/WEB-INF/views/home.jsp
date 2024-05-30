<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
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
        <div class="carousel-item active" data-bs-interval="3000">
            <img src="https://mauweb.monamedia.net/petcare/wp-content/uploads/2019/10/slider-shop-1.jpg"
                 class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h1>TD Pet</h1>
                <p>Sen ơi, vào đây mà xem!</p>
            </div>
        </div>
        <div class="carousel-item" data-bs-interval="2000">
            <img src="https://mauweb.monamedia.net/petcare/wp-content/uploads/2019/10/slider-shop-2.jpg"
                 class="d-block w-100" alt="...">
            <div class="carousel-caption d-none d-md-block">
                <h1>Uy tín</h1>
                <p>Uy tín đã được kiểm chứng, chất lượng đã được khẳng định - TD Pet luôn là lựa chọn tốt nhất cho thú
                    cưng của bạn.</p>
            </div>
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
<%-- Home Component--%>
<div class="cards ms-1 mt-5 d-flex w-100 justify-content-center">
    <div class="card red mx-5 row">
        <div class="col-3 ">
            <i class="fa-solid fa-truck fs-1"></i>
        </div>
        <div class="col-9">
            <p class="tip">Nhận Giao Hàng</p>
            <p class="second-text">Giao thú cưng toàn các tỉnh Tây Nam Bộ, giao trong ngày tại Tp.HCM. Giao phụ kiện, đồ
                dùng toàn quốc.<span class="invisible">Nhận Giao Hàng</span></p>
        </div>
    </div>
    <div class="card blue mx-5 row">
        <div class="col-3 ">
            <i class="fa-solid fa-piggy-bank fs-1"></i>
        </div>
        <div class="col-9">
            <p class="tip">Giá Cả Hợp Lý</p>
            <p class="second-text">Sản phẩm đa dạng chủng loại và giá cả. Có Bảo hành với các loại thú cưng giá trị cao.
                Chất lượng uy tín chi phí cạnh tranh.</p>
        </div>
    </div>
    <div class="card green mx-5 row">
        <div class="col-3 ">
            <i class="fa-solid fa-ticket fs-1"></i>
        </div>
        <div class="col-9">
            <p class="tip">Ngập Tràn Khuyến Mãi</p>
            <p class="second-text">Chế độ hậu mãi hấp dẫn. Với nhiều chương trình chăm sóc khách hàng thân thiết với rất
                nhiều ưu đãi và khuyến mại.<span class="invisible">Ngập Tràn Khuyến Mãi</span></p>
        </div>
    </div>
</div>
<%-- Cat Component--%>
<div class="container bg-primary mt-5 rounded">
    <div class="text-light d-flex justify-content-between align-items-center">
        <h1>Mèo</h1>
        <a href="${pageContext.request.contextPath}/pets?petCategory=cat" class="text-light text-decoration-none">Xem
            tất cả ></a>
    </div>
    <hr>
    <div class="row">
        <c:forEach items="${pets}" var="pet" varStatus="status">
            <c:if test="${status.count <= 8}">
                <c:if test="${pet.category.name == 'Cat'}">
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
            </c:if>
        </c:forEach>
    </div>
</div>

<%-- Dog Component--%>
<div class="container bg-danger mt-5 rounded">
    <div class="text-light d-flex justify-content-between align-items-center">
        <h1>Chó</h1>
        <a href="${pageContext.request.contextPath}/pets?petCategory=dog" class="text-light text-decoration-none">Xem
            tất cả ></a>
    </div>
    <hr>
    <div class="row">
        <c:forEach items="${pets}" var="pet" varStatus="status">
            <c:if test="${status.count <= 8}">
                <c:if test="${pet.category.name == 'Dog'}">
                    <div class="col-md-3 mb-3">
                        <div class="card">
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
            </c:if>
        </c:forEach>
    </div>
</div>