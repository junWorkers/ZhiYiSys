<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html>
<meta charset="utf-8">
<title>用户登录——指术官方网站</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/login.js"></script>
<link href="css/login.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->

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
				<li><a href="register.html">注册</a>
				</li>
				<li><a href="login.html">登录</a>
				</li>
			</ul>
		</div>
	</div>
        <div class="bg-login">
        	<div class="bg-nav">
                <ul>
                    <li> <a href="">首页</a> ></li> 
                    <li> <a href="">登录</a> </li>
                </ul>
        	</div>
   	    </div>
        
        <div class="write">一个账号，玩转指艺所有服务</div>
        
        <div class="login">
			<div class="login-l">
				<form action="users_login" method="post" id ="login_form">
					<input type="hidden" name="form_tag" id="form_tag" value="">
					<c:if test="${not empty sessionScope.errorMsg}">
							<div style="color: red;font-size: 20px">${sessionScope.errorMsg}</div>
                		
                	</c:if>
                	<c:if test="${empty sessionScope.errorMsg}">
                		  <div class="login-h1">登录到您的帐户</div>
                	</c:if>
					
					<div class="login-id">
						<input type="text" name="uname" autocomplete="off" id="inputEmail"value=""  placeholder="邮箱/用户名" class="login-id" onBlur="checkUname()" />
						<div class="icon-id"></div>
					</div>
					<div class="form-id tc mb15 " id ='user_name_tag'  style="color:#EC4430;font-size:12px;margin-bottom: 10px;"></div>
					<div class="login-pwd">
						<input type="password" name="pwd" id="password_id" placeholder="密码" class="login-pwd" onBlur="checkpwd()"/>
						<div class="icon-pwd"></div>
					</div>
					<input type="hidden" name="back_url" value=''/>
					<div class="form-id tc mb15 error-tag-text" id = 'password_tag'  style="color:#EC4430;font-size:12px;margin-bottom: 10px;"></div>
					<div class="third-login">
						<label class="login-rem">
						<a href="#" class="qq"></a>
						<a href="#" class="weibo"></a>
						</label>
					</div>
					<input type="submit" style="margin-top:10px" id="login_btn_id" value="立即登录" class="btn-login"/>
				</form>
			</div>
            <div class="login-r">
				<div class="login-step">
					<dl>
						<span class="u u2019"><img src="images/register.png" /></span>
						<dt>您没有一个帐户</dt>
						<dd><a href="register.html">现在注册</a></dd>
					</dl>
					<dl>
						<span class="u u1819"><img src="images/lose.png" /></span>
						<dt>忘记了您的帐户</dt>
						<dd><a href="front/account.jsp">用户名/密码</a></dd>
					</dl>
					<dl>
						<span class="u u1619"><img src="images/lianxi.png" /></span>
						<dt>您有任何的问题</dt>
						<dd><a href="#">联系我们</a></dd>
					</dl>
				</div>
			</div>
		</div>
   </div>
   <!--尾部-->
      <div id="nb-footer">
        	 <div class="nubia-copyright">
                <div class="nubia-foot-nav">
                    <a target="_blank" href="#">关于我们</a>|
                    <a target="_blank" href="#">联系我们</a>|
                    <a target="_blank" href="#">新闻中心</a>|
                    <a target="_blank" href="#">加入我们</a>|
                    <a target="_blank" href="#">公益</a>|
                    <a target="_blank" href="#">星空之约</a>|
                    <a href="javascript:void(0);" onclick="showFeedBack();">问题反馈</a>
                </div>
                <div class="foot-link-tel">
                            <a href="javascript:;" onclick="window.open('##')">7*24小时在线客服</a>
                            <div class="tel">
                          	  <img src="images/nb-mbc-tel.jpg" width="190" height="25">
                            </div>
                            <p>周一到周日 8:30-20:30 (全年无休)</p>
               </div>
        	<p class="nb-footer-info"> 2012-2015 指艺 版权所有 <a href="#">粤ICP备10006213号-2</a> ICP经营许可证编号：粤B2-20120688 努比亚技术有限公司</p>
        </div> 
    </div>
    </body>
    </html>