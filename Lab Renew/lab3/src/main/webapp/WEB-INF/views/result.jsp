<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/9/2024
  Time: 10:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Lab3</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>
<div class="col-md-4 me-auto ms-auto mt-4">
    <form class="d-flex text-center justify-content-around" action="" method="post">
        <div style="text-align: center;">
            <h1>Name: ${student.name}</h1>
            <h1>Email: ${student.email}</h1>
            <h1>Mark: ${student.marks}</h1>
            <h1>Gender: ${student.gender ? 'Male' : 'Female'}</h1>
            <h1>Faculty: ${student.faculty}</h1>
            <div class="d-flex">
                <h1>Hobbies:</h1>
                <c:forEach items="${student.hobbies}" var="hobby">
                    <h1> ${hobby}</h1>
                </c:forEach>
            </div>
            <img src="/image/${student.image}" alt="">
        </div>
    </form>
</div>
</body>
</html>
