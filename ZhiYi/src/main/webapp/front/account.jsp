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
<title>找回密码——指艺官方网站</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/account.js"></script>
<script type="text/javascript" src="js/test.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link href="css/account.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<!-- <script type="text/javascript"> 
var countdown=60; 
function settime(obj) { 
    if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="免费获取验证码"; 
        countdown = 60; 
        return;
    } else { 
        obj.setAttribute("disabled", true); 
        obj.value="重新发送(" + countdown + ")"; 
        countdown--; 
    } 
setTimeout(function() { 
    settime(obj) }
    ,1000) 
}
</script> -->
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
		<div class="bg-fetchpassword">
			<div class="bg-nav">
				<ul>
					<li><a href="">首页</a>></li>
					<li><a href="">找回密码</a>
					</li>
				</ul>
			</div>
		</div>

		<div id="PageMain" class="wrapper">
			<div class="passwordtop"></div>
			<div id="container" class="mt20 userT clearfix findpassword">
				<div class="userB">
					<div class="userBox tc">
						<div class="loginHeader">
							<h1>重设密码</h1>
						</div>
						<form id="theForm" class="member-form" action="#" method="post">
							<p>忘记密码了？请输入您的注册邮箱，我们会向您的邮箱发送一个重设密码的验证码。</p>

							<dl class="clearfix email-el mb20">
								<dt>验证邮箱：</dt>
								<dd>
									<input type="text" class="text required validate-email"
										id="email" name="email" placeholder="请输入常用的邮箱"
										onBlur="checkEmail()"> <span
										class="check_tips error_tip" id="email_error_tag"
										style=" font-size:12px;"></span> <span
										class="check_tips succ_tips" id="email_succ_tag">&nbsp;</span>
								</dd>
							</dl>

							<dl class="clearfix email-el mb20">
								<dt>验证码：</dt>
								<dd style="padding-left:33px;">
									<input type="text" id="captcha"
										class="text captchainput required" name="captcha"
										placeholder="请输入邮箱接收的验证码" 
										onBlur="checkcaptcha()">
									<a href="javascript:changeVilidateCode(this)" title="点击刷新验证码"  id="hqcode">免费获取验证码</a>
									<input type="button" id="btn" value="免费获取验证码" onclick="settime(this)"/>
									<span class="check_tips error_tip" id="captcha_error_tag"
										style="font-size:12px;"></span> <span
										class="check_tips succ_tips" id="captcha_succ_tag">&nbsp;</span>
								</dd>
							</dl>
						</form><br/><br/><br/><br/>
					
						<div class="buttons" style="margin-left:33%;padding-bottom: 2%;">
                 			 <input type="hidden" name="back_url" value="#">
                  			 <a class="btn" name="submit_btn" id="fetch_btn" href="javascript:next()">下一步</a>
             			 </div>	
						
							
						
					</div>
				</div>
			</div>
		</div>
		<!--尾部-->
		<div id="nb-footer">
			<div class="nubia-copyright">
				<div class="nubia-foot-nav">
					<a target="_blank" href="#">关于我们</a>| <a target="_blank" href="#">联系我们</a>|
					<a target="_blank" href="#">新闻中心</a>| <a target="_blank" href="#">加入我们</a>|
					<a target="_blank" href="#">公益</a>| <a target="_blank" href="#">星空之约</a>|
					<a href="javascript:void(0);" onclick="showFeedBack();">问题反馈</a>
				</div>
				<div class="foot-link-tel">
					<a href="javascript:;" onclick="window.open('##')">7*24小时在线客服</a>
					<div class="tel">
						<img src="images/nb-mbc-tel.jpg" width="190" height="25">
					</div>
					<p>周一到周日 8:30-20:30 (全年无休)</p>
				</div>
				<p class="nb-footer-info">
					2012-2015 指艺 版权所有 <a href="#">粤ICP备10006213号-2</a>
					ICP经营许可证编号：粤B2-20120688 努比亚技术有限公司
				</p>
			</div>
		</div>
	</div>
</body>
</html>
