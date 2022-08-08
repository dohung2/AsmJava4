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
								<h3>Quản lý sản phẩm</h3>
							</div>
							
							<div class="module-body">
							
								<form class="form-horizontal row-fluid" method="POST" action="AdminController">
									<div class="control-group">
										<label class="control-label" for="basicinput">ID</label>
										<div class="controls">
											<input class="form-control" type="text" name="id_SP" placeholder="ID sản phẩm..." value="${prod.id_SP}" readonly style="background-color: blue; color:white">
											
										</div>
									</div>
								
									<div class="control-group">
										<label class="control-label" for="basicinput">Tên sản phẩm</label>
										<div class="controls">
											<input type="text" id="basicinput" name="tenSP" required="required" placeholder="Nhập tên sản phẩm..." class="span8" value="${prod.tenSP}">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Màu sắc</label>
										<div class="controls">
											<input type="text" style="width: 172px; float: left; margin-right: 25px" id="basicinput" name="mauSac" required="required" placeholder="Nhập màu sản phẩm..." class="span8" value="${prod.mauSac}">
										</div>
										
										<label class="control-label" for="basicinput" style="width: 70px; margin-right: 13px">Nhãn hiệu</label>
										<div class="controls">						
											<input type="text" style="width: 152px;" name="tenNhanHieu" required="required" placeholder="Nhập nhãn hiệu sản phẩm..." class="span8" value="${prod.tenNhanHieu}">
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Danh mục</label>
										<div class="controls">
											<select name="id_DM" style="width: 175px; float: left; margin-right: 30px" tabindex="1" data-placeholder="Chọn danh mục..." class="span8">
												<option value="" >Chọn danh mục...</option>
												<c:forEach var="category" items="${listCategory}">
													<option value="${category.id_DM}">${category.tenDM}</option>
												</c:forEach>
											</select>
										</div>
										
										<label class="control-label" for="basicinput" style="width: 55px; margin-right: 20px">Loại</label>
										<div class="controls">												
											<select name="loai" style="width: 152px;" tabindex="1" data-placeholder="Chọn loại..." class="span8">
												<option value="">Chọn loại...</option>
												<option value="nam" >Nam</option>
												<option value="nu" >Nữ</option>
												<option value="treem" >Trẻ em</option>
											</select>
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Giá</label>
										<div class="controls">
											<div class="input-append" style="float: left;">
												<input type="text" name="gia" required="required" placeholder="Nhập giá sản phẩm..." class="span8" value="<fmt:formatNumber type="number" maxFractionDigits="3" value='${prod.gia*1000}' />"><span class="add-on">vnđ</span>
											</div>
										</div>
										
										<label class="control-label" for="basicinput" style="width: 55px; margin-right: 20px">Số lượng</label>
										<div class="controls">
											<div class="input-append">												
												<input type="text" name="slTonKho" required="required" placeholder="Nhập số lượng sản phẩm..." class="span8" value="${prod.slTonKho}"><span class="add-on">cái</span>
											</div>
										</div>
									</div>								
									
									
									
									<div class="control-group">
										<label class="control-label">Trạng thái</label>
										<div class="controls">
											<label class="radio inline">
												<input type="radio" name="trangThai" id="optionsRadios1" value="false" ${!prod.trangThai?'checked':''}>
												Còn hàng
											</label> 
											<label class="radio inline">
												<input type="radio" name="trangThai" id="optionsRadios2" value="true" ${prod.trangThai?'checked':''}>
												Hết hàng
											</label> 
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Mô tả</label>
										<div class="controls">
											<c:choose>
												<c:when test="not empty ${prod.moTa}"><textarea name="moTa" class="span8" rows="5" placeholder="Nhập mô tả sản phẩm..." >${prod.moTa} </textarea></c:when>
												<c:otherwise><textarea name="moTa" class="span8" rows="5" placeholder="Sản phẩm chưa có mô tả vui lòng bổ sung!."></textarea></c:otherwise>
											</c:choose>
											
										</div>
									</div>
									
									<div class="control-group">
										<label class="control-label" for="basicinput">Ảnh</label>
										
										<div class="controls">
											<input name="anh" type="file" class="form-control-file" id="exampleFormControlFile1">
										</div>
										
										<div class="col" style="width: 250px; margin: 0 auto;">
				                           	<c:if test="${not empty prod.anh}">
				                         		<div class="col-md-12" style="margin-top: 14px; margin-left: 20px">
					                            	<div class="row align-items-center" >
											    		<img src="<c:url value='/views/web/img/products/${prod.anh}'/>" class="myImage" style="height: 250px ;width: 250px;"/>
											    		<c:set var = "myImage" value ="${prod.anh}" scope="session"/>
											    	</div>
				                           		</div>
				                            </c:if>	  
				                        </div>
									</div>
									
									<br>
									
									<div style="margin-left: 30%; margin-top: 20px">
										<c:choose>
										<c:when test="${disabled == 'disabled'}"><button type="submit" class="btn btn-success" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/ProductCreate" disabled>Add</button></c:when>
										<c:otherwise><button type="submit" class="btn btn-success" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/ProductCreate">Add</button></c:otherwise>
										</c:choose>
										<button type="submit" class="btn btn-warning" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/ProductUpdate">Update</button>
										<button type="submit" class="btn btn-danger" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/ProductDelete">Delete</button>
										<button type="submit" class="btn btn-inverse" style="width: 80px;" formaction="${pageContext.request.contextPath}/Admin/ProductReset">Reset</button>
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
									<strong>Danh sách sản phẩm</strong>

								</p>
								<table class="table table-striped">
								  <thead>
									<tr>
									  <th>STT</th>
									  <th>ID</th>
									  <th>Ảnh</th>
									  <th>Tên sản phẩm</th>
									  <th>Màu sắc</th>
									  <th>Nhãn hiệu</th>
									  <th>Danh mục</th>
									  <th>Loại</th>
									  <th>Giá</th>
									  <th>Số lượng</th>
									  <th>Trạng thái</th>
									</tr>
								  </thead>
								  <tbody>
								  	<c:set var="count" value="${0}" scope="request"/>					  	
								  	<c:forEach var="item" items="${products}">
		  							<c:set var="count" value="${count+1}" scope="request"/>
									<tr>
									  <td scope="row"><c:out value="${requestScope.count}"/></td>
									  <td>${item.id_SP}</td>
									  <td><img src="<c:url value='/views/web/img/products/${item.anh}'/>" style="width: 50px; height: 50px;"></td>
									  <td>${item.tenSP}</td>
									  <td>${item.mauSac}</td>
									  <td>${item.tenNhanHieu}</td>
									  <td>${item.id_DM}</td>
									  <td>${item.loai}</td>
									  <td><fmt:formatNumber type="number" maxFractionDigits="3" value='${item.gia*1000}' /><span>đ</span></td>
									  <td>${item.slTonKho}</td>
									  <td>${item.trangThai?'Còn hàng':'Hết hàng'}</td>
									  <td>
									  	<a href="${pageContext.request.contextPath}/Admin/ProductEdit?id_SP=${item.id_SP}">Edit</a> | 
		      							<a href="${pageContext.request.contextPath}/Admin/ProductDelete?id_SP=${item.id_SP}">Remove</a>
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