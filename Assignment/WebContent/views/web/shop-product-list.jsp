<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
  <title>Nam | H&amp;N</title>

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
    <!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="${pageContext.request.contextPath}/index"><img src="<c:url value='/views/web/img/logos/shop-logo.png'/>" alt="Metronic Shop UI"></a>
		
        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN CART -->
        <div class="top-cart-block">
          <div class="top-cart-info">
            <a href="javascript:void(0);" class="top-cart-info-count">3 sản phẩm</a>
            <a href="javascript:void(0);" class="top-cart-info-value">1260đ</a>
          </div>
          <i class="fa fa-shopping-cart"></i>
                        
          <div class="top-cart-content-wrapper">
            <div class="top-cart-content">
              <ul class="scroller" style="height: 250px;">
                <li>
                  <a href="<c:url value='/views/web/shop-item.jsp'/>"><img src="<c:url value='/views/web/img/cart-img.jpg'/>" alt="Rolex Classic Watch" width="37" height="34"></a>
                  <span class="cart-content-count">x 1</span>
                  <strong><a href="<c:url value='/views/web/shop-item.jsp'/>">Rolex Classic Watch</a></strong>
                  <em>630.000đ</em>
                  <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                </li>
                <!-- <li>
                  <a href="shop-item.jsp"><img src="img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                  <span class="cart-content-count">x 1</span>
                  <strong><a href="shop-item.jsp">Rolex Classic Watch</a></strong>
                  <em>630.000đ</em>
                  <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                </li>
                <li>
                  <a href="shop-item.jsp"><img src="img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                  <span class="cart-content-count">x 1</span>
                  <strong><a href="shop-item.jsp">Rolex Classic Watch</a></strong>
                  <em>630.000đ</em>
                  <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                </li> -->
              </ul>
              <div class="text-right">          
                <a href="<c:url value='/views/web/shop-shopping-cart.jsp'/>" class="btn btn-default">Xem giỏ</a>
                <a href="<c:url value='/views/web/shop-checkout.jsp'/>" class="btn btn-primary">Thanh toán</a>
              </div>
            </div>
          </div>            
        </div>
        <!--END CART -->

        <!-- BEGIN NAVIGATION -->
        <div class="header-navigation">
          <ul>
            <li class="dropdown dropdown-megamenu">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                Nam
                
              </a>
              <ul class="dropdown-menu">
                <li>
                  <div class="header-navigation-content">
                    <div class="row">
                      <div class="col-md-4 header-navigation-col">
                        <h4>Giày</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sneaker</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày bóng rổ</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Boots</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày lười</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày đá banh</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Golf Shoes</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày cổ cao</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Dép</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Quần áo</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo hoodie</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo khoát</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo phông</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo polo</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo sơ mi</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Quần short</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Quần jogger</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Quần jeans</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Phụ kiện</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Thắt lưng</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Nón lưỡi trai</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Găng tay</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Vớ</a></li>
                        </ul>

                        <h4>Sản phẩm</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sản phẩm mới</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sản phẩm đang sale</a></li>
                        </ul>
                      </div>
                      <div class="col-md-12 nav-brands">
                        <%@include file="common/brands.jsp"%>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            <li class="dropdown dropdown-megamenu">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                Nữ
                
              </a>
              <ul class="dropdown-menu">
                <li>
                  <div class="header-navigation-content">
                    <div class="row">
                      <div class="col-md-4 header-navigation-col">
                        <h4>Giày</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sneaker</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày cao gót</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày búp bê và mọi</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Oxford & boot</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày đá banh</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sandal</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày cổ cao</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Dép</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Quần áo</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo hoodie</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo khoát</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo phông</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo polo</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo sơ mi</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Quần short</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Quần jogger</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Quần jeans</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Phụ kiện</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Túi xách</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Nước hoa</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Son môi</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Găng tay</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Vớ</a></li>                          
                        </ul>

                        <h4>Sản phẩm</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sản phẩm mới</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sản phẩm đang sale</a></li>
                        </ul>
                      </div>
                      <div class="col-md-12 nav-brands">
                        <%@include file="common/brands.jsp"%>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            <li class="dropdown dropdown-megamenu">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="javascript:;">
                Trẻ em
                
              </a>
              <ul class="dropdown-menu">
                <li>
                  <div class="header-navigation-content">
                    <div class="row">
                      <div class="col-md-4 header-navigation-col">
                        <h4>Giày</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sneaker</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày bóng rổ</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Boots</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày lười</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày đá banh</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Golf Shoes</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Giày cổ cao</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Dép</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Quần áo</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo hoodie</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo khoát</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo phông</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo polo</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Áo sơ mi</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Quần short</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Quần jogger</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Quần jeans</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Phụ kiện</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Thắt lưng</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Nón lưỡi trai</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Găng tay</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Vớ</a></li>
                        </ul>

                        <h4>Sản phẩm</h4>
                        <ul>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sản phẩm mới</a></li>
                          <li><a href="<c:url value='/views/web/shop-product-list.jsp'/>">Sản phẩm đang sale</a></li>
                        </ul>
                      </div>
                      <div class="col-md-12 nav-brands">
                        <%@include file="common/brands.jsp"%>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            <li><a href="<c:url value='/views/web/shop-about.jsp'/>">GIỚI THIỆU</a></li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="shop-login.jsp">
                TÀI KHOẢN
                
              </a>
                
              <ul class="dropdown-menu">
                <li><a href="<c:url value='/views/web/shop-login.jsp'/>">Đăng nhập</a></li>
                <li><a href="<c:url value='/views/web/shop-account.jsp'/>">Thông tin tài khoản</a></li>
                <li><a href="<c:url value='/views/web/shop-sign-up.jsp'/>">Đăng ký</a></li>
              </ul>
            </li>
            
            
            <!-- BEGIN TOP SEARCH -->
            <li class="menu-search">
              <span class="sep"></span>
              <i class="fa fa-search search-btn"></i>
              <div class="search-box">
                <form action="#">
                  <div class="input-group">
                    <input type="text" placeholder="Tìm kiếm" class="form-control">
                    <span class="input-group-btn">
                      <button class="btn btn-primary" type="submit">Tìm</button>
                    </span>
                  </div>
                </form>
              </div> 
            </li>
            <!-- END TOP SEARCH -->
          </ul>
        </div>
        <!-- END NAVIGATION -->
      </div>
    </div>
    <!-- Header END -->

    <div class="title-wrapper">
      <div class="container"><div class="container-inner">
        <h1><span>MEN</span> CATEGORY</h1>
        <em>Over 4000 Items are available here</em>
      </div></div>
    </div>

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="shop-index.jsp">Trang chủ</a></li>
            <li class="active">Nam</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-5">
            <ul class="list-group margin-bottom-25 sidebar-menu">
            	<c:forEach var="category" items="${listCategory}">
					<li><a href="<c:url value='/sanpham?maDM=${category.madm}'/>">${category.tendanhmuc}</a></li>
				</c:forEach>
            
            
              <!-- <li class="list-group-item clearfix"><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Ladies</a></li>
              <li class="list-group-item clearfix dropdown active">
                <a href="javascript:void(0);" class="collapsed">
                  <i class="fa fa-angle-right"></i>
                  Mens
                  
                </a>
                <ul class="dropdown-menu" style="display:block;">
                  <li class="list-group-item dropdown clearfix active">
                    <a href="javascript:void(0);" class="collapsed"><i class="fa fa-angle-right"></i> Shoes </a>
                      <ul class="dropdown-menu" style="display:block;">
                        <li class="list-group-item dropdown clearfix">
                          <a href="javascript:void(0);"><i class="fa fa-angle-right"></i> Classic </a>
                          <ul class="dropdown-menu">
                            <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Classic 1</a></li>
                            <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Classic 2</a></li>
                          </ul>
                        </li>
                        <li class="list-group-item dropdown clearfix active">
                          <a href="javascript:void(0);" class="collapsed"><i class="fa fa-angle-right"></i> Sport  </a>
                          <ul class="dropdown-menu" style="display:block;">
                            <li class="active"><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Sport 1</a></li>
                            <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Sport 2</a></li>
                          </ul>
                        </li>
                      </ul>
                  </li>
                  <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Trainers</a></li>
                  <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Jeans</a></li>
                  <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Chinos</a></li>
                  <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> T-Shirts</a></li>
                </ul>
              </li>
              <li class="list-group-item clearfix"><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Kids</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Accessories</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Sports</a></li>
              <li class="list-group-item clearfix"><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Brands</a></li> -->
            </ul>

            <div class="sidebar-filter margin-bottom-25">
              <h2>Filter</h2>
              <h3>Sản phẩm</h3>
              <div class="checkbox-list">
                <label><input type="checkbox"> New (3)</label>
                <label><input type="checkbox"> Sale (26)</label>
              </div>

              <h3>Price</h3>
              <p>
                <label for="amount">Range:</label>
                <input type="text" id="amount" style="border:0; color:#f6931f; font-weight:bold;">
              </p>
              <div id="slider-range"></div>
            </div>

            <div class="sidebar-products clearfix">
              <h2>Bestsellers</h2>
              <div class="item">
                <a href="shop-item.jsp"><img src="img/products/k1.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="shop-item.jsp">Some Shoes in Animal with Cut Out</a></h3>
                <div class="price">$31.00</div>
              </div>
              <div class="item">
                <a href="shop-item.jsp"><img src="img/products/k4.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="shop-item.jsp">Some Shoes in Animal with Cut Out</a></h3>
                <div class="price">$23.00</div>
              </div>
              <div class="item">
                <a href="shop-item.jsp"><img src="img/products/k3.jpg" alt="Some Shoes in Animal with Cut Out"></a>
                <h3><a href="shop-item.jsp">Some Shoes in Animal with Cut Out</a></h3>
                <div class="price">$86.00</div>
              </div>
            </div>
          </div>
          <!-- END SIDEBAR -->
          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <div class="row list-view-sorting clearfix">
              <div class="col-md-2 col-sm-2 list-view">
                <a href="javascript:;"><i class="fa fa-th-large"></i></a>
                <a href="javascript:;"><i class="fa fa-th-list"></i></a>
              </div>
              <div class="col-md-10 col-sm-10">
                <div class="pull-right">
                  <label class="control-label">Show:</label>
                  <select class="form-control input-sm">
                    <option value="#?limit=24" selected="selected">24</option>
                    <option value="#?limit=25">25</option>
                    <option value="#?limit=50">50</option>
                    <option value="#?limit=75">75</option>
                    <option value="#?limit=100">100</option>
                  </select>
                </div>
                <div class="pull-right">
                  <label class="control-label">Sort&nbsp;By:</label>
                  <select class="form-control input-sm">
                    <option value="#?sort=p.sort_order&amp;order=ASC" selected="selected">Default</option>
                    <option value="#?sort=pd.name&amp;order=ASC">Name (A - Z)</option>
                    <option value="#?sort=pd.name&amp;order=DESC">Name (Z - A)</option>
                    <option value="#?sort=p.price&amp;order=ASC">Price (Low &gt; High)</option>
                    <option value="#?sort=p.price&amp;order=DESC">Price (High &gt; Low)</option>
                    <option value="#?sort=rating&amp;order=DESC">Rating (Highest)</option>
                    <option value="#?sort=rating&amp;order=ASC">Rating (Lowest)</option>
                    <option value="#?sort=p.model&amp;order=ASC">Model (A - Z)</option>
                    <option value="#?sort=p.model&amp;order=DESC">Model (Z - A)</option>
                  </select>
                </div>
              </div>
            </div>
            <!-- BEGIN PRODUCT LIST -->
            <div class="row product-list">
              <!-- PRODUCT ITEM START -->
              1
              <c:forEach var="product" items="${listProduct}">
	              <div class="col-md-4 col-sm-6 col-xs-12">
	                <div class="product-item">
	                  <div class="pi-img-wrapper">
	                  <c:url value=""></c:url>
	                    <img src="img/products/Jordan-Flight-Heritage.jpg" class="img-responsive" alt="Berry Lace Dress">
	                    <div>
	                      <a href="img/products/Jordan-Flight-Heritage.jpg" class="btn btn-default fancybox-button">Zoom</a>
	                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
	                    </div>
	                  </div>
	                  <h3><a href="shop-item.jsp">Berry Lace Dress Berry Lace Dress</a></h3>
	                  <div class="pi-price">$29.00</div>
	                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
	                </div>
	              </div>
	          </c:forEach> 
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <!-- <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/Men's-Basketball-T-Shirt-Black.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="img/products/Men's-Basketball-T-Shirt-Black.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div> -->
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <!-- <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/Men's-Basketball-T-Shirt-White.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="img/products/Men's-Basketball-T-Shirt-White.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress 2</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>   -->            
              <!-- PRODUCT ITEM END -->
            </div>
             <div class="row product-list">
              <!-- PRODUCT ITEM START -->
              <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/Nike-Sportswear-Black.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a href="img/products/Nike-Sportswear-Black.jpg" class="btn btn-default fancybox-button">Zoom</a>
                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div> 
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <!-- <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/Nike-Dri-FIT-Sport-Clash-Black.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a href="img/products/Nike-Dri-FIT-Sport-Clash-Black.jpg" class="btn btn-default fancybox-button">Zoom</a>
                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                  <div class="sticker sticker-new"></div>
                </div>
              </div> -->
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <!-- <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/Jordan-Flight-Heritage-1.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a href="img/products/Jordan-Flight-Heritage-1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>    -->           
              <!-- PRODUCT ITEM END -->
            </div>
            <div class="row product-list">
              <!-- PRODUCT ITEM START -->
              <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/Men's-Basketball-T-Shirt-Black.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a href="img/products/Men's-Basketball-T-Shirt-Black.jpg" class="btn btn-default fancybox-button">Zoom</a>
                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <!-- <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/Jordan-Flight-Heritage.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a href="img/products/Jordan-Flight-Heritage.jpg" class="btn btn-default fancybox-button">Zoom</a>
                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div> -->
              <!-- PRODUCT ITEM END -->
              <!-- PRODUCT ITEM START -->
              <!-- <div class="col-md-4 col-sm-6 col-xs-12">
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/Nike-Dri-FIT-Sport-Clash-Black.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                        <a href="img/products/Nike-Dri-FIT-Sport-Clash-Black.jpg" class="btn btn-default fancybox-button">Zoom</a>
                        <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                  <div class="sticker sticker-sale"></div>
                </div>
              </div> -->
              <!-- PRODUCT ITEM END -->
            </div>
            <!-- END PRODUCT LIST -->
            <!-- BEGIN PAGINATOR -->
            <div class="row">
              <div class="col-md-4 col-sm-4 items-info">Items 1 to 9 of 10 total</div>
              <div class="col-md-8 col-sm-8">
                <ul class="pagination pull-right">
                  <li><a href="javascript:;">&laquo;</a></li>
                  <li><span>1</span></li>
                  <li><a href="javascript:;">2</a></li>
                  <li><a href="javascript:;">3</a></li>
                  <li><a href="javascript:;">4</a></li>
                  <li><a href="javascript:;">5</a></li>
                  <li><a href="javascript:;">&raquo;</a></li>
                </ul>
              </div>
            </div>
            <!-- END PAGINATOR -->
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>

    <%@include file="common/footer.jsp"%>

    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->  
    
    <%@include file="common/foot.jsp"%>
    
    <script src="<c:url value='/views/web/assets/plugins/uniform/jquery.uniform.min.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/views/web/assets/plugins/rateit/src/jquery.rateit.js'/>" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
            Layout.initSliderRange();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>