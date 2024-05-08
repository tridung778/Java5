<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form bai 3</title>
<link rel="icon" type="image/x-icon" href="/images/iconFavion.png">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.9/angular.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
<link rel="stylesheet" href="/css/sanPham.css">
</head>
<body>
	<%--Header --%>
	<jsp:include page="/views/header.jsp"></jsp:include>
	<div class="padding">
		<div class="container d-flex justify-content-center mb-3">
			<!--form mask starts-->
			<div class="card shadow container-fluid">
				<div class="card-body">
					<h4 class="card-title">Thông tin sản phẩm</h4>
					<p class="card-description">Nhập vào tên và giá sản phẩm</p>
					<form class="forms-sample" action="/product/save" method="post">
						<div class="form-group row">
							<div class="col">
								<label>Tên sản phẩm:</label> <input class="form-control"
									data-inputmask="'alias': 'date'" value="" name="name">
							</div>
							<div class="col">
								<label>Giá sản phẩm:</label> <input class="form-control"
									data-inputmask="'alias': 'datetime'" value="" name="price">
							</div>
						</div>
						<button class="btn btn-danger">Save</button>
					</form>
				</div>
			</div>
			<!--form mask ends-->
		</div>
		<div class="container">
			<div class="grid-margin stretch-card">
				<table class="table table-bordered mx-auto shadow">
					<thead class="font-weight-bold text-center bg-warning">
						<tr>
							<td>Tên sản phẩm</td>
							<td>Giá sản phẩm</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>Bò húc</td>
							<td>15000</td>
						</tr>
						<tr>
							<td>String</td>
							<td>10000</td>
						</tr>
						<tr>
							<td>${product.name}</td>
							<td>${product.price}</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
		<%--Footer --%>
		<jsp:include page="/views/footer.jsp"></jsp:include>
</body>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</html>