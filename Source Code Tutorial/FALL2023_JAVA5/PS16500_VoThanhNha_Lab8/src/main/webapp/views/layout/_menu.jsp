<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark pl-4 rounded">
	<a class="navbar-brand" href="#"><img
		src="/assets/images/fpt-logo.png" width="60" height="40"></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse " id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto ">
			<li class="nav-item"><a class="nav-link" href="/home/index"><s:message code="nav.home"/></a></li>
			<li class="nav-item"><a class="nav-link" href="/home/about"><s:message code="nav.about"/></a></li>
			<li class="nav-item"><a class="nav-link" href="/home/contact"><s:message code="nav.contact"/></a></li>
			<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#exampleModal"><s:message code="nav.feedback"/></a></li>
			<li class="nav-item"><a class="nav-link" href="/home/hoiDap"><s:message code="nav.qa"/></a></li>
		</ul>
		<ul class="navbar-nav ml-auto">
			<li class="nav-item"><a href="?lang=vi" class="nav-link">
			<img src="/images/coVietNam.png" width="55" height="35"></a></li>
			<li class="nav-item"><a href="?lang=en" class="nav-link">
			<img src="/images/coNuocAnh.png" width="55" height="35">
			</a></li>
		</ul>
	</div>
</nav>
<script>
	$(document).ready(function() {
		$("a[href*=lang]").on("click", function() {
			var param = $(this).attr("href");
			$.ajax({
				url : "/home/index" + param,
				success : function() {
					location.reload();
				}
			});
			return false;
		})
	})
</script>
