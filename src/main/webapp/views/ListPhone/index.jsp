
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Danh sách điện thoại</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
<script src="../../assets/js/script.js"></script>
</head>
<body>
	<header id="header" class="header"></header>
	<script>
		load("#header", "../templates/header.jsp");
	</script>
	<!--  Main-->
	<div class="container mt-3">
		<div class="row">
			<div class="col-4 mx-auto d-flex align-items-center">
				<input type="text" class="form-control" placeholder="Tìm tên điện thoại ">
				<button class="btn btn-primary ms-2">Tìm</button>
			</div>
		</div>
		<div class="row mt-2">
			<div class="col-2">
				<label for="sel1" class="form-label">Chọn nhà cung cấp:</label> <select
					class="form-select form-select-sm" id="sel1" name="sellist1">
					<option>Tất cả</option>
					<option>1</option>
					<option>2</option>
					<option>3</option>
					<option>4</option>
				</select>
			</div>
		</div>
		<div class="row mt-2">
			<!-- item phone -->
			<div class="col-3 mt-3">
				<div class="card">
					<img src="../../assets/img/logo-phone.jpg" class="card-img-top"
						alt="...">
					<div class="card-body">
						<h5 class="card-title">Samsung Galaxy S21</h5>
						<p class="card-text">Năm sản xuất: 2024</p>
						<button class="btn btn-primary">Details</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>