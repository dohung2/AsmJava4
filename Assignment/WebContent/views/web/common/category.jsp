<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		  <div class="sidebar col-md-3 col-sm-4">
            <ul class="list-group margin-bottom-25 sidebar-menu">
              <c:forEach var="category" items="${listCategory}">
				<li class="list-group-item clearfix"><a href="<c:url value='/sanpham?id_DM=${category.id_DM}'/>"><i class="fa fa-angle-right"></i>${category.tenDM}</a></li>
			  </c:forEach>
            </ul>
          </div>

          
          
<!--           <div class="sidebar col-md-3 col-sm-4">
            <ul class="list-group margin-bottom-25 sidebar-menu">
              <li class="list-group-item clearfix"><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Ladies</a></li>
              <li class="list-group-item clearfix dropdown">
                <a href="shop-product-list.jsp">
                  <i class="fa fa-angle-right"></i>
                  Mens
                  
                </a>
                <ul class="dropdown-menu">
                  <li class="list-group-item dropdown clearfix">
                    <a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Shoes </a>
                      <ul class="dropdown-menu">
                        <li class="list-group-item dropdown clearfix">
                          <a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Classic </a>
                          <ul class="dropdown-menu">
                            <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Classic 1</a></li>
                            <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Classic 2</a></li>
                          </ul>
                        </li>
                        <li class="list-group-item dropdown clearfix">
                          <a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Sport  </a>
                          <ul class="dropdown-menu">
                            <li><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Sport 1</a></li>
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
              <li class="list-group-item clearfix"><a href="shop-product-list.jsp"><i class="fa fa-angle-right"></i> Brands</a></li>
            </ul>
          </div> -->
</body>
</html>