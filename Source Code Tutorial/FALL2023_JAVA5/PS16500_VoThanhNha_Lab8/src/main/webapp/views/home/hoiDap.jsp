<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<div class="container-fluid pt-3">
	<h1 class="post-single-title font-weight-bold">
		<s:message code="home.hoiDap" />
	</h1>
	<div class="container mt-xl-5 mb-5 bg-light">
		<div class="d-flex justify-content-center pt-5">
			<h2 class="font-weight-bold">
				<s:message code="feed.p3" />
			</h2>
		</div>
		<div class="d-flex justify-content-center text-muted">
			<s:message code="feed.p4" />
		</div>
		<div class="d-md-flex flex-md-row justify-content-center py-4">
			<div class="d-md-flex flex-md-column contact px-4">
				<div class="d-md-flex justify-content-center icon py-2">
					<span class="fa fa-map-marker"></span> <span
						class="mobile-info text-dark p-2 pb-3"><s:message
							code="about.p25" /></span>
				</div>

			</div>
			<div class="d-flex flex-column contact px-4">
				<div class="d-md-flex justify-content-center icon py-2">
					<span class="fa fa-phone"></span> <span
						class="mobile-info text-dark p-2 pb-3">02873005588</span>
				</div>

			</div>
			<div class="d-flex flex-column contact px-4">
				<div class="d-md-flex justify-content-center icon py-2">
					<span class="fa fa-envelope"></span> <span
						class="mobile-info text-dark p-2 pb-3">nhavtps16500@fpt.edu.vn</span>
				</div>
			</div>
		</div>
		<div class="d-flex flex-column contact px-4 mb-3">
			<p>
				<s:message code="feed.p5" />
				<red class="text-muted small h6"> Click here <i
					class="bi bi-arrow-right"></i> </red>
				<input type="checkbox" ng-model="gopY">
			</p>
			<button ng-disabled="!gopY" class="btn btn-danger"
				data-toggle="modal" ng-model="loadComment"
				data-target="#exampleModalLoading">
				<s:message code="feed.p6" />
			</button>
		</div>

		<div class="d-flex flex-row justify-content-center" ng-show="gopY">
			<form class="w-100 pt-1 pb-3 pl-4 pr-4">
				<textarea name="" id="" class="form-control" cols="10" rows="5"></textarea>
			</form>
		</div>

	</div>
</div>