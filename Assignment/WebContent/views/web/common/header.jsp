<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- BEGIN HEADER -->
    <div class="header">
      <div class="container">
        <a class="site-logo" href="${pageContext.request.contextPath}/index"><img src="<c:url value='/views/web/img/logos/shop-logo.png'/>" alt="Metronic Shop UI"></a>
		
        <a href="javascript:void(0);" class="mobi-toggler"><i class="fa fa-bars"></i></a>

        <!-- BEGIN CART -->
        <div class="top-cart-block">
          <div class="top-cart-info">
            <a href="javascript:void(0);" class="top-cart-info-count"><span id="countTotal">${sessionScope.cart.tongsl}</span> sản phẩm</a>
            <a href="javascript:void(0);" class="top-cart-info-value">900.000đ</a>
          </div>
          <i class="fa fa-shopping-cart"></i>
                        
          <div class="top-cart-content-wrapper">
            <div class="top-cart-content">
              <ul class="scroller" style="height: 250px;">
                <li>
                  <a href="<c:url value='/views/web/shop-item.jsp'/>"><img src="<c:url value='/views/web/img/cart-img.jpg'/>" alt="Rolex Classic Watch" width="37" height="34"></a>
                  <span class="cart-content-count">x 1</span>
                  <strong><a href="<c:url value='/views/web/shop-item.jsp'/>">Basketball T-Shirt White</a></strong>
                  <em>900.000đ</em>
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
                <a href="<c:url value='/cart?action=view'/>" class="btn btn-default">Xem giỏ</a>
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
                        <%@include file="brands.jsp"%>
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
                        <%@include file="brands.jsp"%>
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
                        <%@include file="brands.jsp"%>
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
                	<c:otherwise><li><a href="<c:url value='/views/web/shop-sign-up.jsp'/>">Đăng ký</a></li></c:otherwise>
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

    <!-- BEGIN SLIDER -->
    <div class="page-slider margin-bottom-35">
        <div id="carousel-example-generic" class="carousel slide carousel-slider">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                <li data-target="#carousel-example-generic" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <!-- First slide -->
                <div class="item carousel-item-four active">
                    <div class="container">
                        <div class="carousel-position-four text-center">
                            <h2 class="margin-bottom-20 animate-delay carousel-title-v3 border-bottom-title text-uppercase" data-animation="animated fadeInDown">
                                Tones of <br/><span class="color-red-v2">Shop UI Features</span><br/> designed
                            </h2>
                            <p class="carousel-subtitle-v2" data-animation="animated fadeInUp">Lorem ipsum dolor sit amet constectetuer diam <br/>
                            adipiscing elit euismod ut laoreet dolore.</p>
                        </div>
                    </div>
                </div>
                
                <!-- Second slide -->
                <div class="item carousel-item-five">
                    <div class="container">
                        <div class="carousel-position-four text-center">
                            <h2 class="animate-delay carousel-title-v4" data-animation="animated fadeInDown">
                                Unlimted
                            </h2>
                            <p class="carousel-subtitle-v2" data-animation="animated fadeInDown">
                                Layout Options
                            </p>
                            <p class="carousel-subtitle-v3 margin-bottom-30" data-animation="animated fadeInUp">
                                Fully Responsive
                            </p>
                            <a class="carousel-btn" href="#" data-animation="animated fadeInUp">See More Details</a>
                        </div>
                        <img class="carousel-position-five animate-delay hidden-sm hidden-xs" src="img/shop-slider/slide2/price.png" alt="Price" data-animation="animated zoomIn">
                    </div>
                </div>

                <!-- Third slide -->
                <div class="item carousel-item-six">
                    <div class="container">
                        <div class="carousel-position-four text-center">
                            <span class="carousel-subtitle-v3 margin-bottom-15" data-animation="animated fadeInDown">
                                Full Admin &amp; Frontend
                            </span>
                            <p class="carousel-subtitle-v4" data-animation="animated fadeInDown">
                                eCommerce UI
                            </p>
                            <p class="carousel-subtitle-v3" data-animation="animated fadeInDown">
                                Is Ready For Your Project
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Fourth slide -->
                <div class="item carousel-item-seven">
                   <div class="center-block">
                        <div class="center-block-wrap">
                            <div class="center-block-body">
                                <h2 class="carousel-title-v1 margin-bottom-20" data-animation="animated fadeInDown">
                                  Dù tốt dù xấu, <br> hãy là chính bạn.
                                </h2>
                                <a class="carousel-btn" href="#" data-animation="animated fadeInUp">Buy It Now!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Controls -->
            <a class="left carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="prev">
                <i class="fa fa-angle-left" aria-hidden="true"></i>
            </a>
            <a class="right carousel-control carousel-control-shop" href="#carousel-example-generic" role="button" data-slide="next">
                <i class="fa fa-angle-right" aria-hidden="true"></i>
            </a>
        </div>
    </div>
    <!-- END SLIDER -->
</body>
</html>