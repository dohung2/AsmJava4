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
  <title>H&amp;N</title>

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
  <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:200,300,400,600,700,900&amp;subset=all" rel="stylesheet" type="text/css"><!--- fonts for slider on the index page -->  
  <!-- Fonts END -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
  <%@include file="common/head.jsp"%>

</head>
<!-- Head END -->

<!-- Body BEGIN -->
<body class="ecommerce">

    <%@include file="common/header.jsp"%>

    <div class="main">
      <div class="container">
        <!-- BEGIN SALE PRODUCT & NEW ARRIVALS -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SALE PRODUCT -->
          <div class="col-md-12 sale-product">
            <h2>Danh sách sản phẩm</h2>
            <div class="owl-carousel owl-carousel5">
            
	            <c:forEach var="product" items="${listProduct}">
	            
	              <div>
	                <div class="product-item">
 	                    <div class="pi-img-wrapper">
	                      <img src="<c:url value='/views/web/img/products/${product.anh}'/>" class="img-responsive" alt="Berry Lace Dress">
	                      <div>
	                        <a href="<c:url value='/views/web/img/products/${product.anh}'/>" class="btn btn-default fancybox-button">Zoom</a>
	                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
	                      </div>
	                    </div>
	                    
	                    <h3><a href="<c:url value='/sanpham?maSP=${product.id_SP}'/>">${product.tenSP}</a></h3>
	                    <div class="pi-price">
	                    	<fmt:formatNumber type="number" maxFractionDigits="3" value="${product.gia*1000}" /><span>đ</span>
	                    </div>
	                    <a href="javascript:;" class="btn btn-default add2cart">Thêm vào giỏ</a>
	            	</div>
            	  </div>
	           
	           </c:forEach>
	            
            </div>
          </div>
          <!-- END SALE PRODUCT -->
        </div>
        <!-- END SALE PRODUCT & NEW ARRIVALS -->

        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40 ">
          <!-- BEGIN SIDEBAR -->
          
          	<%@include file="common/category.jsp"%>
          	
          <!-- END SIDEBAR -->
          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-8">
            <h2>Nhiều người mua</h2>
            <div class="owl-carousel owl-carousel3">
            
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
	                    	<fmt:formatNumber type="number" maxFractionDigits="3" value="${product.gia*1000}" /><span>đ</span>
	                    </div>
	                    <a href="javascript:;" class="btn btn-default add2cart">Thêm vào giỏ</a>
	            	</div>
            	  </div>
            	  
	           </c:forEach>
	           
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN TWO PRODUCTS & PROMO -->
        <div class="row margin-bottom-35 ">
          <!-- BEGIN TWO PRODUCTS -->
          <div class="col-md-6 two-items-bottom-items">
            <h2>Sales</h2>
            <div class="owl-carousel owl-carousel2">
            
              <c:forEach var="product" items="${listProductSales}">
	            
	              <div>
	                <div class="product-item">
 	                    <div class="pi-img-wrapper">
	                      <img src="<c:url value='/views/web/img/products/${product.anh}'/>" class="img-responsive" alt="Berry Lace Dress">
	                      <div>
	                        <a href="<c:url value='/views/web/img/products/${product.anh}'/>" class="btn btn-default fancybox-button">Zoom</a>
	                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
	                      </div>
	                    </div>
	                    
	                    <h3><a href="<c:url value='/sanpham?maSP=${product.id_SP}'/>">${product.tenSP}</a></h3>
	                    <div class="pi-price">
	                    	<fmt:formatNumber type="number" maxFractionDigits="3" value="${product.gia*1000}" /><span>đ</span>
	                    </div>
	                    <a href="javascript:;" class="btn btn-default add2cart">Thêm vào giỏ</a>
	                    <div class="sticker sticker-sale"></div>
	            	</div>
            	  </div>		
            	  
	           </c:forEach>
	           
            </div>
          </div>
          <!-- END TWO PRODUCTS -->
          <!-- BEGIN PROMO -->
          <div class="col-md-6 shop-index-carousel">
            <div class="content-slider">
              <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item active">
                    <img src="<c:url value='/views/web/img/index-sliders/slide1.jpg'/>" class="img-responsive" alt="Berry Lace Dress">
                  </div>
                  <div class="item">
                    <img src="<c:url value='/views/web/img/index-sliders/slide2.jpg'/>" class="img-responsive" alt="Berry Lace Dress">
                  </div>
                  <div class="item">
                    <img src="<c:url value='/views/web/img/index-sliders/slide3.jpg'/>" class="img-responsive" alt="Berry Lace Dress">
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- END PROMO -->
        </div>        
        <!-- END TWO PRODUCTS & PROMO -->
      </div>
    </div>

    <%@include file="common/footer.jsp"%>

    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->

    <%@include file="common/foot.jsp"%>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initTwitter();
            
            Layout.initFixHeaderWithPreHeader();
            Layout.initNavScrolling();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>