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
<title>指艺手机——无边框的智能手机，你值得拥有</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/showPackage.js"></script>
<link href="css/showPackage.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->

</head>

<body>
	<%@include file="header.jsp"%>
	<div style="width: 100%; height: 61px;"></div>
	<div class="step-banner">
		<div class="bg-nav">
			<ul>
				<li><a href="/">首页 </a>&gt;</li>
				<li><a href="javascript:void(0)">指艺 Z9Z9 套餐选择</a></li>
			</ul>
		</div>
	</div>

	<h2 class="step3-wrapper-h2">请确认订单</h2>
	<input type="hidden" id="masterid">
	<div class="step3-wrapper">
		<div class="compose-menu clearfix_jj">
			<ul class="clearfix_jj">
				<li id="onlyphone" class="onlyphone packageitem current" sid="568">
					<h3 id="taocan">商品如下</h3>
					<p>
						<span>￥</span><a id="phoneprice">${goodsname.price}</a>
					</p>
				</li>
			</ul>
		</div>
		<div class="compose-content current clearfix_jj">
			<div class="row clearfix_jj">
				<div class="item masterproduct" sid="568">
					<a href="#" target="_blank"> <img id="img"
						style="margin-top: -36px;" alt="nubia套餐选择" src="">
					</a>
					<h3 id="miaoshu"></h3>
					<p id="gpid" style="display: none;">${gpid.gpid}</p>
				</div>
			</div>
			<div class="section smarty">
				<div class="right">
					<p>
						市场价：<span class="packageprice">￥<a id="allprice"></a></span>
					</p>
					<p class="submit-btn">
						<span><a href="front/shoppingCart.jsp" onClick="buy()">加入购物车</a></span>
					</p>
				</div>
			</div>
		</div>
	</div>
	<!--尾部-->
	<div id="nb-footer" style="background: #F5F5F5;">
		<div class="nubia-copyright">
			<div class="nubia-foot-nav">
				<a target="_blank" href="#">关于我们</a>| <a target="_blank" href="#">联系我们</a>|
				<a target="_blank" href="#">新闻中心</a>| <a target="_blank" href="#">加入我们</a>|
				<a target="_blank" href="#">公益</a>| <a target="_blank" href="#">星空之约</a>|
				<a href="javascript:void(0);" onclick="showFeedBack();">问题反馈</a>
			</div>
			<p class="nb-footer-info">
				2012-2015 指艺 版权所有 <a href="#">粤ICP备10006213号-2</a>
				ICP经营许可证编号：粤B2-20120688 努比亚技术有限公司
			</p>
		</div>
	</div>
</body>
</html>