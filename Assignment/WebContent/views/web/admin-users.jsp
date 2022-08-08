<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">

	<%-- <%@include file="common/headAdmin.jsp"%> --%>
		<title>H&amp;N</title>
	<link type="text/css" href="<c:url value='/views/web/bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
	<link type="text/css" href="<c:url value='/views/web/bootstrap/css/bootstrap-responsive.min.css'/>" rel="stylesheet">
	<link type="text/css" href="<c:url value='/views/web/css/theme.css'/>" rel="stylesheet">
	<link type="text/css" href="<c:url value='/views/web/images/icons/css/font-awesome.css'/>" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>

	<%@include file="common/headerAdmin.jsp"%>

	<%@include file="common/categoryAdmin.jsp"%>


				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Quản lý người dùng</h3>
							</div>
							
							<div class="module-body">
							
								<form class="form-horizontal row-fluid" method="POST" action="AdminController">
									<div class="control-group">
										<label class="control-label" for="basicinput">ID</label>
										<div class="controls">
											<input class="form-control" type="text" name="id_KH" placeholder="ID người dùng..." required value="${user.id_KH}" readonly style="background-color: blue; color:white">
											
										</div>
									</div>
								
									<div class="control-group">
										<label class="control-label" for="basicinput">Họ tên</label>
										<div class="controls">
											<input type="text" id="basicinput" name="hoTen" placeholder="Nhập họ tên..." class="span8" value="${user.hoTen}">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Ngày sinh</label>
										<div class="controls">
											<input type="date" name="ngaySinh" value="${user_bdate}" id="basicinput" class="span8">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Giới tính</label>
										<div class="controls">
											<label class="radio inline">
												<input type="radio" name="gioiTinh" id="optionsRadios1" value="false" ${!user.gioiTinh?'checked':''}>
												Nam
											</label> 
											<label class="radio inline">
												<input type="radio" name="gioiTinh" id="optionsRadios2" value="true" ${user.gioiTinh?'checked':''}>
												Nữ
											</label> 
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Số điện thoại</label>
										<div class="controls">
											<input type="text" id="basicinput" name="soDT" placeholder="Nhập số điện thoại..." class="span8" value="${user.soDT}">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Email</label>
										<div class="controls">
											<input type="email" id="basicinput" name="email" placeholder="Nhập email..." class="span8" value="${user.email}">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Địa chỉ</label>
										<div class="controls">
											<input type="text" id="basicinput" name="diaChi" placeholder="Địa chỉ..." class="span8" value="${empty user.diaChi?'':user.diaChi}">
										</div>
									</div>
									
									<div class="control-group">
											<label class="control-label" for="basicinput">Nghề nghiệp</label>
											<div class="controls">
												<select tabindex="1" data-placeholder="Click vào đây.." class="span8">
													<option value="">Chưa chọn nghề nghiệp..</option>
													<option value="Category 1">Học sinh/Sinh viên</option>
													<option value="Category 2">Đi làm</option>
													<option value="Category 3">Khác</option>
												</select>
											</div>
										</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Tài khoản</label>
										<div class="controls">
											<input type="text" id="basicinput" name="tenTK" placeholder="Nhập tên tài khoản..." class="span8" value="${user.tenTK}">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Mật khẩu</label>
										<div class="controls">
											<input type="password" id="basicinput" name="matKhau" placeholder="Nhập mật khẩu..." class="span8" value="${user.matKhau}">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label">Vai trò</label>
										<div class="controls">
											<label class="radio inline">
												<input type="radio" name="vaiTro" id="user" value="false" checked="checked" ${!user.vaiTro?'checked':''}>
												Người dùng
											</label> 
											<label class="radio inline">
												<input type="radio" name="vaiTro" id="admin" value="true" ${user.vaiTro?'checked':''}>
												Quản lý
											</label> 
										</div>
									</div>
									<br>
									<div style="margin-left: 30%; margin-top: 20px">
										<c:choose>
										<c:when test="${disabled == 'disabled'}"><button type="submit" class="btn btn-success" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/UserCreate" disabled>Add</button></c:when>
										<c:otherwise><button type="submit" class="btn btn-success" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/UserCreate">Add</button></c:otherwise>
										</c:choose>
										<button type="submit" class="btn btn-warning" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/UserUpdate">Update</button>
										<button type="submit" class="btn btn-danger" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/UserDelete">Delete</button>
										<button type="submit" class="btn btn-inverse" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/UserReset">Reset</button>
									</div>
									<div>
										<c:if test="${not empty message}">
	                            			<div class="alert alert-success">${message}</div>
	                            		</c:if>
	                            		<c:if test="${not empty error}">
	                            			<div class="alert alert-danger">${error}</div>
	                            		</c:if>
                            		</div>
								</form>
								<br>
								<p>
									<strong>Danh sách người dùng</strong>

								</p>
								<table class="table table-striped">
								  <thead>
									<tr>
									  <th>ID</th>
									  <th>Họ tên</th>
									  <th>Ngày sinh</th>
									  <th>Giới tính</th>
									  <th>SDT</th>
									  <th>Email</th>
									  <th>Tài khoản</th>
									  <th>Mật khẩu</th>
									  <th>Vai trò</th>
									</tr>
								  </thead>
								  <tbody>
								  	<c:set var="count" value="${0}" scope="request"/>					  	
								  	<c:forEach var="item" items="${users}">
		  							<c:set var="count" value="${count+1}" scope="request"/>
									<tr>
									  <td scope="row"><c:out value="${requestScope.count}"/></td>
									  <td>${item.hoTen}</td>
									  <td>${item.ngaySinh}</td>
									  <td>${item.gioiTinh?'Nữ':'Nam'}</td>
									  <td>${item.soDT}</td>
									  <td>${item.email}</td>
									  <td>${item.tenTK}</td>
									  <td>${item.matKhau}</td>
									  <td>${item.vaiTro?'Quản lý':'Người dùng'}</td>
									  <td>
									  	<a href="${pageContext.request.contextPath}/Admin/UserEdit?id_KH=${item.id_KH}">Edit</a> | 
		      							<a href="${pageContext.request.contextPath}/Admin/UserDelete?id_KH=${item.id_KH}">Remove</a>
		      						  </td>
									</tr>
									</c:forEach>
								  </tbody>
								</table>

								<br />
							</div>
						</div>
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">2022 &copy; Copy right by Hung-Ngoc</b>
		</div>
	</div>
	
    <script src="<c:url value='/views/web/scripts/jquery-1.9.1.min.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/views/web/scripts/jquery-ui-1.10.1.custom.min.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/views/web/bootstrap/js/bootstrap.min.js'/>" type="text/javascript"></script>
	<script src="<c:url value='/views/web/scripts/datatables/jquery.dataTables.js'/>" type="text/javascript"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
	<script type="text/javascript">
    (function () {
    	'use strict'
    	const forms = document.querySelectorAll('.requires-validation')
    	Array.from(forms)
    	  .forEach(function (form) {
    	    form.addEventListener('submit', function (event) {
    	      if (!form.checkValidity()) {
    	        event.preventDefault()
    	        event.stopPropagation()
    	      }

    	      form.classList.add('was-validated')
    	    }, false)
    	  })
    	})()
    </script>
</body>