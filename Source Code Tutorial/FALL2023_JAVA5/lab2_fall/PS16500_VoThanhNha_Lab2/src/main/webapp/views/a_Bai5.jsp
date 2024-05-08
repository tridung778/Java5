<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bai 5</title>
<link rel="icon" type="image/x-icon" href="/images/iconFavion.png">
<link href="https://fonts.googleapis.com/css?family=Poppins:400,800"
	rel="stylesheet" />
<link href="/css/main.css" rel="stylesheet" />
<link href="/css/style.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/tinhChoBe.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
</head>
<style>
iframe {
	border-radius: 30px;
}
</style>
<body>

	<%--Header --%>
	<jsp:include page="/views/header.jsp"></jsp:include>
	<div class="s004">
		<form action="/a_Bai5" method="post">
			<fieldset class="mb-3">
				<legend>PLAY VIDEO BUTTON BELOW</legend>
				<iframe width="800" height="400"
					src="https://www.youtube.com/embed/${message}${param.message}?autoplay=1"
					title="YouTube video player" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</fieldset>
			<button class="learn-more ml-5 pl-4 mr-5" formaction="/a">VIDEO
				A</button>
			<button class="learn-more mr-5" formaction="/b">VIDEO B</button>
			<button class="learn-more mr-5" formaction="/c">VIDEO C</button>
			<button class="learn-more mr-5" formaction="/d">VIDEO D</button>
		</form>
	</div>
	<%--Footer --%>
	<jsp:include page="/views/footer.jsp"></jsp:include>
</body>
<script src="/js/extention/choices.js"></script>
<script>
	var textPresetVal = new Choices('#choices-text-preset-values', {
		removeItemButton : true,
	});
</script>
<script>
if(${message}!=""){
	alert(${message})
	alert(${param.message})
}
</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
</html>