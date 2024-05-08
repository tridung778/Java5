<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark"  style="background-color: #616161;">
		<a class="navbar-brand" href="/ok"><img src="/images/iconFavion.png"
			width="70" height="70"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item"><a class="nav-link" href="/ok">Bài
						1 <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Bài 2 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="/sanpham">Danh sách sản phẩm</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="/pheptinh/form">Phép tính</a>
					</div></li>
				<li class="nav-item"><a class="nav-link" href="/product/form">Bài 3</a></li>
				<li class="nav-item"><a class="nav-link" href="/bai4">Bài 4</a></li>
				<li class="nav-item"><a class="nav-link" href="/a_Bai5">Bài 5</a></li>
			</ul>
		</div>
	</nav>
</body>
</html>