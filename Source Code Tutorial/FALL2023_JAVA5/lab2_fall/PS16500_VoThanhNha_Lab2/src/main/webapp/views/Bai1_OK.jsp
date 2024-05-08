<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bai1_Lab2</title>
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
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
</head>
<body>
	<%--Header --%>
	<jsp:include page="/views/header.jsp"></jsp:include>
	<div class="s004">
		<form action="/ctrl/ok" method="post">
			<fieldset>
				<legend>WHAT ARE YOU LOOKING FOR?</legend>
				<div class="inner-form">
					<div class="input-field">
						<input class="form-control" id="choices-text-preset-values"
							type="text" value="${ok}"/>
						<button class="btn-search" type="button">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
								viewBox="0 0 24 24">
                  <path
									d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"></path>
                </svg>
						</button>
					</div>
				</div>
			</fieldset>
			<button class="learn-more mr-5 ml-5 pl-4" formaction="/ctrl/ok1">BUTTON 1</button>
			<button class="learn-more mr-5" formmethod="get">BUTTON 2</button>
			<button class="learn-more mr-5" formaction="/ctrl/ok?x">BUTTON 3</button>
		</form>
	</div>
	<%--Footer --%>
	<jsp:include page="/views/footer.jsp"></jsp:include>
	<script src="/js/extention/choices.js"></script>
	<script>
		var textPresetVal = new Choices('#choices-text-preset-values', {
			removeItemButton : true,
		});
	</script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
</body>
</html>