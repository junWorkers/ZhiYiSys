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
<title>无标题文档</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>

<link rel="stylesheet" href="css/base.css">
<link href="css/index.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->

</head>

<body>
  <div class="color-undefined" id="nubia-wrap">
        <!-- --nubia wrap-- -->
<div id="dhl">
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

	<div style="width:100%;height:61px;"></div><style>
	.sub-menu li {margin-left: 10px;}
</style>
<div class="sub-nav" id="subNav">
        <div class="w1170">
           <a href="#" class="sub-logo-z9max1 fl">${goodsname.gname}</a>
		   <a href="http://www.nubia.cn/nubiaz9mark" class="sub-logo-z9max1 fl" style="margin-left:15px;border-left:1px solid #999;padding-left:15px;color:#999">艺术改变生活</a>
           <!--<a target="_blank" href="/book.php" class="fr btn-buy">立即预约</a>-->
		   <a target="_blank" href="front/productpackage.jsp" class="fr btn-buy">立即购买</a>
           <ul class="sub-menu clearfix fr" id="sub-menu">
              	<li class="active"><a href="#">概述</a></li>
                <li><a href="front/devise.jsp">设计</a></li>
                <li><a href="front/photograph.jsp">拍照</a></li>
                <li><a href="front/technical.jsp">技术规格</a></li>
               	<li><a href="front/accident.jsp">意外宝</a></li>
            </ul>
        </div>
</div>
<div class="wrap">
    <!-- 概述01 -->
    <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '概述'}">
        	<c:if test="${item.giposition eq 1 }">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 		<div class="section summary01">
      						  <div class="w1170">
        						 <div class="desc">
                					<h1>${item.giname }</h1>
               						 <small class="SYHT">${item.gisketck }</small>
            					</div>
          			 			 <div class="summary01-abs">
                					<img src="${item.firstPath }" alt="无边框努比亚nubia Z9">
           			 			</div>
           			 		 </div>
    					</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
    
        		
            <!-- <div class="desc">
                <h1>nubia Z9 无边框手机</h1>
                <small class="SYHT">科技与艺术的完美融合</small>

                <a class="btnplay" onclick="" videosrc="http://static.nubia.cn/flv/nubia_z9_phone.mp4"><i class="fa fa-play-circle-o" style="margin-right:5px;font-size: 32px;vertical-align: middle;"></i>观看外观视频</a>
            </div>
            <div class="summary01-abs">
                <img src="images/summary01.jpg" alt="无边框努比亚nubia Z9">
            </div> -->
    
    <!-- 概述02 -->
   
    <!-- 概述03 -->
    <c:forEach items="${goodsa}" var="item">
        		<c:if test="${item.giattribute eq '概述'}">
        			<c:if test="${item.giposition eq 2 }">
        			<c:choose>
				<c:when test="${not empty item.firstPath }">
				 		<div class="section summary03">
       						 <div class="w1170">
        						<div class="summary03-abs">
                					<img src="${item.firstPath } " alt="无边框努比亚nubia Z9">
           						 </div>           
            					<div class="desc">
                					<h1>${item.giname } <span style="color:red;font-size: 20px;vertical-align: text-top;">ⓟ</span><br> </h1>
                					<p class="SYHT">${item.gisketck }</p>
           						 </div>
           				</div>
    					</div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
			</c:if>
        </c:if>
    </c:forEach>
    
    
        		
        	<!--  
          	<div class="summary03-abs">
                <img src="images/summary03.jpg" alt="无边框努比亚nubia Z9">
            </div>           
            <div class="desc">
                <h1>FiT <span style="color:red;font-size: 20px;vertical-align: text-top;">ⓟ</span><br> </h1>
                <p class="SYHT">nubia Z9 带来交互的革命，创造性地发明边缘触控技术，引领人机交互进入全新的FiT交互时代，操作更便捷，体验更炫酷。</p>
                <a href="http://www.nubia.cn/nubiaz9?type=2" onclick="" class="nubia-red">了解更多操作系统 &gt;</a>
            </div>
        </div>
    </div>
            </div>-->
      
    <!-- 概述04 -->
    <style type="text/css">
           #summary04 .bx-prev{position: absolute; top: 37%; left:5%; margin-top: -16px; width: 55px; height: 132px; text-indent: -9999px; z-index: 9999; background: url(http://static.nubia.cn/product/z9/images/photo_btns.png) no-repeat 0 -113px; }
            #summary04 .bx-next{position: absolute; top: 37%; right:5%; margin-top: -16px; width: 55px; height: 132px; text-indent: -9999px; z-index: 9999; background: url(http://static.nubia.cn/product/z9/images/photo_btns.png) no-repeat -86px -113px; }
        #summary04 a.disabled{display: none;}

            #bx-pager01 a.on{background:#ebecef;}
            #bx-pager01 a{padding:10px 30px;display: block;float: left;color:#515151;border-right:1px solid #ccc;}
    </style>
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '概述'}">
        	<c:if test="${item.giposition eq 3 }">
        	<c:choose>
				<c:when test="${not empty item.firstPath }">
				 		 <div class="section summary04" id="summary04" style="position:relative">
          						 <div class="bx-wrapper" style="max-width: 100%;"><div class="bx-viewport" style="width: 100%; overflow: hidden; position: relative; height: 798px;"><ul class="bxslider" style="width: auto; position: relative;">
				
        					  		<img src="${item.firstPath }" stpeat: no-repeat "> 
        		
           </div><div class="bx-controls bx-has-pager bx-has-controls-direction"><div class="bx-pager bx-default-pager"><div class="bx-pager-item"><a href="" data-slide-index="0" class="bx-pager-link active">1</a></div><div class="bx-pager-item"><a href="" data-slide-index="1" class="bx-pager-link">2</a></div><div class="bx-pager-item"><a href="" data-slide-index="2" class="bx-pager-link">3</a></div><div class="bx-pager-item"><a href="" data-slide-index="3" class="bx-pager-link">4</a></div></div><div class="bx-controls-direction"><a class="bx-prev disabled" href="">Prev</a><a class="bx-next" href="">Next</a></div></div></div>
    </div>  
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
				</c:if>
        		</c:if>
        	</c:forEach>
   

    <!-- 概述05 -->
    <c:forEach items="${goodsa}" var="item">
        		<c:if test="${item.giattribute eq '概述'}">
        			<c:if test="${item.giposition eq 4 }">
        			<c:choose>
				<c:when test="${not empty item.firstPath }">
				 		<div class="section summary05">
       					 <div class="w1170">
        					  <div class="summary05-abs"> 
        					   <img src="${item.firstPath}" alt="无边框努比亚nubia Z9">  </div> 
        					    <div class="desc">
                <h1>${item.giname }</h1>
                <small>${item.gisketck}</small>
                   </div>
        		   </div>
    </div>
				</c:when>
				<c:otherwise>
				</c:otherwise>
			</c:choose>
				</c:if>
        		</c:if>
        	</c:forEach>
               
    
                    
           
               <!--  <ul class="params-horizon">
                    <li class="row">
                        <span class="col-left">屏幕技术</span>
                        <span class="col-right SYHT">CGS 工艺</span>
                    </li>
                    <li class="row">
                        <span class="col-left">色彩饱和度</span>
                        <span class="col-right SYHT">高达 90％</span>
                    </li>
                    <li class="row">
                        <span class="col-left">分辨率</span>
                        <span class="col-right SYHT">1920x1080</span>
                    </li>                     
                </ul> --> 
         
     
    
    <!-- 概述06 -->
     <c:forEach items="${goodsa}" var="item">
        <c:if test="${item.giattribute eq '概述'}">
        	<c:if test="${item.giposition eq 5 }">
        		<c:choose>
					<c:when test="${not empty item.firstPath }">
				 		<div class="section summary06">
        					<div class="w1170">
        						<div class="summary06-abs">
	                				<img src="${item.firstPath}" alt="无边框努比亚nubia Z9">
	            				</div> 
	            				<div class="desc" style="top:100px">
	            					<h1>${item.giname }</h1>
	              					<small style="margin-top:40px;">${item.gisketck}</small>
               				 	</div>	
        					</div>
    					</div>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
   			</c:if>
        </c:if>
    </c:forEach>
           
             
               <!--   <ul class="params-horizon">
                    <li class="row">
                        <span class="col-left">全网纵横</span>
                        <span class="col-right SYHT">7模18频</span>
                    </li>
                    <li class="row">
                        <span class="col-left">4G<i style="vertical-align:text-top;font-size:12px">+</i>下载速度*</span>
                        <span class="col-right SYHT">300Mbps</span>
                    </li>    
                    <li class="row">
                        <span class="col-left">4G下载速度*</span>
                        <span class="col-right SYHT">150Mbps</span>
                    </li>
                    <li class="row">
                        <span class="col-left">4G上传速度*</span>
                        <span class="col-right SYHT">50Mbps</span>
                    </li>       
                </ul>-->
				
     <!-- 概述07 -->
      <c:forEach items="${goodsa}" var="item">
        		<c:if test="${item.giattribute eq '概述'}">
        			<c:if test="${item.giposition eq 6 }">
        			<c:choose>
					<c:when test="${not empty item.firstPath }">
				 		<div class="section summary07">
            <div class="w1170">
            
        				<div class="summary07-abs">
                	<img src="${item.firstPath}" alt="无边框努比亚nubia Z9">
            		</div> <div class="summary07-tab" id="tab_con"><div class="desc">
            		 <h1>${item.giname }</h1>
                <small style="margin-top:40px;">${item.gisketck}</small></div>
                   </div>
                     </div>
            </div>
					</c:when>
					<c:otherwise>
					</c:otherwise>
				</c:choose>
					</c:if>
        		</c:if>
        	</c:forEach>
    
        		
                    <!--   <div class="summary07-abs">
                        <img src="images/summary07.jpg" alt="无边框努比亚nubia Z9">
                    </div>
                    <div class="summary07-tab" id="tab_con">
                    
                   
                          <div class="desc">
                          
                                <h1>高通骁龙 810</h1>
                                <small>采用 64 位 20nm 高通八核旗舰级处理器与双通道 LPDDR4 3GB 大高速内存，带来顺畅的 4K 视频与 3D 游戏体验。</small>
                                <ul class="params-horizon">
                                    <li class="row">
                                        <span class="col-left">八核处理器</span>
                                        <span class="col-right SYHT">高通骁龙 810</span>
                                    </li>
                                    <li class="row">
                                        <span class="col-left">图形处理器</span>
                                        <span class="col-right SYHT">Adreno 430</span>
                                    </li>
                                    <li class="row">
                                        <span class="col-left">双通道 LPDDR4 内存</span>
                                        <span class="col-right SYHT">3GB</span>
                                    </li>                     
                                </ul>  
                            </div>
                          <div class="desc" style="display: none;">
                            <h1>高通骁龙 810</h1>
                            <small>采用 64 位 20nm 高通八核旗舰级处理器与双通道 LPDDR4 4GB 大高速内存，更强大的处理性能，带来顺畅的 4K 视频与 3D 游戏体验。</small>
                            <ul class="params-horizon">
                                <li class="row">
                                    <span class="col-left">八核处理器</span>
                                    <span class="col-right SYHT">高通骁龙 810</span>
                                </li>
                                <li class="row">
                                    <span class="col-left">图形处理器</span>
                                    <span class="col-right SYHT">Adreno 430</span>
                                </li>
                                <li class="row">
                                    <span class="col-left">双通道 LPDDR4 内存</span>
                                    <span class="col-right SYHT">4GB</span>
                                </li>                     
                            </ul>  
                           </div>   
                             <div class="desc" style="display: none;">
                                   <h1>高通骁龙 810</h1>
                                   <small>采用 64 位 20nm 高通八核旗舰级处理器与双通道 LPDDR4 3GB 大高速内存，带来顺畅的 4K 视频与 3D 游戏体验。</small>
                                   <ul class="params-horizon">
                                       <li class="row">
                                           <span class="col-left">八核处理器</span>
                                           <span class="col-right SYHT">高通骁龙 810</span>
                                       </li>
                                       <li class="row">
                                           <span class="col-left">图形处理器</span>
                                           <span class="col-right SYHT">Adreno 430</span>
                                       </li>
                                       <li class="row">
                                           <span class="col-left">双通道 LPDDR4 内存</span>
                                           <span class="col-right SYHT">3GB</span>
                                       </li>                     
                                   </ul>  
                               </div>              
                    </div>
                    <style>
                    #tab_nav li{display: block;float: left;padding:10px 50px;cursor: pointer;border-right: 1px solid #ccc;}
                    #tab_nav li:last-child{border-right:none;}
                    #tab_nav li.on{background: #e6e6e6;color:#515151;}
                    </style>
                        <ul id="tab_nav" style="position: absolute; top: 580px; right: 380px; font-size: 14px; border-radius: 10px;border: 1px solid #ccc;overflow: hidden;">
                            <li class="on">经典版</li>
                            <li class="">精英版</li>
                            <li class="">极速版</li>
                        </ul>   -->       
                </div>
            </div>
</body>
</html>
