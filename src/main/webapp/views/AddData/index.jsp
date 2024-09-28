<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm dữ liệu</title>
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
	<!-- Main -->
	<div class="container mt-3">
		<h2>Thêm dữ liệu</h2>
		<br>
		<!-- Nav tabs -->
		<ul class="nav nav-tabs" role="tablist">
			<li class="nav-item"><a class="nav-link active"
				data-bs-toggle="tab" href="#phone">Thêm điện thoại</a></li>
			<li class="nav-item"><a class="nav-link" data-bs-toggle="tab"
				href="#supplier">Thêm Nhà Cung Cấp</a></li>
		</ul>

		<!-- Tab panes -->
		<div class="tab-content">
			<!-- Form add phone -->
			<div id="phone" class="container tab-pane active">
				<br>
				<form action="themDienThoai" method="POST"
					enctype="multipart/form-data">
					<div class="mb-3">
						<label for="phoneName" class="form-label">Tên điện thoại:</label>
						<input type="text" class="form-control" id="phoneName"
							name="phoneName" placeholder="Nhập tên điện thoại" required>
					</div>
					<div class="mb-3">
						<label for="phoneYear" class="form-label">Năm sản xuất:</label> <input
							type="number" class="form-control" id="phoneYear"
							name="phoneYear" placeholder="Nhập năm sản xuất" required>
					</div>
					<div class="mb-3">
						<label for="phoneSupplier" class="form-label">Nhà cung
							cấp:</label> <select class="form-select" id="phoneSupplier"
							name="phoneSupplier" required>
							<option selected disabled>Chọn nhà cung cấp</option>
							<option value="1">Nhà cung cấp 1</option>
							<option value="2">Nhà cung cấp 2</option>
							<option value="3">Nhà cung cấp 3</option>
						</select>
					</div>
					<div class="mb-3">
						<label for="phoneImage" class="form-label">Ảnh điện thoại:</label>
						<input type="file" class="form-control" id="phoneImage"
							name="phoneImage" required>
					</div>
					<button type="submit" class="btn btn-primary">Thêm điện
						thoại</button>
				</form>

			</div>

			<!-- Form add suplier -->
			<div id="supplier" class="container tab-pane fade">
				<br>
				<form action="themNhaCungCap" method="POST">
					<div class="mb-3">
						<label for="supplierName" class="form-label">Tên nhà cung
							cấp:</label> <input type="text" class="form-control" id="supplierName"
							name="supplierName" placeholder="Nhập tên nhà cung cấp" required>
					</div>
					<div class="mb-3">
						<label for="supplierAddress" class="form-label">Địa chỉ:</label> <input
							type="text" class="form-control" id="supplierAddress"
							name="supplierAddress" placeholder="Nhập địa chỉ nhà cung cấp"
							required>
					</div>
					<div class="mb-3">
						<label for="supplierContact" class="form-label">Thông tin
							liên hệ:</label> <input type="text" class="form-control"
							id="supplierContact" name="supplierContact"
							placeholder="Nhập số điện thoại" required>
					</div>
					<button type="submit" class="btn btn-primary">Thêm nhà
						cung cấp</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
