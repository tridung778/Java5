<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bai 2</title>
    <link rel="icon" type="image/x-icon" href="/images/iconFavion.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel="stylesheet" href="/css/tinh.css">
<link rel="stylesheet" href="/css/tinhChoBe.css">

<style>
body {
	background: linear-gradient(rgba(246, 247, 249, 0.8),
		rgba(246, 247, 249, 0.8)),
		url(https://res.cloudinary.com/dxfq3iotg/image/upload/v1564049481/bg-clouds.jpg)
		no-repeat center center fixed;
	background-size: cover
}
</style>
</head>
<body ng-app="myApp">
	<%--Header --%>
		<jsp:include page="/views/header.jsp"></jsp:include>
	<div class="container pt-5">
		<div class="card m-auto mt-5 shadow">
		<iframe width="560" height="315" src="https://www.youtube.com/embed/CMzqFmZCnY8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
			<div class="form">
				<div class="left-side">
					<span></span> <span></span> <span></span> <span></span>
				</div>
				<div class="right-side">
					<div class="signin_form s_form ">
						<form ng-controller="myctrl" action="/pheptinh" method="get">
							<div class="login">
								<h2>Thực hiện phép tính!</h2>
							</div>
							<div class="input_text">
								<label>Số thứ nhất</label> <input name="a" value="${a}" type="text">
							</div>
							<div class="input_text">
								<label>Số thứ hai</label> <input name="b" value="${b}" type="text">
							</div>
							<div class="input_text row">
								<label class="ml-3">Phép toán</label> <select
									name="pheptinh" class="form-control ml-3">
									<option value="">Chọn</option>
									<option value="+">+</option>
									<option value="-">-</option>
									<option value="x">x</option>
									<option value="/">/</option>
								</select>
							</div>
					
							<div class="login_btn">
								<button>Submit</button>
							</div>
									<h1>ket qua = ${kq }</h1>
							<div class="input_text">
								<label>Kết quả</label> 
								<input value="${kq}" type="text" ng-disabled="${kq}">
							</div>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

</body>
<script>
    var app = angular.module("myApp", []);
    app.controller("myctrl", function($scope) {

    })
</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</html>