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
  <title>Giỏ hàng | H&amp;N</title>

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
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>Giỏ hàng</h1>
            <div class="goods-page">
              <div class="goods-data clearfix">
                <div class="table-wrapper-responsive">
                <table summary="Shopping cart">
                  <tr>
                    <th class="goods-page-image">Hình ảnh</th>
                    <th class="goods-page-description">Mô tả</th>
                    <th class="goods-page-ref-no">Mẫu số</th>
                    <th class="goods-page-quantity">Số lượng</th>
                    <th class="goods-page-price">Giá</th>
                    <th class="goods-page-total" colspan="2">Tổng</th>
                  </tr>
                  <tr>
                    <td class="goods-page-image">
                      <a href="javascript:;"><img src="img/products/Men's-Basketball-T-Shirt-Black.jpg" alt="Berry Lace Dress"></a>
                    </td>
                    <td class="goods-page-description">
                      <h3><a href="javascript:;">Men's Basketball T-Shirt Black</a></h3>
                      <p><strong>SP1</strong> - Màu: <strong>Đen</strong>; Kích thước: <strong>S</strong></p>
                      <em>Bấm vào sản phẩm để xem chi tiết</em>
                    </td>
                    <td class="goods-page-ref-no">
                      NIKE001
                    </td>
                    <td class="goods-page-quantity">
                      <div class="product-quantity">
                          <input id="product-quantity" type="text" value="1" readonly class="form-control input-sm">
                      </div>
                    </td>
                    <td class="goods-page-price">
                      <strong>900.000<span>đ</span></strong>
                    </td>
                    <td class="goods-page-total">
                      <strong>900.000<span>đ</span></strong>
                    </td>
                    <td class="del-goods-col">
                      <a class="del-goods" href="javascript:;">&nbsp;</a>
                    </td>
                  </tr>
                  <tr>
                    <td class="goods-page-image">
                      <a href="javascript:;"><img src="img/products/Men's-Basketball-T-Shirt-White.jpg" alt="Berry Lace Dress"></a>
                    </td>
                    <td class="goods-page-description">
                      <h3><a href="javascript:;">Men's Basketball T-Shirt White</a></h3>
                      <p><strong>SP2</strong> - Màu: <strong>Trắng</strong>; Kích thước: <strong>S</strong></p>
                      <em>Bấm vào sản phẩm để xem chi tiết</em>
                    </td>
                    <td class="goods-page-ref-no">
                      NIKE002
                    </td>
                    <td class="goods-page-quantity">
                      <div class="product-quantity">
                          <input id="product-quantity2" type="text" value="1" readonly class="form-control input-sm">
                      </div>
                    </td>
                    <td class="goods-page-price">
                      <strong>900.000<span>đ</span></strong>
                    </td>
                    <td class="goods-page-total">
                      <strong>900.000<span>đ</span></strong>
                    </td>
                    <td class="del-goods-col">
                      <a class="del-goods" href="javascript:;">&nbsp;</a>
                    </td>
                  </tr>
                </table>
                </div>

                <div class="shopping-total">
                  <ul>
                    <li>
                      <em>Tạm tính</em>
                      <strong class="price">1.800.000<span>đ</span></strong>
                    </li>
                    <li>
                      <em>Phí vận chuyển</em>
                      <strong class="price">32.000<span>đ</span></strong>
                    </li>
                    <li class="shopping-total-price">
                      <em>Tổng tiền</em>
                      <strong class="price">1.832.000<span>đ</span></strong>
                    </li>
                  </ul>
                </div>
              </div>
              <button class="btn btn-default" type="submit">Tiếp tục mua sắm <i class="fa fa-shopping-cart"></i></button>
              <button class="btn btn-primary" type="submit">Thanh toán <i class="fa fa-check"></i></button>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

        <!-- BEGIN SIMILAR PRODUCTS -->
        <div class="row margin-bottom-40">
          <div class="col-md-12 col-sm-12">
            <h2>Sản phẩm phổ biến nhất</h2>
            <div class="owl-carousel owl-carousel4">
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                  <div class="sticker sticker-new"></div>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="img/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress2</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/k3.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="img/products/k3.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress3</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/k4.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="img/products/k4.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress4</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                  <div class="sticker sticker-sale"></div>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/k1.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="img/products/k1.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress5</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
              <div>
                <div class="product-item">
                  <div class="pi-img-wrapper">
                    <img src="img/products/k2.jpg" class="img-responsive" alt="Berry Lace Dress">
                    <div>
                      <a href="img/products/k2.jpg" class="btn btn-default fancybox-button">Zoom</a>
                      <a href="#product-pop-up" class="btn btn-default fancybox-fast-view">View</a>
                    </div>
                  </div>
                  <h3><a href="shop-item.jsp">Berry Lace Dress6</a></h3>
                  <div class="pi-price">$29.00</div>
                  <a href="javascript:;" class="btn btn-default add2cart">Add to cart</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- END SIMILAR PRODUCTS -->
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
            <h2 class="footer-title">Hãy lựa chọn theo cách của bạn!</h2>
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

    <!-- BEGIN fast view of a product -->
    <div id="product-pop-up" style="display: none; width: 700px;">
      <div class="product-page product-pop-up">
        <div class="row">
          <div class="col-md-6 col-sm-6 col-xs-3">
            <div class="product-main-image">
              <img src="img/products/Jordan-Flight-Heritage.jpg" alt="Cool green dress with red bell" class="img-responsive">
            </div>
            <div class="product-other-images">
              <a href="javascript:;" class="active"><img alt="Berry Lace Dress" src="img/products/Jordan-Flight-Heritage.jpg"></a>
              <a href="javascript:;"><img alt="Berry Lace Dress" src="img/products/Jordan-Flight-Heritage-1.jpg"></a>
              <a href="javascript:;"><img alt="Berry Lace Dress" src="img/products/Jordan-Flight-Heritage-2.jpg"></a>
            </div>
          </div>
          <div class="col-md-6 col-sm-6 col-xs-9">
            <h1>Cool green dress with red bell</h1>
            <div class="price-availability-block clearfix">
              <div class="price">
                <strong><span>$</span>47.00</strong>
                <em>$<span>62.00</span></em>
              </div>
              <div class="availability">
                Trạng thái: <strong>Còn hàng</strong>
              </div>
            </div>
            <div class="description">
              <p>Lorem ipsum dolor ut sit ame dolore  adipiscing elit, sed nonumy nibh sed euismod laoreet dolore magna aliquarm erat volutpat 
Nostrud duis molestie at dolore.</p>
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
                  <input id="product-quantity" type="text" value="1" readonly name="product-quantity" class="form-control input-sm">
              </div>
              <button class="btn btn-primary" type="submit">Thêm vào giỏ</button>
              <a href="shop-item.jsp" class="btn btn-default">Xem thêm</a>
            </div>
          </div>

          <div class="sticker sticker-sale"></div>
        </div>
      </div>
</div>
    <!-- END fast view of a product -->

    <!-- Load javascripts at bottom, this will reduce page load time -->
    <!-- BEGIN CORE PLUGINS (REQUIRED FOR ALL PAGES) -->
    <!--[if lt IE 9]>
    <script src="assets/plugins/respond.min.js"></script>  
    <![endif]-->  
	
	<%@include file="common/foot.jsp"%>
    
    <script src="<c:url value='/views/web/assets/plugins/uniform/jquery.uniform.min.js'/>" type="text/javascript"></script>
    <script src="<c:url value='/views/web/assets/plugins/rateit/src/jquery.rateit.js'/>" type="text/javascript"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script><!-- for slider-range -->

    <script src="js/layout.js" type="text/javascript"></script>
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