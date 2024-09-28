<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý điện thoại</title>
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
		<h2>Quản lí theo nhà cung cấp</h2>
		<div id="accordion">
			<div class="card">
				<div class="card-header">
					<a class="btn" data-bs-toggle="collapse" href="#collapseOne">
						Nhà cung cấp #1 - Samsung </a>
				</div>
				<div id="collapseOne" class="collapse " data-bs-parent="#accordion">
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th>Hình ảnh</th>
									<th>Tên điện thoại</th>
									<th>Năm sản xuất</th>
									<th>Hành động</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><img src="../../assets/images/galaxy-s21.jpg"
										alt="Galaxy S21" style="width: 100px;"></td>
									<td>Galaxy S21</td>
									<td>2021</td>
									<td><button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#phoneDetailModal">Xem
											thông tin chi tiết</button></td>
								</tr>
								<tr>
									<td><img src="../../assets/images/galaxy-a52.jpg"
										alt="Galaxy A52" style="width: 100px;"></td>
									<td>Galaxy A52</td>
									<td>2021</td>
									<td><button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#phoneDetailModal">Xem
											thông tin chi tiết</button></td>
								</tr>
								<tr>
									<td><img src="../../assets/images/galaxy-note20.jpg"
										alt="Galaxy Note 20" style="width: 100px;"></td>
									<td>Galaxy Note 20</td>
									<td>2020</td>
									<td><button type="button" class="btn btn-primary"
											data-bs-toggle="modal" data-bs-target="#phoneDetailModal">Xem
											thông tin chi tiết</button></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<a class="collapsed btn" data-bs-toggle="collapse"
						href="#collapseTwo"> Nhà cung cấp #2 - Apple </a>
				</div>
				<div id="collapseTwo" class="collapse" data-bs-parent="#accordion">
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th>Hình ảnh</th>
									<th>Tên điện thoại</th>
									<th>Năm sản xuất</th>
									<th>Hành động</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><img src="../../assets/images/iphone-13.jpg"
										alt="iPhone 13" style="width: 100px;"></td>
									<td>iPhone 13</td>
									<td>2021</td>
									<td><a href="/detail/iphone-13" class="btn btn-primary">Xem
											thông tin chi tiết</a></td>
								</tr>
								<tr>
									<td><img src="../../assets/images/iphone-12.jpg"
										alt="iPhone 12" style="width: 100px;"></td>
									<td>iPhone 12</td>
									<td>2020</td>
									<td><a href="/detail/iphone-12" class="btn btn-primary">Xem
											thông tin chi tiết</a></td>
								</tr>
								<tr>
									<td><img src="../../assets/images/iphone-se.jpg"
										alt="iPhone SE" style="width: 100px;"></td>
									<td>iPhone SE</td>
									<td>2020</td>
									<td><a href="/detail/iphone-se" class="btn btn-primary">Xem
											thông tin chi tiết</a></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="modal" id="phoneDetailModal" tabindex="-1"
		aria-labelledby="phoneDetailModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="phoneDetailModalLabel">Thông tin
						điện thoại</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<form id="phoneDetailForm">
						<div class="mb-3">
							<label for="phoneName" class="form-label">Tên điện thoại</label>
							<input type="text" class="form-control" id="phoneName" value="">
						</div>
						<div class="mb-3">
							<label for="phoneModel" class="form-label">Model</label> <input
								type="text" class="form-control" id="phoneModel" value="">
						</div>
						<div class="mb-3">
							<label for="phoneYear" class="form-label">Năm sản xuất</label> <input
								type="text" class="form-control" id="phoneYear" value="">
						</div>
						<div class="mb-3">
							<label for="phonePrice" class="form-label">Giá</label> <input
								type="text" class="form-control" id="phonePrice" value="">
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger" id="deletePhone">Delete</button>
					<button type="button" class="btn btn-primary" id="updatePhone">Update</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
