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
<script type="text/javascript" src="js/productpackage.js"></script>
<link href="css/productpackage.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/index.js"></script>
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
				<li><a href="javascript:void(0)"> 购买指艺 Z9</a></li>
			</ul>
		</div>
	</div>

	<div class="select-phone">
		<div id="selectPhone-container">
			<div class="item1 ">
				<a href="#"><img src="images/rec18.png" alt="nubia My Prague"></a>
			</div>
			<div class="item on">
				<a href="#"><img src="images/rec17.png" alt="nubia Z9"></a>
			</div>
			<div class="item ">
				<a href="#"><img src="images/rec16.png" alt="nubia Z9 Max"></a>
			</div>
			<div class="item ">
				<a href="#"><img src="images/rec15.png" alt="nubia Z9 mini"></a>
			</div>
			<div class="item ">
				<a href="#"><img src="images/rec11.png" alt="nubia Z7"></a>
			</div>
			<div class="item ">
				<a href="#"><img src="images/rec09.png" alt="nubia Z7 Max"></a>
			</div>
			<div class="item ">
				<a href="#"><img src="images/rec10.png" alt="nubia Z7 mini"></a>
			</div>
			<div class="item ">
				<a href="#"><img src="images/rec08.png" alt="nubia X6"></a>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<div class="step-color-select" productid="434">
		<h2>
			<em>1</em>、选择<a id="gname"></a>手机颜色
		</h2>
		<div class="section color clearfix_jj">
			<div class="item clearfix_jj" colorid="21" id="1" onClick="choose(1)"
				style="background-color: #ccc;">
				<img id="img1" alt="nubia Z9" src="images/phone1.png">
				<div>
					<h3 id="color1">黑色</h3>
				</div>
			</div>
			<div class="item clearfix_jj" colorid="33" id="2" onClick="choose(2)">
				<img id="img2" alt="nubia Z9" src="images/phone2.png">
				<div>
					<h3 id="color2">金色</h3>
				</div>
			</div>
			<div class="item clearfix_jj" colorid="38" id="3" onClick="choose(3)">
				<img id="img3" alt="nubia Z9" src="images/phone3.png">
				<div>
					<h3 id="color3">皮质</h3>
				</div>
			</div>
		</div>
		<div class="version" style="display: none">
			<h2>
				<em>2</em>、选择版本
			</h2>
			<div class="section standard clearfix_jj">
				<div class="template clearfix_jj" productspecvalue="" sid="">
					<h3></h3>
					<p class="productpoint"></p>
					<p class="price"></p>
					<span></span>
				</div>
			</div>
		</div>

		<div class="section next">
			<div class="con" style="width: 430px;">
				<p class="next-tip-1">下一步，选择优惠配件套餐</p>
				<p class="next-tip-2" style="display: none">您选择的商品暂时缺货</p>
				<a class="next-btn" href="front/showPackage.jsp" onclick="">下一步</a>
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