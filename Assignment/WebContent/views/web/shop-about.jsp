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
  <title>Giới thiệu | H&amp;N</title>

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
            <li><a href="index.jsp">Trang chủ</a></li>
            <li class="active">Điều khoản &amp; Điều kiện</li>
        </ul>
        <!-- BEGIN SIDEBAR & CONTENT -->
        <div class="row margin-bottom-40">

          <!-- BEGIN CONTENT -->
          <div class="col-md-9 col-sm-9" style="margin-left: 15%;">
            <h1>Giới thiệu</h1>
            <div class="content-page">
              <p><img src="img/img1.jpg" alt="About us" class="img-responsive"></p> 

              <p>Thành lập vào tháng 5 năm 2022, với mô hình kinh doanh: Siêu thị thời trang hạnh phúc dành cho mọi người, mọi nhà, Super Shop mong muốn người tiêu dùng không chỉ được trải nghiệm sản phẩm chất lượng, không gian mua sắm ấm áp như ở nhà mà họ còn cảm thấy tự hào và hạnh phúc với sản phẩm thời trang đến từ một thương hiệu thuần Việt.
                Là một thương hiệu thời trang hạnh phúc dành cho tất cả mọi người, Super Shop luôn tập trung đẩy mạnh về thiết kế và chất lượng sản phẩm, bắt đầu hoàn thiện mô hình siêu thị "thời trang hạnh phúc" để nhân bản mạnh mẽ. Super Shop đã gửi gắm tình yêu thương vào từng sản phẩm. Để thời trang không chỉ mang vẻ đẹp thẩm mỹ đơn thuần, hay những trải nghiệm mua sắm tuyệt vời, mà còn là sự kết tinh từ sức mạnh của niềm tin, khát khao cống hiến và sự hy sinh thầm lặng của mỗi con người trong đội ngũ với một mục tiêu duy nhất: Đem đến giá trị thật và hạnh phúc đích thực đến tận tay khách hàng.</p>
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
    
	<%@include file="common/foot.jsp"%>

    <script type="text/javascript">
        jQuery(document).ready(function() {
            Layout.init();    
            Layout.initOWL();
            Layout.initTwitter();
        });
    </script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>