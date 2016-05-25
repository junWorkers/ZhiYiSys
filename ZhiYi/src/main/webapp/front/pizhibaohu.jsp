<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!doctype html>
<html>
<head>
 <base href="<%=basePath%>">
<meta charset="utf-8">
<title>皮质保护套</title>
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/pizhibaohutao.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/pizhi.js"></script>
<script type="text/javascript" src="js/pizhi1.js"></script>
<script type="text/javascript" src="js/replacecolor.js"></script>
</head>

<body>
    	
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


<div style="width:100%;height:61px;"></div>	
<div class="pdtby">
		<div class="pdtby-inner">
			<div class="pdtby-details">
				<h1 class="pdtby-title">Z9 Max皮质保护套</h1>
				<h2 class="pdtby-dec">注：此商品不适用于Z9 Max精英版</h2>
				<div class="pdtby-price">￥169.00</div>
				<div id="siber" class="pdtby-img">
					<a class="current" onClick="blocks(this,1)">
                        <img src="images/pizhi-1.png">
                    </a>
					<a class="" onClick="blocks(this,2)">
                   		<img src="images/pizhi-5.png">
                    </a>
				</div>
										
				<div class="pdtby-btn-groups" style="margin-top: 30px;">
						<input type="hidden" id="specId" value="551">
						<div class="btn-gobuy"><a>加入购物车</a></div>
                    <div style="display: none;" class="btn-gobuy-qhdj" id="arrivalnotice">缺货登记</div>
				</div>					
			</div>
            
            <div class="gallery">
                
                <div id="1" class="lunbo"  style="display:block">
					<div class="tabs">
                    	<ul id="show_img1" class="thuma">
							<li style="display:block"><img src="images/pizhi-1.png" alt="Z9 Max皮质保护套"></li>
                            <li style="display:none"><img src="images/pizhi-2.png" alt="Z9 Max皮质保护套"></li>
                            <li style="display:none"><img src="images/pizhi-3.png" alt="Z9 Max皮质保护套"></li>
                            <li style="display:none"><img src="images/pizhi-4.png" alt="Z9 Max皮质保护套"></li>
                        </ul>
                    </div>
                    <div>
						<ul id="show_small_img1" class="thumb">
                        	<li class="selected"><a><img src="images/pizhi-1.png"></a></li>
                            <li><a><img src="images/pizhi-2.png"></a></li>
                            <li><a><img src="images/pizhi-3.png"></a></li>
                            <li><a><img src="images/pizhi-4.png"></a></li>
                        </ul>
					</div>                   
				</div>
                
                
                <div id="2" class="lunbo"  style="display:none">
					<div class="tabs">
                    	<ul id="show_img" class="thuma">
							<li style="display:block"><img src="images/pizhi-5.png" alt="Z9 Max皮质保护套"></li>
                            <li style="display:none"><img src="images/pizhi-6.png" alt="Z9 Max皮质保护套"></li>
                            <li style="display:none"><img src="images/pizhi-7.png" alt="Z9 Max皮质保护套"></li>
                            <li style="display:none"><img src="images/pizhi-8.png" alt="Z9 Max皮质保护套"></li>
                        </ul>
                    </div>
                    <div>
						<ul id="show_small_img" class="thumb">
                        	<li class="selected"><a><img src="images/pizhi-5.png"></a></li>
                            <li><a><img src="images/pizhi-6.png"></a></li>
                            <li><a><img src="images/pizhi-7.png"></a></li>
                            <li><a><img src="images/pizhi-8.png"></a></li>
                        </ul>
					</div>                   
				</div>
			</div>
		</div>
	</div>
    
    <div class="pdt-content">
		<div class="tab-content">
			<div class="tab-pane active" id="myTab01" style="width:1170px;margin:0 auto;">
				<div><img alt="Z9 Max皮质保护套" src="images/pizhi-d1.jpg"></div>
				<div><img alt="Z9 Max皮质保护套" src="images/pizhi-d2.jpg"></div>
				<div><img alt="Z9 Max皮质保护套" src="images/pizhi-d3.jpg"></div>
				<div><img alt="Z9 Max皮质保护套" src="images/pizhi-d4.jpg"></div>
				<div><img alt="Z9 Max皮质保护套" src="images/pizhi-d5.jpg"></div>
				<div><img alt="Z9 Max皮质保护套" src="images/pizhi-d6.jpg"></div>
				<div><img alt="Z9 Max皮质保护套" src="images/pizhi-d7.jpg"></div>
			</div>		 			 
		</div>			
	</div>
</body>
</html>

  