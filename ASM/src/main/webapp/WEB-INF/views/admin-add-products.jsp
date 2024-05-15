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
        <a class="btn btn-success">Add product</a>
    </div>
    <form class="row mt-3 p-2 secondary-bg">
        <div class="col-md-6 second-text">
            <label for="inputEmail4" class="form-label">Name</label>
            <input type="text" class="form-control " id="inputEmail4">
        </div>
        <div class="col-md-6 second-text">
            <label for="inputPassword4" class="form-label">Price</label>
            <input type="number" class="form-control" id="inputPassword4">
        </div>
        <div class="col-6 second-text">
            <label for="inputAddress" class="form-label">Quantity</label>
            <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
        </div>
        <div class="col-6 second-text">
            <label for="inputState" class="form-label">Type</label>
            <select id="inputState" class="form-select">
                <option selected>Choose...</option>
                <option>...</option>
            </select>
        </div>
        <div class="col-12 second-text">
            <label for="inputAddress" class="form-label">Describe</label>
            <div class="input-group">
                <textarea class="form-control" aria-label="With textarea"></textarea>
            </div>
        </div>
        <div class="col-12 second-text">
            <label for="inputAddress" class="form-label">Thumbnail</label>
            <div class="input-group mb-3">
                <input type="file" class="form-control" id="inputGroupFile01">
            </div>
        </div>
    </form>
    <div class="mt-4 d-flex justify-content-between align-items-center">
        <nav class="navbar">
            <div class="container-fluid">
                <form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-danger" type="submit">Search</button>
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
            <tr>
                <th scope="row">1</th>
                <td>Mark</td>
                <td>Otto</td>
                <td>@mdo</td>
                <td>Otto</td>
                <td>@mdo</td>
            </tr>
            </tbody>
        </table>
    </div>
</div>
