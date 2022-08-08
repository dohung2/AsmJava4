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
	<div class="wrapper">
            <div class="container">
                <div class="row">
                    <div class="span3">
                        <div class="sidebar">
                            <ul class="widget widget-menu unstyled">
                                <li class="active"><a href="${pageContext.request.contextPath}/Admin"><i class="menu-icon icon-dashboard"></i>Dashboard</a></li>
                                
                                <!-- <li><a href="activity.html"><i class="menu-icon icon-bullhorn"></i>News Feed </a></li>
                                <li><a href="message.html"><i class="menu-icon icon-inbox"></i>Inbox <b class="label green pull-right">11</b> </a></li>
                                <li><a href="task.html"><i class="menu-icon icon-tasks"></i>Tasks <b class="label orange pull-right">19</b> </a></li> -->
                            </ul>
                            <!--/.widget-nav-->
                            
                            
                            <ul class="widget widget-menu unstyled">
                                <li><a href="${pageContext.request.contextPath}/Admin/Product"><i class="menu-icon icon-bold"></i> Sản phẩm </a></li>
                                <li><a href="${pageContext.request.contextPath}/Admin/User"><i class="menu-icon icon-book"></i> Người Dùng </a></li>
                                
                                <!-- <li><a href="form.html"><i class="menu-icon icon-paste"></i>  </a></li>
                                <li><a href="table.html"><i class="menu-icon icon-table"></i>Tables </a></li>
                                <li><a href="charts.html"><i class="menu-icon icon-bar-chart"></i>Charts </a></li> -->
                                
                            </ul>
                            <!--/.widget-nav-->
                            
                            <ul class="widget widget-menu unstyled">
                                <li><a class="collapsed" data-toggle="collapse" href="#togglePages"><i class="menu-icon icon-cog">
                                </i><i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right">
                                </i>Xem Trang </a>
                                    <ul id="togglePages" class="collapse unstyled">
                                        <li><a href="${pageContext.request.contextPath}/index"><i class="icon-inbox"></i>Trang Chủ </a></li>
                                        
                                        <!-- <li><a href="other-user-profile.html"><i class="icon-inbox"></i>Profile </a></li>
                                        <li><a href="other-user-listing.html"><i class="icon-inbox"></i>All Users </a></li> -->
                                        
                                    </ul>
                                </li>
                                <li><a href="${pageContext.request.contextPath}/sign-out"><i class="menu-icon icon-signout"></i>Đăng xuất </a></li>
                            </ul>
                        </div>
                        <!--/.sidebar-->
                        
                    </div>
</body>
</html>