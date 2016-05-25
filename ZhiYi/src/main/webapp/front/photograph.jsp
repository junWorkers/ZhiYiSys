<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
 <base href="<%=basePath%>">
<meta charset="utf-8">
<title>拍照</title>
<script type="text/javascript" src="js/index.js"></script>
<link rel="stylesheet" href="css/base.css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->

</head>

<body>
<div class="color-undefined" id="nubia-wrap"></div>
<!-- --nubia wrap-- -->
<div id="fa-header">
        	<div id="fa-center">
                <a class="fa-logo" href="front/index.jsp"><img src="images/DSC_0030.png"/>指艺</a>
                <ul class="fa-centers">
                    <li class="first1"><a href="front/shoppingmall.jsp">商城</a></li>
                    <li><a href="front/parts.jsp">配件</a></li>
                    <li><a href="front/fa.jsp">应用</a></li>
                    <li><a href="front/shouhou.jsp">服务</a></li>
                    <li><a href="front/experienceStore.jsp">体验店</a></li>
                    <li class="last1"><a href="#">社区</a></li>
                </ul>
                <img class="img1" src="images/zhuci.jpg"/>
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
        .sub-menu li {margin-left: 10px;}
    </style>
<div class="sub-nav" id="subNav">
  <div class="w1170"> <a href="#" class="sub-logo-z9max1 fl">${goodsname.gname}</a> <a href="#" class="sub-logo-z9max1 fl" style="margin-left:15px;border-left:1px solid #999;padding-left:15px;color:#999">艺术改变生活</a> 
    <!--<a target="_blank" href="/book.php" class="fr btn-buy">立即预约</a>--> 
    <a target="_blank" href="front/productpackage.jsp" class="fr btn-buy">立即购买</a>
    <ul class="sub-menu clearfix fr" id="sub-menu">
                <li><a href="front/summarize.jsp">概述</a></li>
                <li><a href="front/devise.jsp">设计</a></li>
                <li   class="active"><a href="front/photograph.jsp">拍照</a></li>
                <li><a href="front/technical.jsp">技术规格</a></li>
               	<li><a href="front/accident.jsp">意外宝</a></li>
            </ul>
  </div>
</div>

<div class="wrap">
    <!-- 概述01 -->
  	<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '拍照'}">
        	<c:if test="${item.giposition eq 1 }">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 	  <div class="section photo01">
						<div class="w1170">
						 <div class="photo01-abs">
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
    
	
  	
    <!-- 概述02 -->
    	<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '拍照'}">
        	<c:if test="${item.giposition eq 2 }">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 	  <div class="section photo02">
						<div class="w1170">
							 <div class="photo02-abs">
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
    
	
   
    <!-- 概述03 -->
   	<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '拍照'}">
        	<c:if test="${item.giposition eq 3}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 	      <div class="section photo03">
							<div class="w1170">
								 <div class="photo03-abs">
									<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
								</div>           
								<div class="desc">
									<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${item.giname }</h1>
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
   
  
    
    <!-- 拍摄05 -->
	
	
<style>
    #photo05 .bx-prev{position: absolute; top: 19%; left:-12%; margin-top: -16px; width: 55px; height: 132px; text-indent: -9999px; z-index: 50; background: url(http://static.nubia.cn/product/max/images/photo_btns.png) no-repeat 0 -113px; }
    #photo05 .bx-next{position: absolute; top: 19%; right:-12%; margin-top: -16px; width: 55px; height: 132px; text-indent: -9999px; z-index: 50; background: url(http://static.nubia.cn/product/max/images/photo_btns.png) no-repeat -86px -113px; }
    #bx-pager01 {text-align: center; margin-top: 30px; font-size: 16px;}
    #bx-pager01 a{padding: 0 10px;color:#999;}
    #bx-pager01 a.active{color:#000;}
    #photo06 a.disabled{display:none;}
    .bxslider01{width: 970px;}
    #bx-pager02 {text-align: center; margin-top: 30px; font-size: 16px;}
    #bx-pager02 a{padding: 0 10px;color:#999;}
    #bx-pager02 a.active{color:#000;}
    .bx-wrapper .bx-controls-direction a {position: absolute; top: 83%; margin-top: -16px; outline: 0; width: 32px; height: 32px; text-indent: -9999px; z-index: 50; }
    .capation-dot{text-align: center; margin-top: -310px; z-index: 99; color:#666; }
    .capation-dot a{color:#666; padding:0 5px; }
    .capation-dot a.active{color:#fff; }
    .caption h1{font-size: 50px; color:#000; }
    .caption p{font-size: 14px; color: #333 } 
    #photo05 a.disabled {display: none;}
</style>
    <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '拍照'}">
        	<c:if test="${item.giposition eq 4}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 	      
					<div class="section photo05" id="photo05">
								<div class="w1170">
									<div class="desc">
										<h1>${item.giname }</h1>
										<small>
										  ${item.gisketck }
										</small>
									</div>
									<div class="w970">
										  <div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 450px;"><ul class="bxslider01" style="width: auto; position: relative;">
										  <li style="float: none; list-style: none; position: absolute; width: 970px; z-index: 50; display: block;"><img src="${item.firstPath }"></li>
										</ul></div><div class="bx-controls bx-has-controls-direction"><div class="bx-controls-direction"></div></div></div>
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
    <!-- 拍摄06 -->
   	<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '拍照'}">
        	<c:if test="${item.giposition eq 5}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				  <div class="section photo06">
						<div class="w1170">
							 <div class="photo06-abs">
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

	
    <!-- 拍摄08 -->
    <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '拍照'}">
        	<c:if test="${item.giposition eq 6}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 	      <div class="section photo08-1">
							<div class="w1170">
								 <div class="photo08-1-abs">
									<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
								</div>           
								<div class="desc">
								   <h1>${item.giname }</h1>
									<p> ${item.gisketck }</p>
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
        <c:if test="${item.giattribute eq '拍照'}">
        	<c:if test="${item.giposition eq 7}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
						 <div class="section photo08-2">
				 	      <div class="w1170">
							 <div class="photo08-2-abs">
								<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
							</div>           
							<div class="desc">
								 <h1>${item.giname }</h1>
								<p> ${item.gisketck }</p>
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
        <c:if test="${item.giattribute eq '拍照'}">
        	<c:if test="${item.giposition eq 8}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
						 	  <div class="section photo08-3">
									<div class="w1170">
										 <div class="photo08-3-abs">
											<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
										</div>           
										<div class="desc">
											<h1>${item.giname }</h1>
											<p> ${item.gisketck }</p>
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
        <c:if test="${item.giattribute eq '拍照'}">
        	<c:if test="${item.giposition eq 9}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
						 	  	   
				<div class="section photo08-4">
					<div class="w1170">
						 <div class="photo08-4-abs">
							<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
						</div>           
						<div class="desc">
							<h1>${item.giname }</h1>
							<p> ${item.gisketck }</p>
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
	
   

    </div>
</body>
</html>
