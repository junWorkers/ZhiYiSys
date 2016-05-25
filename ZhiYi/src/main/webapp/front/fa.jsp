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
<title>fa_应用中心</title>
<base href="<%=basePath%>">
<link href="css/apply.css" rel="stylesheet" type="text/css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/footer.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/index.js"></script>
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/apply.js"></script>
</head>

<body>
	<div id="fa-moblie">
		<!---头部--->
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

		<div id="banner_tabs" class="ui-content-1 ui-carousel flexslider">
			<ul id="slides">
				<li id="b1" style="display:block"><a href="front/camera.jsp"><img
						src="images/recommend_1.png" />
				</a>
				</li>
				<li style="display:none" id="b2"><a href="front/music.jsp"><img
						src="images/recommend_2.png" />
				</a>
				</li>
				<li style="display:none" id="b3"><a href="front/shijie.jsp"><img
						src="images/recommend_3.png" />
				</a>
				</li>
				<li style="display:none" i id="b4"><a href="front/mall.jsp"><img
						src="images/recommend_4.png" />
				</a>
				</li>
			</ul>

			<ol id="bannerCtrl" class="flex-control-nav flex-control-paging">
				<li id="a1" class="current"><a>1</a>
				</li>
				<li id="a2" class="current"><a>2</a>
				</li>
				<li id="a3" class="active current"><a>3</a>
				</li>
				<li id="a4" class="current"><a>4</a>
				</li>
			</ol>
		</div>

		<div class="content">
			<div class="container-theme-app">
				<div class="container-app">
					<div class="app-title">
						<h2>软件应用</h2>
					</div>
					<ul class="app-list">
						<li><a href="front/camera.jsp"> <img
								src="images/content_1.png" alt="" height="76" width="76">
						</a> <a href="front/camera.jsp">
								<h2>nubia相机</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/4">下载</a>
							</div></li>

						<li><a href="front/shijie.jsp"> <img
								src="images/content_2.png" alt="" height="76" width="76">
						</a> <a href="front/shijie.jsp">
								<h2>视界</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/5">下载</a>
							</div></li>

						<li><a href="front/niudun.jsp"> <img
								src="images/content_3.png" alt="" height="76" width="76">
						</a> <a href="front/niudun.jsp">
								<h2>牛盾</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/8">下载</a>
							</div></li>

						<li><a href="front/share.jsp"> <img src="images/content_4.png"
								alt="" height="76" width="76"> </a> <a href="front/share.jsp">
								<h2>互动分享</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/9">下载</a>
							</div></li>

						<li><a href="front/counter.jsp"> <img
								src="images/content_5.png" alt="" height="76" width="76">
						</a> <a href="front/counter.jsp">
								<h2>nubia计算器</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/10">下载</a>
							</div></li>

						<li><a href="front/flashlight.jsp"> <img
								src="images/content_6.png" alt="" height="76" width="76">
						</a> <a href="front/flashlight.jsp">
								<h2>nubia手电筒</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/11">下载</a>
							</div></li>

						<li><a href="front/music.jsp"> <img src="images/content_7.png"
								alt="" height="76" width="76"> </a> <a href="front/music.jsp">
								<h2>nubia音乐</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/12">下载</a>
							</div></li>

						<li><a href="front/yimodel.jsp"> <img
								src="images/content_8.png" alt="" height="76" width="76">
						</a> <a href="front/yimodel.jsp">
								<h2>易模式</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/13">下载</a>
							</div></li>

						<li><a href="front/timeManagement.jsp"> <img
								src="images/content_9.png" alt="" height="76" width="76">
						</a> <a href="front/timeManagement.jsp">
								<h2>nubia时间管理</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/14">下载</a>
							</div></li>

						<li><a href="front/electrician.jsp"> <img
								src="images/content_10.png" alt="" height="76" width="76">
						</a> <a href="front/electrician.jsp">
								<h2>nubia电工</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/26">下载</a>
							</div></li>

						<li><a href="front/mall.jsp"> <img src="images/content_11.png"
								alt="" height="76" width="76"> </a> <a href="front/mall.jsp">
								<h2>努比亚商城</h2> </a>
							<div class="star"></div>
							<div class="btn">
								<a href="http://app.nubia.cn/download/download_app/33">下载</a>
							</div></li>
					</ul>
				</div>
			</div>
			<div class="sidebar">
				<div class="search-zhuti-app">
					<form id="search_app" action="/app_search" method="post"
						style="display:inline-block;*display:inline;">
						<a></a> <input name="app_word" id="" maxlength="100"
							autocomplete="off" placeholder="搜索应用" type="search">
					</form>
				</div>

				<div class="rank">
					<div class="rank-app">
						<h1>应用下载排行榜</h1>
						<ul>
							<li>
								<div class="app-num">1</div> <a href="front/camera.jsp"> <img
									src="images/content_1.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/camera.jsp">nubia相机</a>
								</h2>
								<div class="star"></div></li>

							<li>
								<div class="app-num">2</div> <a href="front/electrician.jsp"> <img
									src="images/content_10.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/electrician.jsp">nubia电工</a>
								</h2>
								<div class="star"></div></li>

							<li>
								<div class="app-num">3</div> <a href="front/niudun.jsp"> <img
									src="images/content_3.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/niudun.jsp">牛盾</a>
								</h2>
								<div class="star"></div></li>

							<li>
								<div class="app-num">4</div> <a href="front/music.jsp"> <img
									src="images/content_7.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/music.jsp">nubia音乐</a>
								</h2>
								<div class="star"></div></li>

							<li>
								<div class="app-num">5</div> <a href="front/shijie.jsp"> <img
									src="images/content_2.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/shijie.jsp">视界</a>
								</h2>
								<div class="star"></div></li>

							<li>
								<div class="app-num">6</div> <a href="front/yimodel.jsp"> <img
									src="images/content_8.png" alt="" height="76" width="76">
							</a>
								<h2>
									<a href="front/yimodel.jsp">易模式</a>
								</h2>
								<div class="star"></div></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="footer">
			<div class="footer-btns">
				<ul>
					<li class="hk-f0000">
						<div class="f f0000"></div> <span>全场货到付款</span></li>
					<li class="hk-f0400">
						<div class="f f0400"></div> <span>7天无理由退货</span></li>
					<li class="hk-f0800">
						<div class="f f0800"></div> <span>售后上门服务</span></li>
					<li class="hk-f1200" style="margin-right:0px;">
						<div class="f f1200"></div> <span>满59元免费包邮</span></li>
				</ul>
			</div>
		</div>
	</div>
</html>
