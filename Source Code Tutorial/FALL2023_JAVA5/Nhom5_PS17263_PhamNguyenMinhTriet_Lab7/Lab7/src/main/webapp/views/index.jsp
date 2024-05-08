<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Send mail</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<style type="text/css">
*{
	--formWidth:460px;
	--btnWidth:70px;
	--btnCenter:195px;
}
.formMailer{
	width: var(--formWidth);
	margin: auto;
	margin-top: 1rem;
}
h2{
	color:#0000FF;
}
.btnSend{
	margin-top: 1.5rem;
	margin-left: 195px;
	width: var(--btnWidth);
	font-size:25px;
}
.btnMore{
	margin-top:1rem;
}
</style>
</head>
<body>
	<form enctype="multipart/form-data" class="formMailer" action="/mailer/send"  method="post">
		<h2>Gửi email</h2>
		<div class="form-group">
			<label for="formControlInput">To</label> <input
				type="email" class="form-control" id="formControlInput" name="txtTo"
				placeholder="Nhập email người nhận...">
		</div>
		<div class="form-group">
			<label for="formControlInput2">CC</label> <input
				type="text" class="form-control" id="formControlInput2" name="txtCC"
				placeholder="Nhập email(cc) ngăn cách nhau bởi dấu ','">
		</div>
		<div class="form-group">
			<label for="formControlInput3">BCC</label> <input
				type="text" class="form-control" id="formControlInput3" name="txtBCC"
				placeholder="Nhập email(bcc) ngăn cách nhau bởi dấu ','">
		</div>
		<div class="form-group">
			<label for="formControlInput4">Tiêu đề</label> <input
				type="text" class="form-control" id="formControlInput4" name="txtSubject"
				placeholder="Nhập tiêu đề...">
		</div>
		<div class="form-group">
			<label for="formControlTextarea">Nội dung</label>
			<textarea class="form-control" id="formControlTextarea" name="txtContent"
				rows="4" placeholder="Nhập nội dung..."></textarea>
		</div>
		<div class="form-group">
			<label for="formControlInput4">File đính kèm</label> 
			<input
				type="file" class="form-control" id="formControlInput4" name="file"
			>
		</div>	
		<div id="fileMore" class="form-group" style="display: none;">
			<label for="formControlInput5">File đính kèm</label> 
			<input
				type="file" class="form-control" id="formControlInput5" name="file1"
			>
		</div>			
		<div id="btnMore" class="btn btn-info btnMore">
			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16">
		  		<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
		  		<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
			</svg>
		 Thêm tệp</div>
		 <br/>
		<button class="btn btn-success btnSend">Gửi</button>
	</form>
	<script type="text/javascript">
		const btnMore=document.getElementById('btnMore');
		const fileMore = document.getElementById("fileMore");		
		btnMore.addEventListener('click',()=>{
			fileMore.style.display="block";
		});
	</script>
</body>
</html>