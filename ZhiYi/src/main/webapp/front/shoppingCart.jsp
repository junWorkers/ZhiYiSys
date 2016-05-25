<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>查看购物车——指艺智能手机官网</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/shoppingCart.js"></script>
<script type="text/javascript" src="../js/index.js"></script>
<link href="css/shoppingCart.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->

</head>

<body>

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
					<li><a href="#">当前用户名：${currentAdminInfo}</a>
					</li>
					<li><a href="javascript:loginOut()">[注销]</a>
					</li>
				</c:if>
				<c:if test="${empty currentAdminInfo}">
					<li><a href="register.html">注册</a>
					</li>
					<li><a href="login.html">登录</a>
					</li>
				</c:if>
			</ul>
		</div>
	</div>
	<div class="bg-cart">
		<div class="bg-nav">
			<ul>
				<li><a href="front/shoppingmall.jsp">首页&nbsp;&nbsp;</a>&gt;&nbsp;&nbsp;</li>
				<li><a href="front/shoppingCart.jsp">您的购物车</a>
				</li>
			</ul>
		</div>
	</div>

	<div class="container">
		<div class="cart-con">
			<div class="cart-h1">
				您的购物车包含<a id="numbers"></a>个产品
			</div>
			<table class="cart-thead table table-hover table-bordered"
				cellspacing="0" cellpadding="0" border="0">
				<thead>
					<tr>
						<th width="13%">产品</th>
						<th width="45%">描述</th>
						<th width="11%">单价</th>
						<th width="16%">数量</th>
						<th width="10%">小计</th>
						<th width="5%">操作</th>
					</tr>
				</thead>
				<tbody id="tbody">
					<tr>

					</tr>
				</tbody>
				<tfoot>
					<tr>		
						<td colspan="3" style="height:100px;text-align:right">商品总计：</td>
						<td colspan="3" style="text-align:center;font-size:18px;font-weight:bold;" class="sum">￥<a id="allprice" style='color:red;'></a></td>
					</tr>
				</tfoot>
			</table>
			<div class="btn-cart-groups">
				<div class="btn-cart-groups-inner">
					<a href="front/shoppingmall.jsp" class="pay-continue">继续购物</a> <a
						href="front/payment.jsp" class="go-pay">立即结算</a>
				</div>
			</div>
		</div>

		<div class="cart-rec">
			<div class="cart-rec-h1">热门商品</div>
			<ul class="pdt-hot-list clearfix">
				<li style="border-right:none"><a href="#" target="_blank"
					class="pdt-hot-thumnails"> <img src="images/143082808037.png"
						alt="" style="height:auto"> </a>
					<div class="pdt-hot-details">
						<div class="pdt-hot-details-inner">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div>
							</div>
							<div class="sku02">
								<div class="sku02-name">Z9超薄保护套</div>
								<div class="sku02-price">￥39.00</div>
							</div>
						</div>
						<div productId=439 class="buy-btns">加入购物车</div>
					</div></li>
				<li style="border-right:none"><a href="#" target="_blank"
					class="pdt-hot-thumnails"> <img src="images/143684575895.png"
						alt="" style="height:auto"> </a>
					<div class="pdt-hot-details">
						<div class="pdt-hot-details-inner">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div>
							</div>
							<div class="sku02">
								<div class="sku02-name">nubia 炫彩自拍杆</div>
								<div class="sku02-price">￥79.00</div>
							</div>
						</div>
						<div productId=447 class="buy-btns">加入购物车</div>
					</div></li>
				<li style="border-right:none"><a href="#" target="_blank"
					class="pdt-hot-thumnails"> <img src="images/143683881432.png"
						alt="" style="height:auto"> </a>
					<div class="pdt-hot-details">
						<div class="pdt-hot-details-inner">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div>
							</div>
							<div class="sku02">
								<div class="sku02-name">nubia 炫彩移动电源</div>
								<div class="sku02-price">￥129.00</div>
							</div>
						</div>
						<div productId=446 class="buy-btns">加入购物车</div>
					</div></li>
				<li style="border-right:none"><a href="#"
					class="pdt-hot-thumnails"> <img src="images/143824732679.png"
						alt="" style="height:auto"> </a>
					<div class="pdt-hot-details">
						<div class="pdt-hot-details-inner">
							<div class="progress">
								<div class="progress-bar" role="progressbar" aria-valuenow="60"
									aria-valuemin="0" aria-valuemax="100" style="width: 30%;"></div>
							</div>
							<div class="sku02">
								<div class="sku02-name">Z9 防震保护套</div>
								<div class="sku02-price">￥39.00</div>
							</div>
						</div>
						<div productId=455 class="buy-btns">加入购物车</div>
					</div></li>

			</ul>
		</div>
	</div>
	<!--尾部-->
	<div id="nb-footer" style="background:#F5F5F5;">
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