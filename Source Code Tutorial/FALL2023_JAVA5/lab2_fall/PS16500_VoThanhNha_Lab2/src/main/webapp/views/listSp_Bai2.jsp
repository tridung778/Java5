<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bai 2</title>
<link rel="stylesheet" href="css/boostrap4.0.css">
<!-- JavaScript Bundle with Popper -->
    <link rel="icon" type="image/x-icon" href="/images/iconFavion.png">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="/css/listSp.css">
    <link rel="stylesheet" href="/css/tinhChoBe.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
</head>
<body>
	<script>
		if ("${sanpham}" != "") {
			alert("Bạn vừa chọn sản phẩm ${sanpham}");
		}
	</script>
	<%--Header --%>
		<jsp:include page="/views/header.jsp"></jsp:include>
	<div class="container">
		<div class="row mt-4">
			<div class="card rounded-0" style="width: 14rem; margin-left: 130px">
				<a href="/sanpham/Samsung Galaxy S22 Ultra 5G 256GB"
					class="text-dark">
					<div class="arrow">
						<img width="200px" class="m-auto pt-4 mx-auto d-block"
							src="/images/samsungS22.jpg" alt="Card image cap">
					</div>
					<div class="card-body titlePro">
						<h5 class="card-title font-weight-normal">Samsung Galaxy S22
							Ultra 5G 256GB</h5>
						<h6 class="font-weight-bold">
							33.990.000<sup><u>đ</u></sup>
						</h6>
						<i class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star text-danger"></i>7
					</div>
				</a>
			</div>
			<div class="card rounded-0" style="width: 14rem;">
				<a href="/sanpham/IPhone 11 64GB" class="text-dark">
					<div class="arrow">
						<img width="200px" class="m-auto pt-4 mx-auto d-block"
							src="/images/iphone11.jpg" alt="Card image cap">
					</div>
					<div class="card-body titlePro">
						<p class="result-label temp4">
							<img src="/images/icon6-50x50.png" width="20px" height="20px"
								class="migs"
								alt="VNPAY Giảm
                                500K"> <span
								class=""> VNPAY Giảm 500K </span>
						</p>
						<h5 class="card-title font-weight-normal">IPhone 11 64GB</h5>
						<h6 class="font-weight-bold">
							16.990.000<sup><u>đ</u></sup>
						</h6>
						<i class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i>780
					</div>
				</a>
			</div>
			<div class="card rounded-0" style="width: 14rem;">
				<a href="/sanpham/Xiaomi Redmi Note 11S" class="text-dark">
					<div class="arrow">
						<img src="/images/Label_01-02.png" width="40" height="40"
							class="mulet" alt=""> <img width="200px"
							class="m-auto pt-4 mx-auto d-block" src="/images/xiaomi.jpg"
							alt="Card image cap">
					</div>
					<div class="card-body titlePro">
						<h5 class="card-title font-weight-normal">Xiaomi Redmi Note
							11S</h5>
						<h6 class="font-weight-bold">
							6.690.000<sup><u>đ</u></sup>
						</h6>
						<i class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star text-danger"></i>39
					</div>
				</a>
			</div>
			<div class="card rounded-0" style="width: 14rem;">
				<a href="/sanpham/Realme C35" class="text-dark">
					<div class="arrow">
						<img src="/images/docquyen.png" width="40" height="40"
							class="mulet" alt=""> <img width="200px"
							class="m-auto pt-4 mx-auto d-block" src="/images/realme.jpg"
							alt="Card image cap">
					</div>
					<div class="card-body titlePro">
						<h5 class="card-title font-weight-normal">Realme C35</h5>
						<h6 class="font-weight-bold">
							3.990.000<sup><u>đ</u></sup>
						</h6>
						<i class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star-fill text-danger"></i> <i
							class="bi bi-star text-danger"></i>
					</div>
				</a>
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