<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>指艺体验店——指尖的艺术，你值得拥有</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/experienceStore.js"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=mOKXtrTW6Up73wPEBmfbAP8B"></script>
<script type="text/javascript" src="js/index.js"></script>
<link href="css/experienceStore.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<script type="text/javascript">

</script>
</head>

<body>
	<%@include file="header.jsp"%>
	<div class="bg-store"></div>
	<div id="tiyan" class="experstore-layer cl" style="display: block;">

		<div style="display: block;" class="cl experstore-layer-area">
			<div class="experstore-sw-tab">
				<ul>
					<li class="current" lat="${tititi.lat}" lon="${tititi.lon}" >
						<a>${tititi.address }<b class="nb-----ico"></b> </a>
						<p id="aa" style="display:none">${tititi.province }</p>
						<p id="bb" style="display:none">${tititi.lat}</p>
						<p id="cc" style="display:none">${tititi.lon}</p>
					</li>
				</ul>

				<div id="container1"
					style="display:block; width:760px; height:400px;"></div>

				<script type="text/javascript">
					 var z=document.getElementById("aa").innerHTML;
					  var x=document.getElementById("bb").innerHTML;
					   var y=document.getElementById("cc").innerHTML;
					   
					var map = new BMap.Map("container1"); // 创建地图实例
					var point = new BMap.Point(y, x); // 创建中心点坐标
					map.centerAndZoom(point, 15); // 初始化地图，设置中心点坐标和地图级别
					map.addControl(new BMap.NavigationControl());//地图平移缩放控件
					map.addControl(new BMap.MapTypeControl());//地图类型控件，默认位于地图右上方
					map.setCurrentCity(z); // 仅当设置城市信息时， MapTypeControl 的切换功能才能可用
					map.addControl(new BMap.ScaleControl());//比例尺控件，默认位于地图左下方，显示地图的比例关系。
					
				
				</script>
			</div>



		</div>
		<div class="experstore-store-box" style="display: block";>
			<ul>
				<li style="display: block; left: 0px;">
					<dl>
						<dd class="add cl">
							<img src="images/icon3.png" /><label>地址：</label>
							<p>${tititi.stname }</p>
							<p id="aa" style="display:none">${tititi.province }</p>
						</dd>
						<dd class="tel">
							<img src="images/icon4.png" /><label>电话：</label>
							<p>${tititi.phone }</p>
						</dd>
						<dd class="time">
							<img src="images/icon6.png" /><label>服务时间：</label>
							<p>
								<span>${tititi.etime }</span>
							</p>
						</dd>
						<dd class="traf">
							<img src="images/icon7.png" /><label>前往方法：</label>
							<p>${tititi.pattern }</p>
						</dd>
						<dd class="servise">
							<img src="images/icon8.png" /><label>服务支持：</label>
						</dd>
						<dd class="list">
							<img src="images/icon9.png" />
						</dd>
						<dd class="pri">
							<label onclick="ok()">预约</label>
						</dd>
					</dl>
				</li>
			</ul>
		</div>
	</div>


	<!--4个小活动-->
	<div class="container">
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
