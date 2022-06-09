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
  <title>Thanh toán | H&amp;N</title>

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
            <li class="active">Thanh toán</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">
          <!-- BEGIN CONTENT -->
          <div class="col-md-12 col-sm-12">
            <h1>Checkout</h1>
            <!-- BEGIN CHECKOUT PAGE -->
            <div class="panel-group checkout-page accordion scrollable" id="checkout-page">

              <!-- BEGIN SHIPPING ADDRESS -->
              <div id="shipping-address" class="panel panel-default">
                <div class="panel-heading">
                  <h2 class="panel-title">
                    <a data-toggle="collapse" data-parent="#checkout-page" href="#shipping-address-content" class="accordion-toggle">
                      Bước 1: Điền thông tin giao dịch
                    </a>
                  </h2>
                </div>
                <div id="shipping-address-content" class="panel-collapse collapse in">
                  <div class="panel-body row">
                    <div class="col-md-6 col-sm-6">
                      <div class="form-group">
                        <label for="firstname-dd">Họ và tên người nhận <span class="require">*</span></label>
                        <input type="text" id="firstname-dd" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="telephone-dd">Số điện thoại <span class="require">*</span></label>
                        <input type="text" id="telephone-dd" class="form-control">
                      </div>
                    </div>
                    <div class="col-md-6 col-sm-6">
                      <div class="form-group">
                        <label for="address1-dd">Địa chỉ</label>
                        <input type="text" id="address1-dd" class="form-control">
                      </div>
                      <div class="form-group">
                        <label for="region-state-dd">Tỉnh thành <span class="require">*</span></label>
                        <select class="form-control input-sm" id="region-state-dd">
                          <option value=""> --- Vui lòng chọn --- </option>
                          <option value="hcm">HỒ CHÍ MINH</option>
                          <option value="cantho">CẦN THƠ</option>
                          <option value="danang">ĐÀ NẴNG</option>
                          <option value="hanoi">HÀ NỘI</option>
                        </select>
                      </div>
                    </div>
                    <div class="col-md-12">
                      <div class="form-group">
                        <label for="delivery-payment-method">Ghi chú</label>
                        <textarea id="delivery-payment-method" rows="8" class="form-control"></textarea>
                      </div>
                      <button class="btn btn-primary  pull-right" type="submit" id="button-shipping-method" data-toggle="collapse" data-parent="#checkout-page" data-target="#payment-method-content">Tiếp tục</button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- END SHIPPING ADDRESS -->
              
              <!-- BEGIN PAYMENT METHOD -->
              <div id="payment-method" class="panel panel-default">
                <div class="panel-heading">
                  <h2 class="panel-title">
                    <a data-toggle="collapse" data-parent="#checkout-page" href="#payment-method-content" class="accordion-toggle">
                      Bước 2: Phương thức thanh toán
                    </a>
                  </h2>
                </div>
                <div id="payment-method-content" class="panel-collapse collapse">
                  <div class="panel-body row">
                    <div class="col-md-12">
                      <p>Hãy chọn vào bên dưới để chọn phương thức thanh toán mà bạn muốn</p>
                      <div class="radio-list">
                        <label>
                          <input type="radio" name="CashOnDelivery" value="CashOnDelivery"> Tiền mặt
                        </label>
                        <label>
                          <input type="radio" name="CashOnDelivery" value="CashOnDelivery"> Thẻ tín dụng
                        </label>
                      </div>
                      <div class="form-group">
                        <label for="delivery-payment-method">Ghi chú</label>
                        <textarea id="delivery-payment-method" rows="8" class="form-control"></textarea>
                      </div>
                      <button class="btn btn-primary  pull-right" type="submit" id="button-payment-method" data-toggle="collapse" data-parent="#checkout-page" data-target="#confirm-content">Tiếp tục</button>
                      <div class="checkbox pull-right">
                        <label>
                          <input type="checkbox"> Tôi đã đọc và đồng ý các điều khoản trên <a title="Terms & Conditions" href="javascript:;">Điều khoản & Điều kiện </a> &nbsp;&nbsp;&nbsp; 
                        </label>
                      </div>  
                    </div>
                  </div>
                </div>
              </div>
              <!-- END PAYMENT METHOD -->

              <!-- BEGIN CONFIRM -->
              <div id="confirm" class="panel panel-default">
                <div class="panel-heading">
                  <h2 class="panel-title">
                    <a data-toggle="collapse" data-parent="#checkout-page" href="#confirm-content" class="accordion-toggle">
                      Bước 3: Xác nhận đơn hàng
                    </a>
                  </h2>
                </div>
                <div id="confirm-content" class="panel-collapse collapse">
                  <div class="panel-body row">
                    <div class="col-md-12 clearfix">
                      <div class="table-wrapper-responsive">
                      <table>
                        <tr>
                          <th class="checkout-image">Hình ảnh</th>
                          <th class="checkout-description">Mô tả</th>
                          <th class="checkout-model">Mẫu số</th>
                          <th class="checkout-quantity">Số lượng</th>
                          <th class="checkout-price">Giá</th>
                          <th class="checkout-total">Tổng</th>
                        </tr>
                        <tr>
                          <td class="checkout-image">
                            <a href="javascript:;"><img src="img/products/Men's-Basketball-T-Shirt-Black.jpg" alt="Berry Lace Dress"></a>
                          </td>
                          <td class="checkout-description">
                            <h3><a href="javascript:;">Men's Basketball T-Shirt Black</a></h3>
                            <p><strong>SP1</strong> - Màu: <strong>Đen</strong>; Kích thước: <strong>S</strong></p>
                            <em>Bấm vào sản phẩm để xem chi tiết</em>
                          </td>
                          <td class="checkout-model">NIKE001</td>
                          <td class="checkout-quantity">1</td>
                          <td class="checkout-price"><strong>900.000<span>đ</span></strong></td>
                          <td class="checkout-total"><strong>900.000<span>đ</span></strong></td>
                        </tr>
                        <tr>
                          <td class="checkout-image">
                            <a href="javascript:;"><img src="img/products/Men's-Basketball-T-Shirt-White.jpg" alt="Berry Lace Dress"></a>
                          </td>
                          <td class="checkout-description">
                            <h3><a href="javascript:;">Men's Basketball T-Shirt White</a></h3>
                            <p><strong>SP2</strong> - Màu: <strong>Trắng</strong>; Kích thước: <strong>S</strong></p>
                            <em>Bấm vào sản phẩm để xem chi tiết</em>
                          </td>
                          <td class="checkout-model">NIKE002</td>
                          <td class="checkout-quantity">1</td>
                          <td class="checkout-price"><strong>900.000<span>đ</span></strong></td>
                          <td class="checkout-total"><strong>900.000<span>đ</span></strong></td>
                        </tr>
                      </table>
                      </div>
                      <div class="checkout-total-block">
                        <ul>
                          <li>
                            <em>Tạm tính</em>
                            <strong class="price">1.800.000<span>đ</span></strong>
                          </li>
                          <li>
                            <em>Phí vận chuyển</em>
                            <strong class="price">32.000<span>đ</span></strong>
                          </li>
                          <li>
                            <em>VAT (5.6%)</em>
                            <strong class="price">6.000<span>đ</span></strong>
                          </li>
                          <li class="checkout-total-price">
                            <em>Tổng tiền</em>
                            <strong class="price">1.838.000<span>đ</span></strong>
                          </li>
                        </ul>
                      </div>
                      <div class="clearfix"></div>
                      <button class="btn btn-primary pull-right" type="submit" id="button-confirm">Xác nhận thanh toán</button>
                      <a href="shop-shopping-cart.jsp" class="btn btn-default pull-right margin-right-20">Quay lại giỏ hàng</a>
                      <!-- <button type="button" class="btn btn-default pull-right margin-right-20">Quay lại giỏ hàng</button> -->
                    </div>
                  </div>
                </div>
              </div>
              <!-- END CONFIRM -->
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
            2022 © Copy right by Hung-Ngoc.
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
    
    <%@include file="common/foot.jsp"%>
    
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