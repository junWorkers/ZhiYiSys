<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>炫彩移动电源</title>
<link rel="stylesheet" type="text/css" href="css/xuancai.css" />
<link href="css/index.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>

<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/xuancai.js"></script>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="nb-stage high start return">

		<div class="section">
			<div class="title">
				<c:forEach items="${goodsaaaa}" var="item">
					<c:if test="${item.giattribute eq '配件'}">
						<c:if test="${item.giposition eq 3 }">
							<h2>${item.giname }薄致用 彩倾心</h2>
							<p class="stitle">${item.gisketck }</p>
							<a class="readmore-btn" onClick="check1()"
								href="javascript:void(0)">立即购买</a>
			</div>
		</div>
		<div class="index-high-video">
			<img src="${item.firstPath }" />
		</div>
		</c:if>
		</c:if>
		</c:forEach>
	</div>
	<div class="nb-stage s1 return start">
		<c:forEach items="${goodsaaaa}" var="item">
			<c:if test="${item.giattribute eq '配件'}">
				<c:if test="${item.giposition eq 4 }">
					<div class="section">
						<div class="title">
							<h2>${item.giname }</h2>

							<p class="stitle">${item.gisketck }</p>
						</div>
						<div class="figure">
							<img style="visibility: visible;" src="${item.firstPath }"
								height="590" width="285">
						</div>
					</div>
				</c:if>
			</c:if>
		</c:forEach>

	</div>

	<div class="nb-stage s2" onMouseOver="mouseover()">
		<div class="index-s2-video">
			<c:forEach items="${goodsaaaa}" var="item">
				<c:if test="${item.giattribute eq '配件'}">
					<c:if test="${item.giposition eq 5}">
						<video id="video">
							<source src=" ${item.firstPath }" type="video/mp4">
						</video>
					</c:if>
				</c:if>
			</c:forEach>

		</div>

	</div>



	<div class="nb-stage s4" onMouseOver="gundong()">
		<div class="section">
			<c:forEach items="${goodsaaaa}" var="item">
				<c:if test="${item.giattribute eq '配件'}">
					<c:if test="${item.giposition eq 6}">
						<div class="title">
							<h2>${item.giname }</h2>

							<p class="stitle">${item.gisketck }</p>
					</c:if>
				</c:if>
			</c:forEach>

			<ul>
				<li class="n1"><img src="images/zx300-s4-sc1.png" height="120"
					width="100"> <span><strong id="add1">0.1</strong><b>次</b></span>
				<p>nubia Z9 系列手机充电</p></li>
				<li class="n2"><img src="images/zx300-s4-sc2.png" height="120"
					width="100"> <span><strong id="add2">0.1</strong><b>次</b></span>
				<p>iPhone 6 手机充电</p></li>
				<li class="n3"><img src="images/zx300-s4-sc3.png" height="120"
					width="100"> <span><strong id="add3">0.1</strong><b>次</b></span>
				<p>iPhone 6 Plus 手机充电</p></li>
			</ul>
		</div>
	</div>
	</div>




	</div>

	<div class="nb-purchase-popup" id="fa-click">
		<a class="nb-p-close" href="#"><img onClick="check2()"
			src="images/nb-p-close-ico.jpg" height="40" width="40"></a>
		<div class="nb-p-layer">
			<div class="figure-area">
				<img style="z-index: 9; display: block; opacity: 1;"
					src="images/nb-p-figure1.jpg" height="410" width="410"> <img
					style="z-index: 1; display: none;" src="images/nb-p-figure2.jpg"
					height="410" width="410"> <img
					style="z-index: 1; display: none;" src="images/nb-p-figure3.jpg"
					height="410" width="410"> <img
					style="z-index: 1; display: none;" src="images/nb-p-figure4.jpg"
					height="410" width="410">
			</div>
			<div class="nbp-goods-info">

				<h2 class="title">nubia 炫彩移动电源</h2>
				<p class="subtitle">薄致用 彩倾心</p>
				<dl class="nbp-goods-color">
					<dt>选择颜色</dt>
					<dd>
						<a data-value="白色" class="border current"
							style="background-color: #FFFFFF;" buylimitnumber="0" sid="590"
							href="#"><em></em></a> <a data-value="橙色" class="border"
							style="background-color: #FFA500;" buylimitnumber="0" sid="696"
							href="#"><em></em></a>
						<!--a data-value="白色" class="border" style="background-color:#fff;" href="#"><em></em></a>
								<a data-value="橙色" style="background-color:#ff9844;" href="#"><em></em></a>
								<a data-value="蓝色" style="background-color:#28cec8;" href="#"><em></em></a>
								<a data-value="黑色" style="background-color:#424242;" href="#"><em></em></a-->
						<input value="白色" type="hidden">

					</dd>
				</dl>
				<dl class="nbp-goods-count">
					<dt>选择数量</dt>
					<dd>
						<strong class="cl"> <b class="r"></b> <input value="1"
							type="text"> <b class="p"></b>
						</strong>
					</dd>
				</dl>
				<div class="nbp-goods-price">
					<strong><sup>￥</sup>129</strong>
				</div>
				<div class="nbp-goods-btn">
					<a href="#">立即购买</a>
					<p style="display: none; color: red; margin-top: 5px;">库存不足</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
