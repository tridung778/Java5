<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/17/2024
  Time: 3:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="">
    <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
        <div class="container navbar-custom">
            <a class="navbar-brand" href="/">
                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Z4xzMxefMiW9QeTmOXWTSNy759u3pOaVKEs9grCrhw&s"
                     alt="Bootstrap" width="30" height="24">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown"
                           aria-expanded="false">
                            Dropdown
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="#">Action</a></li>
                            <li><a class="dropdown-item" href="#">Another action</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Something else here</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-nav d-flex mx-auto" role="search">
                    <input class="nav-item form-control me-2 search-input" type="search" placeholder="Search"
                           aria-label="Search">
                </form>
                <div class="d-flex mx-auto ">
                    <div class="d-flex me-4">
                        <div class="mt-2">
                            <img src="https://as2.ftcdn.net/v2/jpg/03/49/49/79/1000_F_349497933_Ly4im8BDmHLaLzgyKg2f2yZOvJjBtlw5.jpg"
                                 class="rounded-circle" alt="" width="30" height="30">
                        </div>
                        <div class="d-flex flex-column ms-2">
                            <span>Đăng nhập</span>
                            <span>Đăng ký</span>
                        </div>
                    </div>
                    <a href="/openCart" class="d-flex text-dark text-decoration-none">
                        <i class="fa-regular fa-cart-shopping fs-3 mt-2"></i>
                        <div class="d-flex flex-column ms-2">
                            <span>Giỏ hàng của bạn</span>
                            <span>${animalIndex} sản phẩm</span>
                        </div>
                    </a>
                </div>
            </div>
        </div>
    </nav>
</div>