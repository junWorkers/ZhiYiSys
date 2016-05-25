<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en"><head>
 <base href="<%=basePath%>">
<title>指艺首页——指尖的艺术，你值得拥有</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/xiaoshou.js"></script>
<link href="css/index.css" rel="stylesheet" type="text/css"/>
<link href="css/shouhou.css" rel="stylesheet" type="text/css"/>
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->
    <meta charset="utf-8"> 
   
    <style>                
       body{ font: 12px/1.5 'Microsoft Yahei','Simsun'; }
        .main{margin:0 auto;margin-top:60px;margin-bottom:60px;background:#fff;}
        .container{overflow: hidden;zoom:1;}
        .container .info{height: 35px;border-bottom:2px dotted #e5e5e5; padding: 24px;}
        .info .left{float: left;color:#e8380d;font-size: 24px;display: inline-block;font-weight: bold;}
        .info .right{float: right;display: inline-block;}
        .info-user{width:680px; margin:0 auto;margin-top:40px;margin-bottom:50px;overflow: hidden;zoom:1}
        .info-user .info-user-inner{overflow: hidden;margin-bottom: 50px;}
        .user-thumnail{float: left;}
        .info-list{float: left;margin-left:50px;margin-top:4px;list-style:none}
        .info-list span{color: #999; font-weight: bold;margin-left: 16px;width: 50px;font-size: 14px;}
        .info-list li{color:#000;font-weight: bold;margin-bottom: 24px;}
        .info-list .pl24{padding-left: 24px;}
        .info-list a{text-decoration: underline;color:#e8380d;margin-left:17px}
        .user-serices{overflow: hidden;zoom:1;list-style:none}
        .user-serices h2{font-weight: bold; color:#e8380d;margin-bottom: 10px;}
        .user-serices ul{ border-top:1px solid #e8380d;padding:16px 0 60px 0;overflow: hidden;}
        .user-serices li{float: left;margin-right: 8px;}
        .user-serices li a {display:block;padding:10px 30px;border:1px solid #dadada;font-weight: bold;background: #eeeeee url(/res/images/bgs.png) repeat-x 0 -40px;border-radius: 4px;}
        .user-serices li a:hover{color:#fff;background:#e8380d url(/res/images/bgs.png) repeat-x 0 -330px;}
</style>  
<script type="text/javascript">
$(function(){
	$.post("usersServlet",{op:'finduser'},function(data){
		
	});
                                      
});
</script>        
</head>
<body>
<div id="fa-moblie">
    	<!---头部--->
    	<div id="fa-header">
        	<div id="fa-center">
                <a class="fa-logo" href="front/index.jsp"><img src="images/DSC_0030.png"/>指艺</a>
                <ul class="fa-centers">
                    <li class="first1"><a href="front/shoppingmall.jsp">商城</a></li>
                    <li><a href="front/parts.jsp">配件</a></li>
                    <li><a href="front/fa.jsp">应用</a></li>
                    <li><a href="front/shouhou.jsp">服务</a></li>
                    <li><a href="front/experienceStore.jsp">体验店</a></li>
                    <li class="last1"><a href="#">社区</a></li>
                </ul>
                <img class="img1" src="images/zhuci.jpg"/>
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
		<div class="bg-services">
			
		</div>
    <div id="PageMain" class="wrapper">
        <div class="main">
            <div class="container">
				<div class="info-user">
					<div class="info-user-inner">
						<div class="user-thumnail"><img src="images/thumnail_user.jpg" alt=""></div>
						<ul class="info-list">
							<li class="pl24"><span>用户名：</span>
								${currentAdminInfo}									
															</li>
							<li class="pl24"><span>邮箱：</span>
									<c:if test="${not empty (usermessage.email)}">
                						${usermessage.email}
                					</c:if>
								    <c:if test="${empty (usermessage.email)}">
                						[未绑定]
                					</c:if>                    
							</li>
							<li class="pl24"><span>手机：</span>
									<c:if test="${not empty (usermessage.phone)}">
                						${usermessage.phone}
                					</c:if>
								    <c:if test="${empty (usermessage.phone)}">
                						[未绑定]
                					</c:if>								
															</li>
							<li class="pl24"><span>密码：</span>
																	<a href="front/update.jsp">更改</a>
															</li>
						</ul>
					</div>
					<div class="user-serices">
						<h2>可用服务</h2>
						<ul style="list-style:none">
															<li><a href="" target="_blank">指艺官网</a></li>
															<li><a href="" target="_blank">指艺社区</a></li>
															<li><a href="" target="_blank">指艺应用</a></li>
													</ul>
					</div>
				</div>
            </div>
        </div>
    </div>
    

</body></html>