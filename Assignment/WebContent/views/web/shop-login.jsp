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
  <title>Đăng nhập | H&amp;N</title>

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
        <a class="site-logo" href="shop-index.jsp"><img src="img/logos/shop-logo.png" alt="Metronic Shop UI"></a>

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
                </li>
                <li>
                  <a href="shop-item.jsp"><img src="img/cart-img.jpg" alt="Rolex Classic Watch" width="37" height="34"></a>
                  <span class="cart-content-count">x 1</span>
                  <strong><a href="shop-item.jsp">Rolex Classic Watch</a></strong>
                  <em>630.000đ</em>
                  <a href="javascript:void(0);" class="del-goods">&nbsp;</a>
                </li>
              </ul>
              <div class="text-right">
                <a href="shop-shopping-cart.jsp" class="btn btn-default">Xem giỏ</a>
                <a href="shop-checkout.jsp" class="btn btn-primary">Thanh toán</a>
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
                          <li><a href="shop-product-list.jsp">Sneaker</a></li>
                          <li><a href="shop-product-list.jsp">Giày bóng rổ</a></li>
                          <li><a href="shop-product-list.jsp">Boots</a></li>
                          <li><a href="shop-product-list.jsp">Giày lười</a></li>
                          <li><a href="shop-product-list.jsp">Giày đá banh</a></li>
                          <li><a href="shop-product-list.jsp">Golf Shoes</a></li>
                          <li><a href="shop-product-list.jsp">Giày cổ cao</a></li>
                          <li><a href="shop-product-list.jsp">Dép</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Quần áo</h4>
                        <ul>
                          <li><a href="shop-product-list.jsp">Áo hoodie</a></li>
                          <li><a href="shop-product-list.jsp">Áo khoát</a></li>
                          <li><a href="shop-product-list.jsp">Áo phông</a></li>
                          <li><a href="shop-product-list.jsp">Áo polo</a></li>
                          <li><a href="shop-product-list.jsp">Áo sơ mi</a></li>
                          <li><a href="shop-product-list.jsp">Quần short</a></li>
                          <li><a href="shop-product-list.jsp">Quần jogger</a></li>
                          <li><a href="shop-product-list.jsp">Quần jeans</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Phụ kiện</h4>
                        <ul>
                          <li><a href="shop-product-list.jsp">Thắt lưng</a></li>
                          <li><a href="shop-product-list.jsp">Nón lưỡi trai</a></li>
                          <li><a href="shop-product-list.jsp">Găng tay</a></li>
                          <li><a href="shop-product-list.jsp">Vớ</a></li>
                        </ul>

                        <h4>Sản phẩm</h4>
                        <ul>
                          <li><a href="shop-product-list.jsp">Sản phẩm mới</a></li>
                          <li><a href="shop-product-list.jsp">Sản phẩm đang sale</a></li>
                        </ul>
                      </div>
                      <div class="col-md-12 nav-brands">
                        <ul>
                          <li><a href="shop-product-list.jsp"><img title="hermes" alt="hermes" src="img/brands/hoimet.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="nike" alt="nike" src="img/brands/nike.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="adidas" alt="adidas" src="img/brands/adidas.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="puma" alt="puma" src="img/brands/puma.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="dior" alt="dior" src="img/brands/dior.jpg"></a></li>
                        </ul>
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
                          <li><a href="shop-product-list.jsp">Sneaker</a></li>
                          <li><a href="shop-product-list.jsp">Giày cao gót</a></li>
                          <li><a href="shop-product-list.jsp">Giày búp bê và mọi</a></li>
                          <li><a href="shop-product-list.jsp">Oxford & boot</a></li>
                          <li><a href="shop-product-list.jsp">Giày đá banh</a></li>
                          <li><a href="shop-product-list.jsp">Sandal</a></li>
                          <li><a href="shop-product-list.jsp">Giày cổ cao</a></li>
                          <li><a href="shop-product-list.jsp">Dép</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Quần áo</h4>
                        <ul>
                          <li><a href="shop-product-list.jsp">Áo hoodie</a></li>
                          <li><a href="shop-product-list.jsp">Áo khoát</a></li>
                          <li><a href="shop-product-list.jsp">Áo phông</a></li>
                          <li><a href="shop-product-list.jsp">Áo polo</a></li>
                          <li><a href="shop-product-list.jsp">Áo sơ mi</a></li>
                          <li><a href="shop-product-list.jsp">Quần short</a></li>
                          <li><a href="shop-product-list.jsp">Quần jogger</a></li>
                          <li><a href="shop-product-list.jsp">Quần jeans</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Phụ kiện</h4>
                        <ul>
                          <li><a href="shop-product-list.jsp">Túi xách</a></li>
                          <li><a href="shop-product-list.jsp">Nước hoa</a></li>
                          <li><a href="shop-product-list.jsp">Son môi</a></li>
                          <li><a href="shop-product-list.jsp">Găng tay</a></li>
                          <li><a href="shop-product-list.jsp">Vớ</a></li>                          
                        </ul>

                        <h4>Sản phẩm</h4>
                        <ul>
                          <li><a href="shop-product-list.jsp">Sản phẩm mới</a></li>
                          <li><a href="shop-product-list.jsp">Sản phẩm đang sale</a></li>
                        </ul>
                      </div>
                      <div class="col-md-12 nav-brands">
                        <ul>
                          <li><a href="shop-product-list.jsp"><img title="hermes" alt="hermes" src="img/brands/hoimet.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="nike" alt="nike" src="img/brands/nike.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="adidas" alt="adidas" src="img/brands/adidas.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="puma" alt="puma" src="img/brands/puma.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="dior" alt="dior" src="img/brands/dior.jpg"></a></li>
                        </ul>
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
                          <li><a href="shop-product-list.jsp">Sneaker</a></li>
                          <li><a href="shop-product-list.jsp">Giày bóng rổ</a></li>
                          <li><a href="shop-product-list.jsp">Boots</a></li>
                          <li><a href="shop-product-list.jsp">Giày lười</a></li>
                          <li><a href="shop-product-list.jsp">Giày đá banh</a></li>
                          <li><a href="shop-product-list.jsp">Golf Shoes</a></li>
                          <li><a href="shop-product-list.jsp">Giày cổ cao</a></li>
                          <li><a href="shop-product-list.jsp">Dép</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Quần áo</h4>
                        <ul>
                          <li><a href="shop-product-list.jsp">Áo hoodie</a></li>
                          <li><a href="shop-product-list.jsp">Áo khoát</a></li>
                          <li><a href="shop-product-list.jsp">Áo phông</a></li>
                          <li><a href="shop-product-list.jsp">Áo polo</a></li>
                          <li><a href="shop-product-list.jsp">Áo sơ mi</a></li>
                          <li><a href="shop-product-list.jsp">Quần short</a></li>
                          <li><a href="shop-product-list.jsp">Quần jogger</a></li>
                          <li><a href="shop-product-list.jsp">Quần jeans</a></li>
                        </ul>
                      </div>
                      <div class="col-md-4 header-navigation-col">
                        <h4>Phụ kiện</h4>
                        <ul>
                          <li><a href="shop-product-list.jsp">Thắt lưng</a></li>
                          <li><a href="shop-product-list.jsp">Nón lưỡi trai</a></li>
                          <li><a href="shop-product-list.jsp">Găng tay</a></li>
                          <li><a href="shop-product-list.jsp">Vớ</a></li>
                        </ul>

                        <h4>Sản phẩm</h4>
                        <ul>
                          <li><a href="shop-product-list.jsp">Sản phẩm mới</a></li>
                          <li><a href="shop-product-list.jsp">Sản phẩm đang sale</a></li>
                        </ul>
                      </div>
                      <div class="col-md-12 nav-brands">
                        <ul>
                          <li><a href="shop-product-list.jsp"><img title="hermes" alt="hermes" src="img/brands/hoimet.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="nike" alt="nike" src="img/brands/nike.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="adidas" alt="adidas" src="img/brands/adidas.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="puma" alt="puma" src="img/brands/puma.jpg"></a></li>
                          <li><a href="shop-product-list.jsp"><img title="dior" alt="dior" src="img/brands/dior.jpg"></a></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </li>
              </ul>
            </li>
            <li><a href="shop-about.jsp">GIỚI THIỆU</a></li>
            <li class="dropdown">
              <a class="dropdown-toggle" data-toggle="dropdown" data-target="#" href="shop-login.jsp">
                TÀI KHOẢN
                
              </a>
                
              <ul class="dropdown-menu">
                <li class="active"><a href="shop-login.jsp">Đăng nhập</a></li>
                <li><a href="shop-account.jsp">Thông tin tài khoản</a></li>
                <li><a href="shop-sign-up.jsp">Đăng ký</a></li>
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

    <div class="main">
      <div class="container">
        <ul class="breadcrumb">
            <li><a href="index.jsp">Trang chủ</a></li>
            <li class="active">Đăng nhập</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>Tài khoản và mật khẩu</h1>
            <!-- BEGIN CHECKOUT PAGE -->
            <div class="panel-group checkout-page accordion scrollable" id="checkout-page">

              <!-- BEGIN CHECKOUT -->
              <div id="checkout" class="panel panel-default">
                <div class="panel-heading">
                  <h2 class="panel-title">
                    <a data-toggle="collapse" data-parent="#checkout-page"  class="accordion-toggle">
                      Đăng nhập
                    </a>
                  </h2>
                </div>
                <div id="checkout-content" class="panel-collapse collapse in">
                  <div class="panel-body row">
                    <div class="col-md-6 col-sm-6">
                      <img src="img/img2.jpg" alt="image-background" class="background-login">
                    </div>
                    <div class="col-md-6 col-sm-6">
                      <h3>TRỞ THÀNH KHÁCH HÀNG TIỀM NĂNG.</h3>
                      <p>Hãy đăng nhập để nhiều hưởng quyền lợi từ cửa hàng chúng tôi</p>
<!--                   
                      <form role="form" action="#">
                        <div class="form-group">
                          <label for="email-login">Tài khoản</label>
                          <input type="text" name="TenTK" class="form-control">
                        </div>
                        <div class="form-group">
                          <label for="password-login">Mật khẩu</label>
                          <input type="password" name="MatKhau" class="form-control">
                        </div>
                        Bạn đã có tài khoản chưa? Nếu chưa hãy bấm vào đây <a href="shop-sign-up.jsp">Đăng ký</a>
                        <div class="padding-top-20">                  
                          <button class="btn btn-primary" type="submit">Login</button>
                        </div>
                        <hr>
                        <div class="login-socio">
                          <p class="text-muted">hoặc đăng nhập bằng:</p>
                          <ul class="social-icons">
                            <li><a href="javascript:;" data-original-title="facebook" class="facebook" title="facebook"></a></li>
                            <li><a href="javascript:;" data-original-title="Twitter" class="twitter" title="Twitter"></a></li>
                            <li><a href="javascript:;" data-original-title="Google Plus" class="googleplus" title="Google Plus"></a></li>
                            <li><a href="javascript:;" data-original-title="Linkedin" class="linkedin" title="LinkedIn"></a></li>
                          </ul>
                        </div>
                      </form>
 -->     
                   
					  <h1 style="text-align: center;color: red;">${message}</h1>
                       <form action="#" method="POST" >
                        <div class="form-group">
                          <label for="email-login">Tài khoản</label>
                          <input id ="username" type="text" name="username" class="form-control">
                        </div>
                        <div class="form-group">
                          <label for="password-login">Mật khẩu</label>
                          <input id = "password" type="password" name="password" class="form-control">
                        </div>
                        Bạn đã có tài khoản chưa? Nếu chưa hãy bấm vào đây <a href="shop-sign-up.jsp">Đăng ký</a>
                        <div class="padding-top-20">                 
                        <button class="btn btn-primary" type="submit">Login</button> 
                        </div> 
                        <hr>
                        <div class="login-socio">
                          <p class="text-muted">hoặc đăng nhập bằng:</p>
                          <ul class="social-icons">
                            <li><a href="javascript:;" data-original-title="facebook" class="facebook" title="facebook"></a></li>
                            <li><a href="javascript:;" data-original-title="Twitter" class="twitter" title="Twitter"></a></li>
                            <li><a href="javascript:;" data-original-title="Google Plus" class="googleplus" title="Google Plus"></a></li>
                            <li><a href="javascript:;" data-original-title="Linkedin" class="linkedin" title="LinkedIn"></a></li>
                          </ul>
                        </div>
                      </form>
                      
                      
                    </div>
                  </div>
                </div>
              </div>
              <!-- END CHECKOUT -->
            </div>
            <!-- END CHECKOUT PAGE -->
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->
      </div>
    </div>

    <!-- BEGIN STEPS -->
    <div class="steps-block steps-block-red">
      <div class="container">
        <div class="row">
          <div class="col-md-4 steps-block-col">
            <i class="fa fa-truck"></i>
            <div>
              <h2>Free shipping</h2>
              <em>Miễn phí vận chuyển cho đơn hàng trên 1 triệu.</em>
            </div>
            <span>&nbsp;</span>
          </div>
          <div class="col-md-4 steps-block-col">
            <i class="fa fa-gift"></i>
            <div>
              <h2>Daily Gifts</h2>
              <em>Tặng quà hằng ngày cho những khách hàng may mắn</em>
            </div>
            <span>&nbsp;</span>
          </div>
          <div class="col-md-4 steps-block-col">
            <i class="fa fa-phone"></i>
            <div>
              <h2>1900 259 360</h2>
              <em>Dịch vụ chăm sóc khách hàng tận tình 24/7</em>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- END STEPS -->

    <!-- BEGIN PRE-FOOTER -->
    <div class="pre-footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN BOTTOM ABOUT BLOCK -->
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2>Giới thiệu</h2>
            <p>Thành lập vào tháng 5 năm 2022, với mô hình kinh doanh: Siêu thị thời trang hạnh phúc dành cho mọi người, mọi nhà, Super Shop mong muốn người tiêu dùng không chỉ được trải nghiệm sản phẩm chất lượng, không gian mua sắm ấm áp như ở nhà mà họ còn cảm thấy tự hào và hạnh phúc với sản phẩm thời trang đến từ một thương hiệu thuần Việt.</p>
          </div>
          <!-- END BOTTOM ABOUT BLOCK -->
          <!-- BEGIN BOTTOM INFO BLOCK -->
          <div class="col-md-6 col-sm-6 pre-footer-col">
            <h2>Địa chỉ</h2>
            <label for="">Chi nhánh 1:</label>
            <p>- 37 Đường Tôn Đức Thắng, Bến Nghé, Quận 1, Thành phố Hồ Chí Minh</p>
            <label for="">Chi nhánh 2:</label>
            <p>- 87 Đường Trần Duy Hưng, Trung Hòa Nhân Chính, Trung Hoà, Cầu Giấy, Hà Nội</p>
            <label for="">Chi nhánh 3:</label>
            <p>- 510 Tôn Đức Thắng, Hoà Minh, Liên Chiểu, Đà Nẵng</p>
          </div>
          <!-- END INFO BLOCK -->
          
          <!-- BEGIN BOTTOM CONTACTS -->
          <div class="col-md-3 col-sm-6 pre-footer-col">
            <h2>Liên hệ</h2>
            <address class="margin-bottom-40">
              Phone 1: 1900 259 360<br>
              Phone 2: 0333 444 556<br>
              Facebook: <a href="#">https://www.facebook.com/h&m</a><br>
              Email: <a href="#">h&m@gmail.com</a><br>
            </address>
          </div>
          <!-- END BOTTOM CONTACTS -->
        </div>
        <hr>
        <div class="row">
          <!-- BEGIN SOCIAL ICONS -->
          <div class="col-md-6 col-sm-6">
            <ul class="social-icons">
              <li><a class="facebook" data-original-title="facebook" href="javascript:;"></a></li>
              <li><a class="twitter" data-original-title="twitter" href="javascript:;"></a></li>
              <li><a class="googleplus" data-original-title="googleplus" href="javascript:;"></a></li>
              <li><a class="linkedin" data-original-title="linkedin" href="javascript:;"></a></li>
              <li><a class="youtube" data-original-title="youtube" href="javascript:;"></a></li>
              <li><a class="skype" data-original-title="skype" href="javascript:;"></a></li>
            </ul>
          </div>
          <!-- END SOCIAL ICONS -->
          <!-- BEGIN NEWLETTER -->
          <div class="col-md-6 col-sm-6">
            <h2 class="footer-title">Lựa chọn theo cách của bạn</h2>
          </div>
          <!-- END NEWLETTER -->
        </div>
      </div>
    </div>
    <!-- END PRE-FOOTER -->

    <!-- BEGIN FOOTER -->
    <div class="footer">
      <div class="container">
        <div class="row">
          <!-- BEGIN COPYRIGHT -->
          <div class="col-md-4 col-sm-4 padding-top-10">
            2022 © HungNgoc. ALL Rights Reserved. 
          </div>
          <!-- END COPYRIGHT -->
          <!-- BEGIN PAYMENTS -->
          <div class="col-md-4 col-sm-4">
            <ul class="list-unstyled list-inline pull-right">
              <li><img src="img/payments/western-union.jpg" alt="We accept Western Union" title="We accept Western Union"></li>
              <li><img src="img/payments/american-express.jpg" alt="We accept American Express" title="We accept American Express"></li>
              <li><img src="img/payments/MasterCard.jpg" alt="We accept MasterCard" title="We accept MasterCard"></li>
              <li><img src="img/payments/PayPal.jpg" alt="We accept PayPal" title="We accept PayPal"></li>
              <li><img src="img/payments/visa.jpg" alt="We accept Visa" title="We accept Visa"></li>
            </ul>
          </div>
          <!-- END PAYMENTS -->
          <!-- BEGIN POWERED -->
          <div class="col-md-4 col-sm-4 text-right">
            <p class="powered">Powered by: <a href="http://www.keenthemes.com/">KeenThemes.com</a></p>
          </div>
          <!-- END POWERED -->
        </div>
      </div>
    </div>
    <!-- END FOOTER -->

    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS(REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->
    <script src="assets/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-migrate.min.js" type="text/javascript"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>      
    <script src="js/back-to-top.js" type="text/javascript"></script>
    <script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->

    <!-- BEGIN PAGE LEVEL JAVASCRIPTS (REQUIRED ONLY FOR CURRENT PAGE) -->
    <script src="assets/plugins/fancybox/source/jquery.fancybox.pack.js" type="text/javascript"></script><!-- pop up -->
    <script src="assets/plugins/owl.carousel/owl.carousel.min.js" type="text/javascript"></script><!-- slider for products -->
    <script src='assets/plugins/zoom/jquery.zoom.min.js' type="text/javascript"></script><!-- product zoom -->
    <script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script><!-- Quantity -->
    <script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>

    <script src="js/layout.js" type="text/javascript"></script>
    <script src="js/checkout.js" type="text/javascript"></script>
    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
            Layout.initImageZoom();
            Layout.initTouchspin();
            Layout.initUniform();
            Checkout.init();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>