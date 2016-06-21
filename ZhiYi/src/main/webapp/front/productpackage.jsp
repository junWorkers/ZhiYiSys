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
<title>指艺手机——无边框的智能手机，你值得拥有</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/productpackage.js"></script>
<link href="css/productpackage.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/index.js"></script>
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->

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
			<div class="item1 "><a href="#"><img src="images/rec18.png" alt="nubia My Prague"></a></div>	
			<div class="item on"><a href="#"><img src="images/rec17.png" alt="nubia Z9"></a></div>	
			<div class="item "><a href="#"><img src="images/rec16.png" alt="nubia Z9 Max"></a></div>
			<div class="item "><a href="#"><img src="images/rec15.png" alt="nubia Z9 mini"></a></div>
			<div class="item "><a href="#"><img src="images/rec11.png" alt="nubia Z7"></a></div>
			<div class="item "><a href="#"><img src="images/rec09.png" alt="nubia Z7 Max"></a></div>
			<div class="item "><a href="#"><img src="images/rec10.png" alt="nubia Z7 mini"></a></div>
			<div class="item "><a href="#"><img src="images/rec08.png" alt="nubia X6"></a></div>	
			<div class="clearfix"></div>
		</div>
	</div>
	
    <div class="step-color-select" productid="434" >
		<h2><em>1</em>选择<a id="gname">${goodsname.gname}</a>手机颜色</h2>
		<div class="section color clearfix_jj">
				
	<c:choose>
				<c:when test="${not empty goodParssss[0].gppath }">
					<div class="item clearfix_jj" colorid="21" id="1" onClick="choose(1)" style="background-color:#ccc;">
				<img id="img1"  src="${goodParssss[0].gppath}">
				<div>
					<h3 id="color1">${goodParssss[0].color}</h3>
				</div>
			</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>		
			
			
			<c:choose>
				<c:when test="${not empty goodParssss[1].gppath }">
					<div class="item clearfix_jj" colorid="33" id="2" onClick="choose(2)">
				<img id="img2"  src="${goodParssss[1].gppath}">
				<div>
					<h3 id="color2">${goodParssss[1].color}</h3>
				</div>
			</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>		
			
			
				<c:choose>
				<c:when test="${not empty goodParssss[2].gppath }">
						<div class="item clearfix_jj" colorid="38" id="3" onClick="choose(3)">
				<img id="img3"  src="${goodParssss[2].gppath}">
				<div>
					<h3 id="color3">${goodParssss[2].color}</h3>
				</div>
			</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>		
			
		
	</div>
   <div class="version" style="display:none" >
			<h2><em>2</em>、选择版本</h2>
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
                <p class="next-tip-2" style="display:none">您选择的商品暂时缺货</p>
				<a class="next-btn" href="front/showPackage.jsp" onclick="">下一步</a>
			</div>
		</div>
	</div>
    <!--尾部-->
     <div id="nb-footer" style="background:#F5F5F5;">
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
        	<p class="nb-footer-info"> 2012-2015 指艺 版权所有 <a href="#">粤ICP备10006213号-2</a> ICP经营许可证编号：粤B2-20120688 努比亚技术有限公司</p>
        </div>
        
        
        
    </div>
    </body>
    </html>