<%@ page  contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<base href="/ZhiYi/">
<meta content="charset=utf-8">
<title>用户注册——指术官方网站</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/register.js"></script>
<link href="css/register.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->

</head>

<body>
	<div id="fa-moblie">
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
            	<li> <a href="">注册</a> </li>
            </ul>
        </div>
   </div>
   
   <div class="register">
   		<div class="loginHeader">
            <h1>nubia新用户注册</h1>
            <h2>如果您已拥有nubia帐户，则可<a href="login.html">在此点击登录</a></h2>
        </div>
        
        <form action="Users_register.action" method="post">
          <div class="inner">
              <ul class="clearfix">
                  <li>用电子邮箱注册</li>
              </ul>
          </div><br/>
        
         <div id="mobile_id" class="regiterPanel" style="display:block;">
            
            <dl class="clearfixs" style="display:block;">
                <dt>邮件地址：</dt>
                <dd>
                    <input type="text" class="required" name="email" id="email" placeholder="  请输入常用邮箱地址" onBlur="checkEmail()">
                    <span class="error_tip" id="email_error_tag" style="font-size:12px"></span> 
				    <span class="check_tips succ_tips" id="email_succ_tag">&nbsp;</span>
                </dd>
            </dl> 
        </div>
        
        <div class="cc regiterPanel">
        
        
           <dl class="clearfixs" style="display:block;">
                <dt>用户名：</dt>
                <dd>
                    &nbsp;&nbsp;&nbsp;<input type="text" class="required" name="pname" id="name" placeholder="  用户名" onBlur="checkName()">
                    <span class="error_tip" id="name_error_tag" style="font-size:12px"></span> 
				    <span class="check_tips succ_tips" id="name_succ_tag">&nbsp;</span>
                </dd>
            </dl> 
            
        	<dl class="clearfixs">
                <dt>验证码：</dt>
               <dd style="width:600px" class="yzm">
                  <input id="mobile_captcha" class="text captchainput required" type="text" placeholder="  请输入右图中的字符（不区分大小写）" name="mobile_captcha" style="width:245px;float:left"onBlur="checkYzm()">
                  <img id="mobile_captchaImg" width="120" height="48" unselectable="on" style="float:left;margin-left:5px" src="valiCodeImg.jsp" title="点击刷新验证码" alt="">
                  <a id="mobile_newCaptcha" unselectable="on" style="cursor: pointer;line-height:48px;padding:5px" href="javascript:changeCode()"> 换一张</a>
                  <span id="mobile_captcha_succ_tag" class="check_tips succ_tips" style="font-size:12px;width:15px"> </span>
                  </dd>
               
            </dl>
            
           <dl class="clearfixs">
              <dt>设置密码：</dt>
              <dd>
                  <input type="password" class="text req required" name="pwd" id="newPassword" placeholder="  6-16个字符(数字、字母、符号至少包含两种)" onBlur="checkpwd()" />
                  <span class="check_tips error_tip" id="pwd_error_tag" style="font-size:12px;"></span>
			      <span class="check_tips succ_tips" id="pwd_succ_tag">&nbsp;</span> 	
              </dd>
          </dl>
          
          <dl class="clearfixs">
              <dt>确认密码：</dt>
              <dd>
                  <input type="password" class="text req required" name="repeatNewPassword" id="repeatNewPassword" placeholder="  请再次输入密码" onBlur="checkrpwd()" />
                  <span class="check_tips error_tip" id="rpwd_error_tag" style="font-size:12px;"></span> 
   				  <span class="check_tips succ_tips" id="rpwd_succ_tag">&nbsp;</span>
              </dd>
          </dl>
          <div class="regfooterbar">
              <div class="safe">
                  <div id="theAgreement">
                      <input type="checkbox" checked="checked" value="1" title="需要同意《用户服务协议》" name="agreement" id="agreement" class="nodeId">
                      我已经认真阅读
                      <a href="front/servicecontract.jsp" title="用户协议" target="_blank">用户协议</a>  和
                      <a href="front/privacystatement.jsp" title="隐私政策" target="_blank">隐私政策</a>，并完全同意协议中的所有条款
                  </div>
                  <div id="theAgreementAdvice" class="hint clear"></div>
              </div>
              <div class="buttons">
                  <input type="submit" name="back_url" value="提    交">
                  <!-- <a class="submit-btn" name="regButton" id="regButton" >提    交</a> -->
              </div>
          </div>
	
        </div>
       	</form>
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