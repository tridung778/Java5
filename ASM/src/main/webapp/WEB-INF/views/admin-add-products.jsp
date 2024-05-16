<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/15/2024
  Time: 7:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container py-4">
    <div class="d-flex justify-content-between align-items-center">
        <div class="fs-3 second-text">
            Products
        </div>
    </div>
    <form:form class="row mt-3 p-2 secondary-bg" action="/admin/add-products/save" method="post"
               modelAttribute="product"
               enctype="multipart/form-data">
        <form:input type="hidden" path="id"/>
        <div class="col-md-6 second-text">
            <label for="inputEmail4" class="form-label">Name</label>
            <form:input type="text" class="form-control " id="inputEmail4" path="name"/>
        </div>
        <div class="col-md-6 second-text">
            <label for="inputPassword4" class="form-label">Price</label>
            <form:input type="number" class="form-control" id="inputPassword4" path="price"/>
        </div>
        <div class="col-6 second-text">
            <label for="inputAddress" class="form-label">Quantity</label>
            <form:input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St" path="quantity"/>
        </div>
        <div class="col-6 second-text">
            <label for="inputState" class="form-label">Type</label>
            <form:select id="inputState" class="form-select" path="type">
                <form:option value="Ao">Ao</form:option>
                <form:option value="Quan">Quan</form:option>
            </form:select>
        </div>
        <div class="col-12 second-text">
            <label for="inputDescription" class="form-label">Description</label>
            <form:textarea id="inputDescription" class="form-control" aria-label="With textarea" path="description"/>
        </div>
        <div class="col-12 second-text">
            <label for="inputAddress" class="form-label">Thumbnail</label>
            <div class="input-group mb-3">
                <form:input type="file" class="form-control" id="inputGroupFile01" name="thumbnail" path="thumbnail"
                            style="display:none"/>
                <c:choose>
                    <c:when test="${product.thumbnail == null}">
                        <label for="inputGroupFile01" id="file-label" class="btn btn-success">Chon anh</label>
                    </c:when>
                    <c:otherwise>
                        <label for="inputGroupFile01" id="file-label"
                               class="btn btn-success">${product.thumbnail}</label>
                    </c:otherwise>
                </c:choose>

            </div>
        </div>
        <button type="submit" class="btn btn-success">Add product</button>
    </form:form>
    <div class="mt-4 d-flex justify-content-between align-items-center">
        <nav class="navbar">
            <div class="container-fluid">
                <form class="d-flex secondary-bg m-3" role="search"action="/admin/add-products/search" method="GET">
                    <div class="input-group mb-3 p-3 pb-1">
                        <label class="second-text" style="display:flex;flex-direction: row;">
                            <input class="form-control me-2" autocomplete="off" style="border: var(--third-text-color)"
                                   list="name-product"
                                   name="name-product">
                            <button type="submit" class="btn btn-outline-success">Search</button>
                        </label>
                        <datalist id="name-product">
                            <c:forEach items="${products}" var="product">
                                <option value="${product.name}"></option>
                            </c:forEach>
                        </datalist>
                    </div>
                </form>
            </div>
        </nav>
        <div class="dropdown">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown"
                    aria-expanded="false">
                Sort
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
        </div>
    </div>

    <div class="container table-responsive py-5">
        <table class=" table table-dark table-striped table-bordered table-hover">
            <thead class="thead-dark">
            <tr>
                <th scope="col">Thumbnail</th>
                <th scope="col">Name</th>
                <th scope="col">Type</th>
                <th scope="col">Price</th>
                <th scope="col">Quantity</th>
                <th scope="col">Action</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <th scope="row">
                        <img src="${pageContext.request.contextPath}/images/${product.thumbnail}"
                             width="100px" height="100px" alt="">
                    </th>
                    <td>${product.name}</td>
                    <td>${product.type}</td>
                    <td>${product.price}</td>
                    <td>${product.quantity}</td>
                    <td>
                        <a href="/admin/add-products/remove/${product.id}" class="btn btn-outline-danger">Delete</a>
                        <a href="/admin/add-products/edit/${product.id}" class="btn btn-outline-success">Edit</a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<script>
    document.getElementById('inputGroupFile01').addEventListener('change', function () {
        var fileName = this.value.split('\\').pop();
        document.getElementById('file-label').textContent = fileName || 'Chọn ảnh';
    });

</script>
