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
                  
                  <c:forEach var="item" items="${cart}">
	                  <tr>
	                    <td class="goods-page-image">
	                      <a href="javascript:;"><img src="<c:url value='views/web/img/products/${item.value.productSetBicture}'/>" alt="Image Product"></a>
	                    </td>
	                    <td class="goods-page-description">
	                      <h3><a href="<c:url value='/sanpham?maSP=${cartDetail.value.id_SP}'/>">${item.value.productSetName}</a></h3>
	                      <p><strong>${cartDetail.value.id_SP}</strong> - Màu: <strong>${cartDetail.value.mauSac}</strong>; Kích thước: <strong>Chưa làm</strong></p>
	                      <em>Bấm vào tên sản phẩm để xem chi tiết</em>
	                    </td>
	                    <td class="goods-page-ref-no">
	                      ${cartDetail.value.id_SP}
	                    </td>
	                    <td class="goods-page-quantity">
	                      <div class="product-quantity" >
	                          <input id="getCurrentQuantity" onchange="getMyQuantity('${item.value.productSetBroductID}','${item.value.productSetColor}',this)" type="text" value="${item.value.productSetQuantity}" readonly class="form-control input-sm">
	                      </div>
	                    </td>
	                    <td class="goods-page-price">
	                      <span id="totalSP-${cartDetail.value.id_SP}">
	                      	<strong>${cartDetail.value.giasp}<span>đ</span></strong>
						  </span>
	                    </td>
	                    <td class="goods-page-total">
	                      <strong>${cartDetail.value.giasp * cartDetail.value.slMua}<span>đ</span></strong>
	                    </td>
	                    <td class="del-goods-col">
	                      <a class="del-goods" onclick="removeSP('${cartDetail.value.id_SP}')" >&nbsp;</a>
	                    </td>
	                  </tr>
                  </c:forEach>
                  
<!--                   <tr>
                    <td class="goods-page-image">
                      <a href="javascript:;"><img src="img/products/Ao-Hoodie-Lung-Black.jpg" alt="Berry Lace Dress"></a>
                    </td>
                    <td class="goods-page-description">
                      <h3><a href="javascript:;">Basketball T-Shirt White</a></h3>
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
                  </tr> -->
                  
                </table>
                </div>

                <div class="shopping-total">
                  <ul>
                    <li>
                      <em>Tạm tính</em>
                      <strong class="price">900.000<span>đ</span></strong>
                    </li>
                    <li>
                      <em>Phí vận chuyển</em>
                      <strong class="price">32.000<span>đ</span></strong>
                    </li>
                    <li class="shopping-total-price">
                      <em>Tổng tiền</em>
                      <%-- <strong class="price">${sessionScope.gioHang.tongtien}<span>đ</span></strong> --%>
                      <strong class="price">932.000<span>đ</span></strong>
                    </li>
                  </ul>
                </div>
              </div>
              <a href="${pageContext.request.contextPath}/index" class="btn btn-default">Tiếp tục mua sắm <i class="fa fa-shopping-cart"></i></a>
              <button class="btn btn-primary" type="submit">Thanh toán <i class="fa fa-check"></i></button>
            </div>
          </div>
          <!-- END CONTENT -->
        </div>
        <!-- END SIDEBAR & CONTENT -->

         <!-- BEGIN SIMILAR PRODUCTS -->
        <!--<div class="row margin-bottom-40">
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
        END SIMILAR PRODUCTS
      </div>
    </div> -->

	<!-- BEGIN FOOTER -->
	<%@include file="common/footer.jsp"%>
	<!-- END FOOTER -->
	
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
    
    <!-- Script for add, update, remove cart-->
    <script type="text/javascript">
	//  $('#getCurrentQuantity').click(function(){
	// 	 var currentQuantity = document.getElementById("getCurrentQuantity").value;
	// 	 var id = "${item.value.productSetBroductID}";
	// 	 var color = "${item.value.productSetColor}";
		
	// 	 window.location.href="Cart/UpdateQuantity?&getProductID=${item.value.productSetBroductID}&getProductColor=${item.value.productSetColor}&myCurrentQuantity="+currentQuantity;
	//  	 window.location.href="Cart/UpdateQuantity?&getProductID='+id+'&getProductColor='+color+'&myCurrentQuantity="+currentQuantity;
	//  })
	 function getMyQuantity(id,color,obj){
		var quantity = obj.value;
	     $.ajax({
	         url:'Cart/UpdateQuantity?&myCurrentQuantity='+quantity+'&getProductColor='+color+'&getProductID='+id,
	         dataType:'json',
	
	         success: function(result){
		          $('#lblCartCount').text(result.totalQuantity);
	              $('#toTalDiscount').text(numberWithDot(result.totalDiscount));
	              $('#toTalPrice').text(numberWithDot(result.totalPrice));
	              $('#toTalPriceAfterDiscount').text(numberWithDot(result.totalPriceAfterDiscount));
		            },
		            error: function(result){
		            	alert("fail!");
		            }
	     })
	     console.log(quantity);
	 }
	 
	 function removeSP(maSP,color){
	     $.ajax({
	         url:'Cart/RemoveFromCart?&productID='+maSP+'&colorPick='+color,
	         dataType:'json',
	
	         success: function(result){
		             $('#lblCartCount').text(result.totalQuantity);
	                 var idRemoveTag = '#tr-'+maSP;
	                 $(idRemoveTag).remove();
	                 $('#toTalDiscount').text(numberWithDot(result.totalDiscount));
	                 $('#toTalPrice').text(numberWithDot(result.totalPrice));
	                 $('#toTalPriceAfterDiscount').text(numberWithDot(result.totalPriceAfterDiscount));
		            },
		            error: function(result){
		            	alert("fail!");
		            }
	     })
	 }
	
	function numberWithDot(x) {
	    return x.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ".");
	}
	</script>
    <!-- END PAGE LEVEL JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>