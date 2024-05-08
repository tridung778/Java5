<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search product by price</title>
<!-- Favicon  -->
<link rel="icon"
	href="https://png.pngtree.com/png-vector/20190329/ourlarge/pngtree-laptop-logo-template-design-laptop-logo-with-modern-frame-isolated-png-image_886430.jpg">
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<link rel="stylesheet" href="/tables/admin.css">
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<nav
			class="main-header navbar navbar-expand navbar-white navbar-light">
			<!-- Right navbar links -->
			<ul class="navbar-nav ml-auto">
				<!-- Navbar Search -->
				<li class="nav-item"><a class="nav-link"
					data-widget="navbar-search" href="#" role="button"> <i
						class="fas fa-search"></i>
				</a>
					<div class="navbar-search-block">
						<form class="form-inline">
							<div class="input-group input-group-sm">
								<input class="form-control form-control-navbar" type="search"
									placeholder="Search" aria-label="Search">
								<div class="input-group-append">
									<button class="btn btn-navbar" type="submit">
										<i class="fas fa-search"></i>
									</button>
									<button class="btn btn-navbar" type="button"
										data-widget="navbar-search">
										<i class="fas fa-times"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>


				<li class="nav-item"><a class="nav-link"
					data-widget="fullscreen" href="#" role="button"> <i
						class="fas fa-expand-arrows-alt"></i>
				</a></li>
				<li class="nav-item"><a class="nav-link"
					data-widget="control-sidebar" data-slide="true" href="#"
					role="button"> <i class="fas fa-th-large"></i>
				</a></li>
			</ul>
		</nav>
		<!-- /.navbar -->

		<!-- Main Sidebar Container -->
		<aside class="main-sidebar sidebar-dark-primary elevation-4">
			<!-- Brand Logo -->
			<a href="" class="brand-link"> <img
				src="https://png.pngtree.com/template/20190530/ourlarge/pngtree-home-inspection-logo-design-vector-image_207530.jpg"
				alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
				style="opacity: .8"> <span
				class="brand-text font-weight-light">PS16500</span>
			</a>

			<!-- Sidebar -->
			<div class="sidebar">
				<!-- Sidebar user (optional) -->
				<div class="user-panel mt-3 pb-3 mb-3 d-flex">
					<div class="image">
						<img
							src="https://thuthuatnhanh.com/wp-content/uploads/2019/05/gai-xinh-toc-ngan-facebook.jpg"
							class="img-circle elevation-2" alt="User Image">
					</div>
					<div class="info">
						<a href="#" class="d-block">NhaThanh</a>
					</div>
				</div>

				<!-- SidebarSearch Form -->
				<div class="form-inline">
					<div class="input-group" data-widget="sidebar-search">
						<input class="form-control form-control-sidebar" type="search"
							placeholder="Search" aria-label="Search">
						<div class="input-group-append">
							<button class="btn btn-sidebar">
								<i class="fas fa-search fa-fw"></i>
							</button>
						</div>
					</div>
				</div>

				<!-- Sidebar Menu -->
				<nav class="mt-2">
					<ul class="nav nav-pills nav-sidebar flex-column"
						data-widget="treeview" role="menu" data-accordion="false">
						<!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
						<li class="nav-item menu-open"><a href="#"
							class="nav-link active"> <i class="nav-icon fas fa-table"></i>
								<p>
									Task <i class="fas fa-angle-left right"></i>
								</p>
						</a>
							<ul class="nav nav-treeview">
								<li class="nav-item"><a href="/report" class="nav-link "> <i
										class="far fa-circle nav-icon"></i>
										<p>Report</p>
								</a></li>
								<li class="nav-item"><a href="/product/search" class="nav-link active">
										<i class="far fa-circle nav-icon"></i>
										<p>Find by price</p>
								</a></li>
								<li class="nav-item"><a href="/product/search-and-page" class="nav-link"> <i
										class="far fa-circle nav-icon"></i>
										<p>Find by name</p>
								</a></li>
							</ul></li>


					</ul>
				</nav>
				<!-- /.sidebar-menu -->
			</div>
			<!-- /.sidebar -->
		</aside>


		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Main content -->
			<section class="content">
				<!-- Content Header (Page header) -->
				<div class="content-header">
					<div class="container-fluid">
						<div class="row mb-2">
							<div class="col-sm-6">
								<h1 class="m-0">Find by price product form min to max</h1>
							</div>
							<!-- /.col -->
							<div class="col-sm-6">
								<ol class="breadcrumb float-sm-right">
									<li class="breadcrumb-item"><a href="#">Home</a></li>
									<li class="breadcrumb-item active">Find price</li>
								</ol>
							</div>
							<!-- /.col -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</div>
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-12">
							<div class="mb-4">
								<div class="col-md-12">
									<form action="/product/search" method="post">
										<div class="form-row">
											<div class="col">
												<input name="min" value="${param.min}"
													placeholder="Min Price?" class="form-control">
											</div>
											<div class="col">
												<input name="max" value="${param.max}"
													placeholder="Max Price?" class="form-control">
											</div>
											<button class="btn btn-primary">Search</button>
										</div>
									</form>
								</div>
							</div>
							<div class="card">
								<div class="card-header">
									<h3 class="card-title">Table product found</h3>
								</div>
								<!-- /.card-header -->
								<div class="card-body p-0">
									<table class="table table-bordered table-hover">
										<thead>
											<th>ID</th>
											<th>Name</th>
											<th>Price</th>
											<th>Create Date</th>
										</thead>
										<tbody>
											<c:forEach var="item" items="${items}">
												<tr>
													<td>${item.id}</td>
													<td>${item.name}</td>
													<td>${item.price}</td>
													<td>${item.createDate}</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<!-- /.card-body -->
							</div>
							<!-- /.card -->
							<!-- /.card -->
						</div>
						<!-- /.col -->
						<!-- /.col -->
					</div>
					<!-- /.row -->

				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		<footer class="main-footer">
			<div class="float-right d-none d-sm-block">
				<b>Version</b> 3.2.0
			</div>
			<strong>Template &copy; 2014-2021 <a href="">AdminLTE.io</a>.
			</strong> All rights reserved.
		</footer>

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="/tables/js/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script src="/tables/js/bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/tables/js/adminlte.js"></script>
</body>
</html>