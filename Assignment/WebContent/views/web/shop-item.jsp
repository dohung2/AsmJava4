<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<!--
Template: Metronic Frontend Freebie - Responsive HTML Template Based On Twitter Bootstrap 3.3.4
Version: 1.0.0
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Follow: www.twitter.com/keenthemes
Like: www.facebook.com/keenthemes
Purchase Premium Metronic Admin Theme: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->

<!-- Head BEGIN -->
<head>
  <meta charset="utf-8">
  <title>${product.tenSP} | H&amp;N</title>

  <meta content="width=device-width, initial-scale=1.0" name="viewport">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

  <meta content="Metronic Shop UI description" name="description">
  <meta content="Metronic Shop UI keywords" name="keywords">
  <meta content="keenthemes" name="author">

  <meta property="og:site_name" content="-CUSTOMER VALUE-">
  <meta property="og:title" content="-CUSTOMER VALUE-">
  <meta property="og:description" content="-CUSTOMER VALUE-">
  <meta property="og:type" content="website">
  <meta property="og:image" content="-CUSTOMER VALUE-"><!-- link to image for socio -->
  <meta property="og:url" content="-CUSTOMER VALUE-">

  <link rel="shortcut icon" href="favicon.ico">

  <!-- Fonts START -->
  <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|PT+Sans+Narrow|Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"> 
  <!-- Fonts END -->

  <%@include file="common/head.jsp"%>
  
</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">

    <%@include file="common/header.jsp"%>
    
    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="shop-index.jsp">Trang chủ</a></li>
            <li><a href="shop-product-list.jsp">Nam</a></li>
            <li class="active">Cool green dress with red bell</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          
          	<%@include file="common/category.jsp"%>
          
          <!-- END SIDEBAR -->

          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <div class="product-page">
              <div class="row">
                <div class="col-md-6 col-sm-6">
                  <div class="product-main-image">
                  <%-- <c:url value='/views/web/img/products/${product.anh}'/> --%>
                    <img src="<c:url value='/views/web/img/products/${product.anh}'/>" alt="Cool green dress with red bell" class="img-responsive" data-BigImgsrc="<c:url value='/views/web/img/products/${product.anh}'/>">
                  </div>
                  <!-- <div class="product-other-images">
                    <a href="img/products/Jordan-Flight-Heritage-1.jpg" class="fancybox-button" rel="photos-lib"><img alt="Berry Lace Dress" src="img/products/Jordan-Flight-Heritage-1.jpg"></a>
                    <a href="img/products/Jordan-Flight-Heritage-2.jpg" class="fancybox-button" rel="photos-lib"><img alt="Berry Lace Dress" src="img/products/Jordan-Flight-Heritage-2.jpg"></a>
                  </div> -->
                </div>
                <div class="col-md-6 col-sm-6">
                  <h1>${product.tenSP}</h1>
                  <div class="price-availability-block clearfix">
                    <div class="price">   
                      <strong><fmt:formatNumber type="number" maxFractionDigits="3" value="${product.gia}" /><span>đ</span></strong>
                      <%-- <em><span><fmt:formatNumber type="number" maxFractionDigits="3" value="${product.gia}" /></span>đ</em> --%>
                    </div>
                    <div class="availability">
                      Trạng thái: 
                      <strong>
                      	<c:choose>
                      		<c:when test="${product.trangThai}">Còn hàng</c:when>
                      		<c:when test="${!product.trangThai}">Hết hàng</c:when>
                      	</c:choose>
                      </strong>
                    </div>
                  </div>
                  <div class="description">
                    <p>
                    	<c:choose>
                      		<c:when test="${empty product.moTa}">Thông tin sẽ được cập nhật trong thời gian tới. Xin lỗi vì sự bất tiện này</c:when>
                      		<c:otherwise>${product.moTa}</c:otherwise>
                      	</c:choose>
                    </p>
                  </div>
                  <div class="product-page-options">
                    <div class="pull-left">
                      <label class="control-label">Size:</label>
                      <select class="form-control input-sm">
                        <option>S</option>
                        <option>M</option>
                        <option>L</option>
                      </select>
                    </div>
                    <div class="pull-left">
                      <label class="control-label">Color:</label>
                      <select class="form-control input-sm">
                        <option>Red</option>
                        <option>Blue</option>
                        <option>Black</option>
                      </select>
                    </div>
                  </div>
                  <div class="product-page-cart">
                    <div class="product-quantity">
                        <input id="product-quantity" type="text" value="1" readonly class="form-control input-sm">
                    </div>
                    <button class="btn btn-primary" type="submit">Thêm vào giỏ hàng</button>
                  </div>
                  <div class="review">
                    <input type="range" value="4" step="0.25" id="backing4">
                    <div class="rateit" data-rateit-backingfld="#backing4" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                    </div>
                    <a href="javascript:;">7 reviews</a>
                  </div>
                  <ul class="social-icons">
                    <li><a class="facebook" data-original-title="facebook" href="javascript:;"></a></li>
                    <li><a class="twitter" data-original-title="twitter" href="javascript:;"></a></li>
                    <li><a class="googleplus" data-original-title="googleplus" href="javascript:;"></a></li>
                    <li><a class="evernote" data-original-title="evernote" href="javascript:;"></a></li>
                    <li><a class="tumblr" data-original-title="tumblr" href="javascript:;"></a></li>
                  </ul>
                </div>

                <div class="product-page-content">
                  <ul id="myTab" class="nav nav-tabs">
                    <li><a href="#Description" data-toggle="tab">Mô tả</a></li>
                    <li><a href="#Information" data-toggle="tab">Thông tin</a></li>
                    <li class="active"><a href="#Reviews" data-toggle="tab">Đánh giá (2)</a></li>
                  </ul>
                  <div id="myTabContent" class="tab-content">
                    <div class="tab-pane fade" id="Description">
                      <p>
                      	<c:choose>
                      		<c:when test="${empty product.moTa}">Thông tin chi tiết sản phẩm này sẽ được shop cập nhật trong thời gian tới. Xin lỗi vì sự bất tiện này.</c:when>
                      		<c:otherwise>${product.moTa}</c:otherwise>
                      	</c:choose>
                      </p>
                    </div>
                    <div class="tab-pane fade" id="Information">
                      <table class="datasheet">
                        <tr>
                          <th colspan="2">Additional features</th>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">Thương hiệu</td>
                          <td>${product.tenNhanHieu}</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">Xuất xứ</td>
                          <td>Nước ngoài</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">Màu</td>
                          <td>${product.mauSac}</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">Chất liệu</td>
                          <td>Cotton</td>
                        </tr>
                        <tr>
                          <td class="datasheet-features-type">Số lượng tồn kho</td>
                          <td>${product.slTonKho}</td>
                        </tr>
                      </table>
                    </div>
                    <div class="tab-pane fade in active" id="Reviews">
                      <!--<p>There are no reviews for this product.</p>-->
                      <div class="review-item clearfix">
                        <div class="review-item-submitted">
                          <strong>Bob</strong>
                          <em>30/12/2013 - 07:37</em>
                          <div class="rateit" data-rateit-value="5" data-rateit-ispreset="true" data-rateit-readonly="true"></div>
                        </div>                                              
                        <div class="review-item-content">
                            <p>Sed velit quam, auctor id semper a, hendrerit eget justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor tempus feugiat id in orci. Phasellus sed erat leo. Donec luctus, justo eget ultricies tristique, enim mauris bibendum orci, a sodales lectus purus ut lorem.</p>
                        </div>
                      </div>
                      <div class="review-item clearfix">
                        <div class="review-item-submitted">
                          <strong>Mary</strong>
                          <em>13/12/2013 - 17:49</em>
                          <div class="rateit" data-rateit-value="2.5" data-rateit-ispreset="true" data-rateit-readonly="true"></div>
                        </div>                                              
                        <div class="review-item-content">
                            <p>Sed velit quam, auctor id semper a, hendrerit eget justo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vel arcu pulvinar dolor tempus feugiat id in orci. Phasellus sed erat leo. Donec luctus, justo eget ultricies tristique, enim mauris bibendum orci, a sodales lectus purus ut lorem.</p>
                        </div>
                      </div>

                      <!-- BEGIN FORM-->
                      <!-- <form action="#" class="reviews-form" role="form">
                        <h2>Write a review</h2>
                        <div class="form-group">
                          <label for="name">Name <span class="require">*</span></label>
                          <input type="text" class="form-control" id="name">
                        </div>
                        <div class="form-group">
                          <label for="email">Email</label>
                          <input type="text" class="form-control" id="email">
                        </div>
                        <div class="form-group">
                          <label for="review">Review <span class="require">*</span></label>
                          <textarea class="form-control" rows="8" id="review"></textarea>
                        </div>
                        <div class="form-group">
                          <label for="email">Rating</label>
                          <input type="range" value="4" step="0.25" id="backing5">
                          <div class="rateit" data-rateit-backingfld="#backing5" data-rateit-resetable="false"  data-rateit-ispreset="true" data-rateit-min="0" data-rateit-max="5">
                          </div>
                        </div>
                        <div class="padding-top-20">                  
                          <button type="submit" class="btn btn-primary">Send</button>
                        </div>
                      </form> -->
                      <!-- END FORM--> 
                    </div>
                  </div>
                </div>

                <!-- <div class="sticker sticker-sale"></div> -->
              </div>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN SIMILAR PRODUCTS -->
        <div class="row margin-bottom-40">
          <div class="col-md-12 col-sm-12">
            <h2>Most popular products</h2>
            <div class="owl-carousel owl-carousel4">
            
              <c:forEach var="product" items="${listProductPopular}">
	            
	              <div>
	                <div class="product-item">
	                  <%-- <c:url value='img/products/Jordan-Flight-Heritage.jpg'/> --%>
 	                    <div class="pi-img-wrapper">
	                      <img src="<c:url value='/views/web/img/products/${product.anh}'/>" class="img-responsive" alt="Berry Lace Dress">
	                      <div>
	                        <a href="<c:url value='/views/web/img/products/${product.anh}'/>" class="btn btn-default fancybox-button">Zoom</a>
	                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
	                      </div>
	                    </div>
	                    
	                    <h3><a href="<c:url value='/sanpham?maSP=${product.id_SP}'/>">${product.tenSP}</a></h3>
	                    <div class="pi-price">
	                    	<fmt:formatNumber type="number" maxFractionDigits="3" value="${product.gia}" />
	                    </div>
	                    <a href="javascript:;" class="btn btn-default add2cart">Thêm vào giỏ</a>
	                    <!-- <div class="sticker sticker-sale"></div> -->
	            	</div>
            	  </div>
            	  
	           </c:forEach>
              
            </div>
          </div>
        </div>
        <!-- END SIMILAR PRODUCTS -->
      </div>
    </div>

    <%@include file="common/footer.jsp"%>

    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->  
    
    <%@include file="common/foot.jsp"%>
    
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>