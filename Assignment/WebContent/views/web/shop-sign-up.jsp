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
  <title>Đăng ký | H&amp;N</title>

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
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Sneaker</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày bóng rổ</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Boots</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày lười</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày đá banh</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Golf Shoes</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày cổ cao</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Dep'/>">Dép</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Quần áo</h4>
                        <ul>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo hoodie</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo khoát</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo phông</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo polo</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo sơ mi</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Quan'/>">Quần short</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Quan'/>">Quần jogger</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Quan'/>">Quần jeans</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Phụ kiện</h4>
                        <ul>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Thắt lưng</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Nón lưỡi trai</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Găng tay</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Vớ</a></li>
                        </ul>

                        <h4>Sản phẩm</h4>
                        <ul>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Sản phẩm mới</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Sản phẩm đang sale</a></li>
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
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Sneaker</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày cao gót</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày búp bê và mọi</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Oxford & boot</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày đá banh</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Sandal</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày cổ cao</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Dep'/>">Dép</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Quần áo</h4>
                        <ul>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo hoodie</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo khoát</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo phông</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo polo</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo sơ mi</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Quan'/>">Quần short</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Quan'/>">Quần jogger</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Quan'/>">Quần jeans</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Phụ kiện</h4>
                        <ul>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Túi xách</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Nước hoa</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Son môi</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Găng tay</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Vớ</a></li>                          
                        </ul>

                        <h4>Sản phẩm</h4>
                        <ul>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Sản phẩm mới</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Sản phẩm đang sale</a></li>
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
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Sneaker</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày bóng rổ</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Boots</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày lười</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày đá banh</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Golf Shoes</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Giày cổ cao</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Dep'/>">Dép</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Quần áo</h4>
                        <ul>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo hoodie</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo khoát</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo phông</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo polo</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Áo sơ mi</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Quan'/>">Quần short</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Quan'/>">Quần jogger</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Quan'/>">Quần jeans</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Phụ kiện</h4>
                        <ul>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Thắt lưng</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Nón lưỡi trai</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Găng tay</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=PhuKien'/>">Vớ</a></li>
                        </ul>

                        <h4>Sản phẩm</h4>
                        <ul>
                          <li><a href="<c:url value='/sanpham?id_DM=Giay'/>">Sản phẩm mới</a></li>
                          <li><a href="<c:url value='/sanpham?id_DM=Ao'/>">Sản phẩm đang sale</a></li>
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
                <c:choose>
                	<c:when test="${not empty sessionScope.user}">${sessionScope.user.tenTK}</c:when>
                	<c:otherwise>TÀI KHOẢN</c:otherwise>
                </c:choose>
                
              </a>
                
              <ul class="dropdown-menu">
              	<c:if test="${empty sessionScope.user}">
                	<li><a href="${pageContext.request.contextPath}/sign-in">Đăng nhập</a></li>
                </c:if>
                
                <c:if test="${not empty sessionScope.user}">
                	<li><a href="<c:url value='/views/web/shop-account.jsp'/>">Thông tin tài khoản</a></li>
                </c:if>
                
                <c:choose>
                	<c:when test="${not empty sessionScope.user}"><li><a href="${pageContext.request.contextPath}/sign-out">Đăng xuất</a></li></c:when>
                	<c:otherwise><li class="active" ><a href="<c:url value='/views/web/shop-sign-up.jsp'/>">Đăng ký</a></li></c:otherwise>
                </c:choose>
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
        <h1><span>WELCOME,</span> MY FRIEND</h1>
        <em>Over 4000 Items are available here</em>
      </div></div>
    </div>
    
    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.jsp">Trang chủ</a></li>
            <li class="active">Đăng ký</li>
        </ul>
        
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN SIDEBAR -->
          <div class="sidebar col-md-3 col-sm-3">
            <ul class="list-group margin-bottom-25 sidebar-menu">
              <li class="list-group-item clearfix"><a href="shop-account.jsp"><i class="fa fa-angle-right"></i> Thông tin tài khoản</a></li>
              <li class="list-group-item clearfix"><a href="shop-sign-up.jsp"><i class="fa fa-angle-right"></i> Chỉnh sửa thông tin</a></li>
              <li class="list-group-item clearfix"><a href="shop-shopping-cart.jsp"><i class="fa fa-angle-right"></i> Giỏ hàng</a></li>
              <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Lịch sử mua hàng</a></li>
              <li class="list-group-item clearfix"><a href="#"><i class="fa fa-angle-right"></i> Thẻ giảm giá</a></li>
            </ul>
          </div>
          <!-- END SIDEBAR -->

          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-7">
            <h1>Thông tin đăng ký</h1>
            <div class="content-form-page">
              <form role="form" class="form-horizontal form-without-legend">
                <div class="form-group">
                  <label class="col-lg-2 control-label" for="username">Tài khoản <span class="require">*</span></label>
                  <div class="col-lg-8">
                    <input type="text" id="username" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 control-label" for="password">Mật khẩu <span class="require">*</span></label>
                  <div class="col-lg-8">
                    <input type="text" id="password" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 control-label" for="first-name">Họ và tên <span class="require">*</span></label>
                  <div class="col-lg-8">
                    <input type="text" id="first-name" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 control-label" for="telephone">Số điện thoại <span class="require">*</span></label>
                  <div class="col-lg-8">
                    <input type="text" id="telephone" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 control-label" for="email">E-Mail </label>
                  <div class="col-lg-8">
                    <input type="text" id="email" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 control-label" for="address">Địa chỉ <span class="require">*</span></label>
                  <div class="col-lg-8">
                    <input type="text" id="address" class="form-control">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-md-2 control-label" for="region-state-dd">Tỉnh thành <span class="require">*</span></label>
                  <div class="col-md-8">
                    <select class="form-control" id="region-state-dd">
                      <option value=""> --- Vui lòng chọn --- </option>
                      <option value="hcm">HỒ CHÍ MINH</option>
                      <option value="cantho">CẦN THƠ</option>
                      <option value="danang">ĐÀ NẴNG</option>
                      <option value="hanoi">HÀ NỘI</option>
                    </select>
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-lg-2 control-label">Nghề nghiệp <span class="require">*</span></label>
                  <div class="col-lg-8 radio-list">
                    <label>
                      <input type="radio" name="CashOnDelivery" value="CashOnDelivery"> Học sinh/sinh viên
                    </label>
                    <label>
                      <input type="radio" name="CashOnDelivery" value="CashOnDelivery"> Đi làm
                    </label>
                    <label>
                      <input type="radio" name="CashOnDelivery" value="CashOnDelivery"> Khác
                    </label>
                  </div>
                </div>
                <div class="checkbox pull-left" style="margin-left: 15.5%;">
                  <label>
                    <input type="checkbox"> Tôi đã đọc và đồng ý các điều khoản trên <a title="Terms & Conditions" href="javascript:;">Điều khoản & Điều kiện </a> &nbsp;&nbsp;&nbsp; 
                  </label>
                </div> 
                <div class="row">
                  <div class="col-lg-8 col-md-offset-2 padding-left-0 padding-top-20">
                    <button class="btn btn-primary" type="submit">Đăng ký</button>
                  </div>
                </div>
              </form>
            </div>
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
    
    <%@include file="common/footer.jsp"%>
    
    <script src="<c:url value='/views/web/assets/plugins/uniform/jquery.uniform.min.js'/>" type="text/javascript"></script>
    
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