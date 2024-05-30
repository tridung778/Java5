<%--
  Created by IntelliJ IDEA.
  User: duong
  Date: 5/30/2024
  Time: 9:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Send mail</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
            crossorigin="anonymous"></script>
    <style type="text/css">
        * {
            --formWidth: 460px;
            --btnWidth: 70px;
            --btnCenter: 195px;
        }

        .formMailer {
            width: var(--formWidth);
            margin: auto;
            margin-top: 1rem;
        }

        h2 {
            color: #0000FF;
        }

        .btnSend {
            margin-top: 1.5rem;
            margin-left: 195px;
            width: var(--btnWidth);
            font-size: 25px;
        }

        .btnMore {
            margin-top: 1rem;
        }
    </style>
</head>
<body>
<form enctype="multipart/form-data" class="formMailer" action="/mailer/send" method="post">
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
        <input type="file" multiple="true" class="form-control" id="formControlInput5" name="files" />
    </div>
    <br/>
    <button class="btn btn-success btnSend">Gửi</button>
</form>
<script type="text/javascript">
    const btnMore = document.getElementById('btnMore');
    const fileMore = document.getElementById("fileMore");
    btnMore.addEventListener('click', () => {
        fileMore.style.display = "block";
    });
</script>
</body>
</html>