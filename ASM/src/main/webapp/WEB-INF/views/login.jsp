<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/22/2024
  Time: 12:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Login</title>
    <style>
        html, body, .container{
            height: 100%;
        }

        .login-form {
            width: 350px;
            padding: 2rem 1rem 1rem;
        }

        form {
            padding: 1rem;
        }
    </style>
</head>

<body>
<div class="container">
    <div class="wrapper d-flex align-items-center justify-content-center h-100">
        <div class="card login-form">
            <div class="card-body">
                <h5 class="card-title text-center">Login Form</h5>
                <form action="/result" method="post">
                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Username</label>
                        <input name="userName" type="text" class="form-control" id="exampleInputEmail1"
                               aria-describedby="emailHelp">
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input name="passWord" type="password" class="form-control" id="exampleInputPassword1">
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Submit</button>
                    <div class="sign-up mt-4">
                        Don't have an account? <a href="#">Create One</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
</body>
</html>
