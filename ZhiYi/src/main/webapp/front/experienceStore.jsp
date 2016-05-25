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
<title>指艺体验店——指尖的艺术，你值得拥有</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/experienceStore.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link href="css/experienceStore.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->

</head>

<body>
	<div id="fa-moblie">
		<!-- --nubia wrap-- -->
		<div id="fa-header">
			<div id="fa-center">
				<a class="fa-logo" href="front/index.jsp"><img
					src="images/DSC_0030.png" />指艺</a>
				<ul class="fa-centers">
					<li class="first1"><a href="front/shoppingmall.jsp">商城</a></li>
					<li><a href="front/parts.jsp">配件</a></li>
					<li><a href="front/fa.jsp">应用</a></li>
					<li><a href="front/shouhou.jsp">服务</a></li>
					<li><a href="front/experienceStore.jsp">体验店</a></li>
					<li class="last1"><a href="#">社区</a></li>
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
	</div>
	<div class="bg-store"></div>
	<div class="map" id="map">
		<script>
        	$('#map').load('jquery_chinaMap.html');
        </script>
	</div>



	<!--4个小活动-->
	<div class="container" style="margin-top:30px;margin-bottom:60px">
		<div class="store">
			<div class="store-news">
				<ul class="st-list">
					<li><img src="images/store_news01.jpg" alt="">
						<div class="dec">
							<h1>最全面的咨询服务</h1>
							<p>您可以获得关于nubia官方产品最全面的产品信息。无论是产品规格还是操作指导，甚至包括更深入的玩机技巧，nubia销售顾问都乐意为您耐心解答。</p>
						</div>
					</li>
					<li><img src="images/store_news02.jpg" alt="">
						<div class="dec">
							<h1>深圳卫视采访nubia</h1>
							<p>5.17世界电信日，深圳卫视第一现场／1时间前来采访nubia努比亚深圳旗舰店 。
								电信日期间，nubia体验店开展了”一机在手，3G随心“的活动。</p>
						</div>
					</li>
					<li><img src="images/store_news03.jpg" alt="">
						<div class="dec">
							<h1>母亲节进店有礼</h1>
							<p>母亲节到来之际，nubia邀请30名牛仔向妈妈说爱，参与活动有机会得母亲节礼包！5月10日至11日，nubia全国体验店进店有礼，先到先得。</p>
						</div>
					</li>
					<li><img src="images/store_news04.jpg" alt="">
						<div class="dec">
							<h1>体验店温馨提示</h1>
							<p>南方地区近日多雨，nubia智能手机个性化的情景模式提醒功能，会根据当天天气情况提醒您，今天出门是否需要带雨伞。</p>
						</div>
					</li>
				</ul>
			</div>
		</div>
		<!--尾部-->
		<div id="nb-footer" style="background:#fff;">
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
