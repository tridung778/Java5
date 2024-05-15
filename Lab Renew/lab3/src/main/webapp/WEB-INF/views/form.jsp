<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
</head>
<body>

<form:form class="me-auto ms-auto w-50 mt-3" action="/save" method="post" modelAttribute="student"
           enctype="multipart/form-data">
    <h1 class="text-center">Student Management</h1>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Name</label>
        <form:input path="name" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp"/>
        <form:errors path="name" class="form-text text-danger"/>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Email</label>
        <form:input path="email" type="email" class="form-control" id="exampleInputEmail1"
                    aria-describedby="emailHelp"/>
        <form:errors path="email" class="form-text text-danger"/>
    </div>
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Marks</label>
        <form:input path="marks" type="number" class="form-control" id="exampleInputEmail1"
                    aria-describedby="emailHelp"/>
        <form:errors path="marks" class="form-text text-danger"/>
    </div>
    <div class="d-flex">
        <label class="ms-3 me-3">Gender: </label>
        <div class="me-3">
            <form:radiobuttons path="gender" items="${genders}" delimiter=" " class="form-check-input" name="gender"
                               id="flexRadioDefault1"/>
        </div>
    </div>
    <form:errors path="gender" class="form-text text-danger mb-3"/>
    <div class="d-flex mt-3">
        <label class="ms-3 me-3">Hobbies: </label>
        <div class="me-3">
            <form:checkboxes path="hobbies" delimiter="     " items="${hobbies}" class="form-check-input"
                             name="hobbies" id="flexRadioDefault1"/>
        </div>
    </div>
    <form:errors path="hobbies" class="form-text text-danger mb-3"/>
    <form:select path="faculty" class="form-select mb-3 mt-3" aria-label="Default select example">
        <c:forEach items="${faculties}" var="f">
            <form:option value="${f}">${f}</form:option>
        </c:forEach>
    </form:select>
    <form:errors path="faculty" class="form-text text-danger"/>
    <div class="mb-3">
        <label for="formFileSm" class="form-label">Choose Image </label>
        <input class="form-control form-control-sm" name="photo-file" id="formFileSm" type="file">
    </div>
    <button type="submit" class="btn btn-primary float-end">Submit</button>
</form:form>

<table class="table">
    <thead>
    <tr>
        <th scope="col">Name</th>
        <th scope="col">Email</th>
        <th scope="col">Mark</th>
        <th scope="col">Gender</th>
        <th scope="col">Faculty</th>
        <th scope="col">Hobbies</th>
<%--        <th scope="col">Remove</th>--%>
    </tr>
    </thead>
    <tbody>
    <c:set var="index" value="${0}"/>

    <c:forEach var="student" items="${students}">
        <c:out value="${index+1}"/>
        <tr>
            <th scope="row">${student.name}</th>
            <td>${student.email}</td>
            <td>${student.marks}</td>
            <td>${student.gender ? 'Male' : 'Female'}</td>
            <td>${student.faculty}</td>
            <td class="d-flex">
                <c:forEach items="${student.hobbies}" var="hobby">
                    <span> ${hobby}</span>
                </c:forEach>
            </td>
            <td>
                <img style="max-width: 20px" src="/image/${student.image}" alt="">
            </td>
<%--            <td>--%>
<%--                <button formaction="/remove/${index}">Remove ${index}</button>--%>
<%--            </td>--%>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>