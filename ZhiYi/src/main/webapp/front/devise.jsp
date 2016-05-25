<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>设计</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/index.js"></script>
<link rel="stylesheet" href="css/base.css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->

</head>

<body>
	<div class="color-undefined" id="nubia-wrap"></div>
	<!-- --nubia wrap-- -->
	<div id="fa-header">
		<div id="fa-center">
			<a class="fa-logo" href="front/index.jsp"><img
				src="images/DSC_0030.png" />指艺</a>
			<ul class="fa-centers">
				<li class="first1"><a href="front/shoppingmall.jsp">商城</a>
				</li>
				<li><a href="front/parts.jsp">配件</a>
				</li>
				<li><a href="front/fa.jsp">应用</a>
				</li>
				<li><a href="front/shouhou.jsp">服务</a>
				</li>
				<li><a href="front/experienceStore.jsp">体验店</a>
				</li>
				<li class="last1"><a href="#">社区</a>
				</li>
			</ul>
			<img class="img1" src="images/zhuci.jpg" />
			<ul class="fa-right">
				<c:if test="${not empty currentAdminInfo}">
                		   <li><a href="#">当前用户名：${currentAdminInfo}</a></li>
                		   <li><a href="javascript:loginOut()">[注销]</a></li>
                	</c:if>
                	<c:if test="${empty currentAdminInfo}">
                		<li><a href="register.html">注册</a></li>
                    	<li><a href="login.html">登录</a></li>
                	</c:if>
			</ul>
		</div>
	</div>
	<div style="width:100%;height:61px;"></div>
	<style>
.sub-menu li {
	margin-left: 10px;
}
</style>
	<div class="sub-nav" id="subNav">
		<div class="w1170">
			<a href="#" class="sub-logo-z9max1 fl">${goodsname.gname}</a> <a href="#"
				class="sub-logo-z9max1 fl"
				style="margin-left:15px;border-left:1px solid #999;padding-left:15px;color:#999">艺术改变生活</a>
			<!--<a target="_blank" href="/book.php" class="fr btn-buy">立即预约</a>-->
			<a target="_blank" href="front/productpackage.jsp" class="fr btn-buy">立即购买</a>
			<ul class="sub-menu clearfix fr" id="sub-menu">
				<li><a href="front/summarize.jsp">概述</a>
				</li>
				<li class="active"><a href="#">设计</a>
				</li>
				<li><a href="front/photograph.jsp">拍照</a>
				</li>
				<li><a href="front/technical.jsp">技术规格</a>
				</li>
				<li><a href="front/accident.jsp">意外宝</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="wrap">
		<!-- 设计01 -->
		<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '设计'}">
        	<c:if test="${item.giposition eq 1 }">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 		<div class="section design01">
			<div class="w1170">
				<div class="design01-abs">
					<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
				</div>
				<div class="desc">
					<h1>${item.giname }</h1>
					<p>${item.gisketck }</p>
				</div>
			</div>
		</div>
				 		
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
		<!-- 设计02 -->
		<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '设计'}">
        	<c:if test="${item.giposition eq 2 }">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 		<div class="section design02">
			<div class="w1170">
				<div class="design02-abs">
					<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
				</div>
				<div class="desc">
					<h1>${item.giname }</h1>
					<p>${item.gisketck }</p>
				</div>
			</div>
		</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
        
    </c:forEach>
		<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '设计'}">
        	<c:if test="${item.giposition eq 3 }">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 		<div class="section design03">
							<div class="w1170">
								<div class="design03-abs">
									<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
								</div>
								<div class="desc">
									<h1>${item.giname }</h1>
									<p>${item.gisketck }</p>
								</div>
							</div>
						</div>
				 		
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>


		<!-- 设计05 -->
		<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '设计'}">
        	<c:if test="${item.giposition eq 4 }">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 		<div class="section design05">
			<div class="w1170">
				<div class="design05-abs">
					<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
				</div>
				<div class="desc">
					<h1>${item.giname }</h1>
					<p>${item.gisketck }</p>
				</div>
			</div>
		</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>


		<!-- 设计10 -->
			<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '设计'}">
        	<c:if test="${item.giposition eq 5 }">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				<div class="section design10">
					<img src="${item.firstPath }" style="display:block;">
				</div>
					
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
	</div>

</body>
</html>