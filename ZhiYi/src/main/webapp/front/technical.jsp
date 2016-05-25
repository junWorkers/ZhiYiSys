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
<title>技术规格</title>
<link rel="stylesheet" href="css/base.css">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/technical.js"></script>
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
                <li><a href="front/photograph.jsp">拍照</a></li>
                <li  class="active"><a href="front/technical.jsp">技术规格</a></li>
               	<li><a href="front/accident.jsp">意外宝</a></li>
            </ul>
  </div>
</div>
<div class="xx">
  <ul id="sidebar" class="sidebar">
   <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 1}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
					 <li id="1" onClick="dijianlalala(1)"  class="navfix"><a class="current" href="front/technical.jsp#x1">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
      <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 2}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    				<li id="2" onClick="dijianlalala(2)" class="navfix"><a href="front/technical.jsp#x2">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
    <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 3}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="3" onClick="dijianlalala(3)" class="navfix"><a href="front/technical.jsp#x3">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 4}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="4" onClick="dijianlalala(4)" class="navfix"><a href="front/technical.jsp#x4">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
        <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 5}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="5" onClick="dijianlalala(5)" class="navfix"><a href="front/technical.jsp#x5">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
            <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 6}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="6" onClick="dijianlalala(6)" class="navfix"><a href="front/technical.jsp#x6">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
       <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 7}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="7" onClick="dijianlalala(7)" class="navfix"><a href="front/technical.jsp#x7">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 8}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="8" onClick="dijianlalala(8)" class="navfix"><a href="front/technical.jsp#x8">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
       <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 9}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="9" onClick="dijianlalala(9)" class="navfix"><a href="front/technical.jsp#x9">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
      <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 10}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="10" onClick="dijianlalala(10)" class="navfix"><a href="front/technical.jsp#x10">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
    <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 11}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="11" onClick="dijianlalala(11)" class="navfix"><a href="front/technical.jsp#x11">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
    
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 12}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
    <li id="12" onClick="dijianlalala(12)" class="navfix"><a href="front/technical.jsp#x12">${item.giname }</a></li>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
   
  </ul>
</div>
<div id="content">
	<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 1}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				<div id="x1" class="x1"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
    	<c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 2}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x2" class="x3"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
    <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 3}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x3" class="x4"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
      <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 4}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x4" class="x5"><img src="${item.firstPath }"><div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 5}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x5" class="x6"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 6}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x6" class="x7"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 7}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x7" class="x9"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 8}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x8" class="x10"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 9}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x9" class="x11"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
      <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 10}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x10" class="x12"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
      <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 11}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x11" class="x13"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '技术规格'}">
        	<c:if test="${item.giposition eq 12}">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
	<div id="x12" class="x14"><img src="${item.firstPath }"></div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
	
	<script type="text/javascript">


		
		
	</script>
</div>
</body>
</html>
