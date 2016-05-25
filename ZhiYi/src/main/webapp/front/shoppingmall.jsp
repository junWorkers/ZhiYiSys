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
<title>指艺商城——指尖的艺术，你值得拥有</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/shoppingmall.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link href="css/shoppingmall.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->


<script>
	
	$(function(){
		$.ajax({
			type:"POST",
			url:"gtypeServlet?d="+new Date(),
			data:{op:'chaxunli'},
			dataType:'JSON',
			success:function(data){
				if(parseInt($.trim(data.code))==1){
					for(var i=0;i<data.rows.length;i++){
						var item=data.rows[i];
						var j=i+1;
						hpstr="<h2 id='hs"+j+"'>"+item.tname+"</h2><p>"+item.tdescribe+"</p>";
						document.getElementById("seri-info"+j).innerHTML=hpstr;
					}
				}
			}
		});
		
	
		$.post("goodsServlet",{op:'findpic'},function(data){
		
		});
                                          
	});
	                                
                                
</script>


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

         <div class="nb-mobile-contain">
                <div class="cl nb-ml-h-nav-box">
                
                <!--左侧产品序列-->
                    <div class="nb-ml-side">
                        <ul id="uls">
                        <li class="nb-z-ico" data-top="0" onMouseOver="show(1)" onMouseOut="show(7)">
                                <a class="cl" href="javascript:void(0)">
                                    <em class="nb-ico"></em>
                                    <b class="nb-ico"></b>
                                    <div class="seri-info" id="seri-info1">
                                          <!--   <h2>Z系列</h2>
                                        <p>Z9系列 / Z7系列</p>-->
                                    </div>
                               </a>
                                
                                <div style="display: none; top: -1px;" class="nb-mlside-menu cl" id="1">

      
                               		<c:forEach items="${Allgoods}" var="item">
                                	 	<c:if test="${item.tid eq types[0].tid}">
                                	 		<c:if test="${item.gposition eq 1}">
                                		 		<a class="cl" href="goodsServlet?op=showGoodsBygid&gid=${item.gid}"><div class="figure"><img src="${item.firstPic}" height="46" width="46"></div><p id="gname">${item.gname }</p><p id="gid" style='display:none'>${item.gid }</p></a>
                                		 	</c:if>
                                		</c:if>
                               		 </c:forEach>
                               

                                
                                <!-- 
                                 <a class="cl" href="front/summarize.jsp">
                                        <div class="figure"><img src="images/nb-mlside-menu-z9.jpg" height="46" width="46"></div>
                                        <p>nubia Z9</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-z7.jpg" height="46" width="46"></div>
                                        <p>nubia Z7</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-z9max.jpg" height="46" width="46"></div>
                                        <p>nubia Z9 Max</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-z7max.jpg" height="46" width="46"></div>
                                        <p>nubia Z7 Max</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-z9mini.jpg" height="46" width="46"></div>
                                        <p>nubia Z9 mini</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-z7mini.jpg" height="46" width="46"></div>
                                        <p>nubia Z7 mini</p>
                                    </a> -->
                                </div>
                              
                            </li>
                            <li class="nb-x-ico" data-top="0" onMouseOver="show(2)" onMouseOut="show(7)">
                               <a class="cl" href="javascript:void(0)" >
                                    <em class="nb-ico"></em>
                                    <b class="nb-ico"></b>
                                    <div class="seri-info" id="seri-info2">
                                       <!--   <h2>X系列</h2>
                                        <p>X6</p> -->
                                    </div>
                                </a>
                                
                                <div style="display: none; top: -1px;" class="nb-mlside-menu cl" id="2">
                                 <c:forEach items="${Allgoods}" var="item">
                              
                                	<c:if test="${item.tid eq types[1].tid}">
                                		<c:if test="${item.gposition eq 1}">
                                		 <a class="cl" href="goodsServlet?op=showGoodsBygid&gid=${item.gid}"><div class="figure"><img src="${item.firstPic}" height="46" width="46"></div><p>${item.gname }</p></a>
                                		 </c:if>
                                	</c:if>
                                </c:forEach>
                                    <!--    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-x6.jpg" height="46" width="46"></div>
                                        <p>nubia X6</p>
                                    </a>-->
                                </div>
                            </li>
                             <li class="nb-x-ico" data-top="0" onMouseOver="show(3)" onMouseOut="show(7)">
                               <a class="cl" href="javascript:void(0)" >
                                    <em class="nb-ico"></em>
                                    <b class="nb-ico"></b>
                                    <div class="seri-info" id="seri-info3">
                                        <!-- <h2>My系列</h2>
                                        <p>My PRAGUE</p>-->
                                    </div>
                                </a>
                                
                                <div style="display: none; top: -1px;" class="nb-mlside-menu cl" id="3">
                                 <c:forEach items="${Allgoods}" var="item">
                              
                                	<c:if test="${item.tid eq types[2].tid}">
                                		<c:if test="${item.gposition eq 1}">
                                		 <a class="cl" href="goodsServlet?op=showGoodsBygid&gid=${item.gid}"><div class="figure"><img src="${item.firstPic}" height="46" width="46"></div><p>${item.gname }</p></a>
                                	</c:if>
                                	</c:if>
                                </c:forEach>
                                      <!--  <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-myprague.jpg" height="46" width="46"></div>
                                        <p>nubia My PRAGUE</p>
                                    </a>-->
                                </div>
                                
                                
                            </li>
                            <li class="nb-access-ico" data-top="-100" onMouseOver="show(4)" onMouseOut="show(7)">
                                <a class="cl" href="javascript:void(0)">
                                    <em class="nb-ico"></em>
                                    <b class="nb-ico"></b>
                                    <div class="seri-info" id="seri-info4">
                                        <!--  <h2>配件</h2>
                                        <p>耳机 / 保护壳 / 皮套</p>-->
                                    </div>
                                </a>
                                
                                <div style="display: none;" class="nb-mlside-menu cl" id="4">
                                
                                 <c:forEach items="${Allgoods}" var="item">
                              
                                	<c:if test="${item.tid eq types[3].tid}">
                                			<c:if test="${item.gposition eq 1}">
                                		 <a class="cl" href="goodsServlet?op=showGoodsBygid&gid=${item.gid}"><div class="figure"><img src="${item.firstPic}" height="46" width="46"></div><p>${item.gname }</p></a>
                                	</c:if>
                                	</c:if>
                                </c:forEach>
                                     <!--    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-access1.jpg" height="46" width="46"></div>
                                        <p>耳机</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-access3.jpg" height="46" width="46"></div>
                                        <p>保护壳</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-access5.jpg" height="46" width="46"></div>
                                        <p>皮套</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-access2.jpg" height="46" width="46"></div>
                                        <p>贴膜</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-access4.jpg" height="46" width="46"></div>
                                        <p>数据线/充电器</p>
                                    </a>-->
                                </div>
                                
                            </li>
                            <li class="nb-other-ico" data-top="-35" onMouseOver="show(5)" onMouseOut="show(7)">
                                 <a class="cl" href="javascript:void(0)">
                                    <em class="nb-ico"></em>
                                    <b class="nb-ico"></b>
                                    <div class="seri-info" id="seri-info5">
                                        <!--  <h2>周边产品</h2>
                                        <p>移动电源 / 自拍杆</p>-->
                                    </div>
                                </a>
                                <div style="display: none;" class="nb-mlside-menu cl" id="5">
                                 <c:forEach items="${Allgoods}" var="item">
                              
                                	<c:if test="${item.tid eq types[4].tid}">
                                		<c:if test="${item.gposition eq 1}">
                                		 <a class="cl" href="goodsServlet?op=showGoodsBygid&gid=${item.gid}"><div class="figure"><img src="${item.firstPic}" height="46" width="46"></div><p>${item.gname }</p></a>
                                	</c:if>
                                	</c:if>
                                </c:forEach>
                                  <!--<a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-other4.jpg" height="46" width="46"></div>
                                        <p>移动电源</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-other2.jpg" height="46" width="46"></div>
                                        <p>蓝牙找寻器</p>
                                    </a>
                                    <a class="cl" href="#">
                                        <div class="figure"><img src="images/nb-mlside-menu-other5.jpg" height="46" width="46"></div>
                                        <p>自拍杆</p>
                                    </a>  --> 
                                </div>
                              
                            </li>  
                        </ul>
                    </div>
        			<!---->
                    <!--轮播图片-->
                    <div class="nb-ml-high">
                        <div style="max-width: 100%;" class="bx-wrapper">
                        	<div style="width: 73%; overflow: hidden; position: relative; height: 360px; padding-left:0px;" class="bx-viewport">
                            	
                                <ul style="width: auto; position: relative;" class="bxslider">
                                
                                    <li style="float: none; list-style: outside none none; position: absolute; width: 950px; z-index: 0; display: block;" id="b1">
                                        <a href="${ad33[0].alink}" style="">
                                        	<img src="${ad33[0].mpath }" height="360" width="950">
                                        </a>
                                    </li>
                                    
                                    <li style="float: none; list-style: outside none none; position: absolute; width: 950px; z-index: 50; display: none;" id="b2">
                                        <a href="${ad33[1].alink}" style="">
                                       	 	<img src="${ad33[1].mpath }" height="360" width="950">
                                        </a>
                                    </li>
                                    
                                    <li style="float: none; list-style: outside none none; position: absolute; width: 950px; z-index: 0; display: none;" id="b3">
                                        <a href="${ad33[2].alink}" style="">
                                        	<img src="${ad33[2].mpath }" height="360" width="950">
                                       </a>
                                    </li>
                                    
                                    <li style="float: none; list-style: outside none none; position: absolute; width: 950px; z-index: 0; display: none;" id="b4">
                                        <a href="${ad33[3].alink}" style="">
                                        	<img src="${ad33[3].mpath }" height="360" width="950">
                                       	</a>
                                    </li>
                             
                       		 	</ul>
                        	</div>
                            
                            <div class="bx-controls bx-has-pager bx-has-controls-direction">
                            	<div class="bx-pager bx-default-pager">
                                	<div class="bx-pager-item" id="bx-pager-item">
                                		<a href="" data-slide-index="0" class="bx-pager-link active" id="a1">1</a>
                              
                                		<a href="" data-slide-index="1" class="bx-pager-link " id="a2">2</a>
                                
                                		<a href="" data-slide-index="2" class="bx-pager-link" id="a3">3</a>
                                	
                                    	<a href="" data-slide-index="3" class="bx-pager-link" id="a4">4</a>
                                	</div>
                                </div>
                                
                                <div style="display: block;" class="bx-controls-direction">
                                	<a class="bx-prev" href="">Prev</a>
                                    <a class="bx-next" href="">Next</a>
                                </div>
                           </div>
                      </div>                    
                  </div>
                    <!---->
        	</div>
            <!----> 
            <div class="cl nb-ml-newrelease">
            
                    <div class="nb-ml-nr-item i-left">
                     	<c:forEach items="${Allgoods}" var="item">
                               <c:if test="${item.gposition eq 6}">
                                 <div class="figure"><img src="${item.firstPic}" height="250" width="250"></div><div class="purchase-info"><h2>${item.gname}</h2> <p>优惠价 ￥${item.price }</p>
                                 <div class="split"><div class="purchase-btn"><a href="#" target="_blank">进入购买</a></div>  </div></div>
                               </c:if>
                        </c:forEach>
                        <!--  <div class="figure"><img src="images/144608198775.jpg" height="250" width="250"></div>
                        <div class="purchase-info">
                            <h2>Z9 经典版</h2>
                            <p>优惠价 ￥2499</p>
                            <div class="split">
                                <div class="purchase-btn"><a href="front/summarize.jsp" target="_blank">进入购买</a></div>
                            </div>
                        </div>-->
                    </div>
                    
                    <div class="nb-ml-nr-item i-right">
                    <c:forEach items="${Allgoods}" var="item">
                               <c:if test="${item.gposition eq 7}">
                                 <div class="figure"><img src="${item.firstPic}" height="250" width="250"></div><div class="purchase-info"><h2>${item.gname}</h2> <p>优惠价 ￥${item.price }</p>
                                 <div class="split"><div class="purchase-btn"><a href="#" target="_blank">进入购买</a></div>  </div></div>
                               </c:if>
                        </c:forEach>
                       <!--  <div class="figure"><img src="images/144591628866.jpg" height="250" width="250"></div>
                        <div class="purchase-info">
                            <h2>Z9 mini 全网通</h2>
                            <p>优惠价 ¥1299</p>
                            <div class="split">
                                <div class="purchase-btn"><a href="#" target="_blank">进入购买</a></div>
                            </div>
                        </div> -->
                    </div>
            </div>
            <!---->
    		
            <div class="nb-mall-list">
            
            	<dl class="cl nb-mall-m-hot">
                	<dt class="title">
                    <center>
                    	<h2>热卖产品</h2>
                    </center>
                    </dt>
                    
                    <dd class="nbc-new-box">
                    	<ul class="cl">
                        	<li class="nbc-new-pro1">
                            	<dl>
                                    <dd style="display:block;" id="c1">
                                    
                                      	<a href="#">
                                            <div class="nbc-pro-cont">
                                                <div class="figure">
                                                    <img src="${Gcontent[0].gpath}" width="430" height="430">
                                                </div>
                                            </div>
                                        </a>
                                        <div class="nbc-pro-info">
                                            <h3 class="title">${Gcontent[0].gname}</h3>
                                            ${Gcontent[0].desStr}
                                            <!-- <p class="sub-title" style="font-size:25px">无边框旗舰手机</p>
                                            <div class="quick-specs">
                                                <p>无边框设计</p>
                                                <p>FiT边缘触控技术</p>
                                                <p>4G全网通双卡双待</p>
                                                <p>高通骁龙810处理器</p>
                                                <p>3G RAM+32G ROM，LPDDR4</p>
                                                <p>5.2英寸1080P夏普高饱和度屏</p>
                                                <p>1600万OIS光学防抖摄像头</p>
                                                <p>4K录像+可视音场+HiFi</p>
                                            </div> -->
                                            <p class="price">￥<span>${Gcontent[0].price}</span></p>
                                            <div class="link">
                                                <a href="#">立即购买</a>
                                                <a href="#">查看详情</a></div>
                                        </div>
                                  
                        		
                                      </dd>
                                  
                                      <dd style="display:none;" id="c2">
                                          <a href="#">
                                              <div class="nbc-pro-cont">
                                                  <div class="figure">
                                                      <img src="${Gcontent[1].gpath}" width="430" height="430">
                                                  </div>
                                              </div>
                                          </a>
                                          <div class="nbc-pro-info">
                                              <h3 class="title">${Gcontent[1].gname}</h3>
                                               ${Gcontent[1].desStr}
                                             <!--   <p class="sub-title" style="font-size:25px">无边框设计搭配皮质后盖</p>
                                              <div class="quick-specs">
                                                  <p> 无边框设计</p>
                                                  <p>皮质后盖</p>
                                                  <p>FiT边缘触控技术</p>
                                                  <p>4G全网通双卡双待</p>
                                                  <p>高通骁龙810处理器</p>
                                                  <p>4G RAM+64G ROM，LPDDR4</p>
                                                  <p>5.2英寸1080P夏普高饱和度屏</p>
                                                  <p>1600万OIS光学防抖摄像头</p>
                                              </div>-->
                                              <p class="price">￥<span>${Gcontent[1].price}</span></p>
                                              <div class="link">
                                                  <a href="#">立即购买</a>
                                                  <a href="#">查看详情</a></div>
                                          </div>
                                      </dd>
                                      <dd style="display:none;" id="c3">
                                          <a href="#">
                                              <div class="nbc-pro-cont">
                                                  <div class="figure">
                                                      <img src="${Gcontent[2].gpath}" width="430" height="430">
                                                  </div>
                                              </div>
                                          </a>
                                          <div class="nbc-pro-info">
                                              <h3 class="title">${Gcontent[2].gname}</h3>
                                               ${Gcontent[2].desStr}
                                              <!--  <p class="sub-title" style="font-size:25px">无边框旗舰手机</p>
                                              <div class="quick-specs">
                                                  <p>无边框设计</p>
                                                  <p>FiT边缘触控技术</p>
                                                  <p>4G全网通双卡双待</p>
                                                  <p>高通骁龙810处理器</p>
                                                  <p>4G RAM+64G ROM，LPDDR4</p>
                                                  <p>5.2英寸1080P夏普高饱和度屏</p>
                                                  <p>1600万OIS光学防抖摄像头</p>
                                                  <p>4K录像+可视音场+HiFi</p>
                                              </div>-->
                                              <p class="price">￥<span>${Gcontent[2].price}</span></p>
                                              <div class="link">
                                                  <a href="#">立即购买</a>
                                                  <a href="#">查看详情</a></div>
                                          </div>
                                      </dd>
                                      <dd style="display:none;" id="c4">
                                          <a href="#">
                                              <div class="nbc-pro-cont">
                                                  <div class="figure">
                                                      <img src="${Gcontent[3].gpath}" width="430" height="430">
                                                  </div>
                                              </div>
                                          </a>
                                          <div class="nbc-pro-info">
                                              <h3 class="title">${Gcontent[3].gname}</h3>
                                               ${Gcontent[3].desStr}
                                              <!--  
                                              <p class="sub-title" style="font-size:25px">全球首款4G+旗舰手机</p>
                                              <div class="quick-specs">
                                                  <p>电信4G+下载速度300Mbps</p>
                                                  <p>无边框设计和FiT边缘触控技术</p>
                                                  <p>4G全网通双卡双待</p>
                                                  <p>高通骁龙810处理器</p>
                                                  <p>3G RAM+32G ROM，LPDDR4</p>
                                                  <p>5.2英寸1080P夏普高饱和度屏</p>
                                                  <p>1600万OIS光学防抖摄像头</p>
                                                  <p>4K录像+可视音场+HiFi</p>
                                              </div>-->
                                              <p class="price">￥<span>${Gcontent[3].price}</span></p>
                                              <div class="link">
                                                  <a href="#">立即购买</a>
                                                  <a href="#">查看详情</a></div>
                                          </div>
                                      </dd>
                                </dl> 
                               <!--<div class="sw-dot" id="sw-dot">
                                	<a class="current" href="#" id="d1">
                                    1
                                    </a>
                                   <a class="current" href="#" id="d2">
                                   	2
                                    </a>
                                    <a class="current" href="#" id="d3">
                                   3                                 
                                    </a>
                                   <a class="current" href="#" id="d4">                             
                                    4
                                    </a>
                                </div>-->
                                <div class="bx-controls bx-has-pager bx-has-controls-direction">
                            	<div class="bx-pager bx-default-pager">
                                	<div class="bx-pager-item" id="bx-pager-items">
                                		<a href="" data-slide-index="0" class="bx-pager-link active" id="a1">1</a>
                              
                                		<a href="" data-slide-index="1" class="bx-pager-link " id="a2">2</a>
                                
                                		<a href="" data-slide-index="2" class="bx-pager-link" id="a3">3</a>
                                	
                                    	<a href="" data-slide-index="3" class="bx-pager-link" id="a4">4</a>
                                	</div>
                                </div>
                                
                                <div style="display: block;" class="bx-controls-direction">
                                	<a class="bx-prev" href="">Prev</a>
                                    <a class="bx-next" href="">Next</a>
                                </div>
                           </div>
                            </li>
                            
                           
                        
                             <li class="nbc-new-pro2 cl goods-hover-shows">
                                    <a href="#">
                                     <c:forEach items="${Allgoods}" var="item">
                               			<c:if test="${item.gposition eq 9}">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${item.firstPic}" width="393" height="380"></div>
                                            <div class="price">
                                                <h2>${item.gname}</h2>
                                                <span><sup>￥</sup><label>${item.price}</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${item.gname}</h3>
                                        <p class="price">￥<span>${item.price}</span></p>
                                        <div class="quick-specs">
                                        ${item.desStr1}
                                            <!-- <p>眼纹识别功能</p>
                                            <p>FiT屏幕边缘交互技术</p>
                                            <p>4G全网通</p>
                                            <p>1600万＋800万像素摄像头</p>
                                            <p>3G RAM+32G ROM</p> -->
                                        </div>
                                        <p class="fedex"></p>
                                        <div class="link">
                                            <a href="#">立即购买</a>
                                            <a href="#">查看详情</a></div>
                                    </div>
                                             </c:if>
                        </c:forEach>
                                </li>
                           </ul>
                         
                    </dd>
                    
                    <dd class="nbc-new1-box">
                    	 <ul class="cl">
                         <li class="clear-margin-left goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${Gcontent1[0].gpath}" width="393" height="380"></div>
                                            <div class="price">
                                                <h2>${Gcontent1[0].gname}</h2>
                                                <span><sup>￥</sup><label>${Gcontent1[0].price}</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent1[0].gname}</h3>
                                        <p class="price">￥<span>${Gcontent1[0].price}</span></p>
                                        <div class="quick-specs">
                                        ${Gcontent1[0].desStr1}
                                           <!--  <p> 眼纹识别功能</p>
                                            <p>FiT屏幕边缘交互技术</p>
                                            <p>4G全网通</p>
                                            <p>2900mAh 电池，持久续航</p>
                                            <p>1600万＋800万像素摄像头</p>
                                            <p>3G RAM+16G ROM</p> -->
                                        </div>
                                        <p class="fedex"></p>
                                        <div class="link">
                                            <a href="#">立即购买</a>
                                            <a href="#">查看详情</a></div>
                                    </div>
                                </li>
                                <li class="goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${Gcontent1[1].gpath}" width="393" height="380"></div>
                                            <div class="price">
                                                <h2>${Gcontent1[1].gname}</h2>
                                                <span><sup>￥</sup><label>${Gcontent1[1].price}</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent1[1].gname}</h3>
                                        <p class="price">￥<span>${Gcontent1[1].price}</span></p>
                                        <div class="quick-specs">
                                         ${Gcontent1[1].desStr1}
                                        <!--  
                                            <p>布拉格相机 穆夏滤镜</p>
                                            <p>5.5mm中框，2.5D弧面玻璃</p>
                                            <p>5.2英寸Super AMOLED屏幕</p>
                                            <p>快充技术，10分钟充电25%</p>
                                            <p>4G全网通 双卡双待</p>
                                            <p>1300万摄像头，混合相位对焦技术</p>
                                            <p>2G RAM+16G ROM</p>-->
                                        </div>
                                        <p class="fedex"></p>
                                        <div class="link">
                                            <a href="#">立即购买</a>
                                            <a href="#">查看详情</a></div>
                                    </div>
                                </li>
                                <li class="goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${Gcontent1[2].gpath}" width="393" height="380"></div>
                                            <div class="price">
                                                <h2>${Gcontent1[2].gname}</h2>
                                                <span><sup>￥</sup><label>${Gcontent1[2].price}</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent1[2].gname}</h3>
                                        <p class="price">￥<span>${Gcontent1[2].price}</span></p>
                                        <div class="quick-specs">
                                           ${Gcontent1[2].desStr1}
                                        <!-- 
                                            <p> 布拉格相机 穆夏滤镜</p>
                                            <p>5.5mm中框，2.5D弧面玻璃</p>
                                            <p>5.2英寸Super AMOLED屏幕</p>
                                            <p>快充技术，10分钟充电25%</p>
                                            <p>移动联通双4G 双卡双待</p>
                                            <p>1300万摄像头，混合相位对焦技术</p>
                                            <p>2G RAM+16G ROM</p> -->
                                        </div>
                                        <p class="fedex"></p>
                                        <div class="link">
                                            <a href="#">立即购买</a>
                                            <a href="#">查看详情</a></div>
                                    </div>
                                </li>
                                <li class="clear-margin-left goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${Gcontent1[3].gpath}" width="393" height="380"></div>
                                            <div class="price">
                                                <h2>${Gcontent1[3].gname}</h2>
                                                <span><sup>￥</sup><label>${Gcontent1[3].price}</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent1[3].gname}</h3>
                                        <p class="price">￥<span>${Gcontent1[3].price}</span></p>
                                        <div class="quick-specs">
                                         ${Gcontent1[3].desStr1}
                                        <!-- 
                                            <p>铝钛合金中框支架</p>
                                            <p>高通骁龙615处理器</p>
                                            <p>2G RAM+16G ROM</p>
                                            <p>双卡双待</p>
                                            <p>4G全网纵横</p>
                                            <p>5.0英寸夏普超高饱和度屏</p>
                                            <p>1600万+800万摄像头</p>
                                            <p>个性定制后盖</p>
                                            <p>2900mAh大容量电池</p> -->
                                        </div>
                                        <p class="fedex"></p>
                                        <div class="link">
                                            <a href="#">立即购买</a>
                                            <a href="#">查看详情</a></div>
                                    </div>
                                </li>
                                <li class="goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${Gcontent1[4].gpath}" width="393" height="380"></div>
                                            <div class="price">
                                                <h2>${Gcontent1[4].gname}</h2>
                                                <span><sup>￥</sup><label>${Gcontent1[4].price}</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent1[4].gname}</h3>
                                        <p class="price">￥<span>${Gcontent1[4].price}</span></p>
                                        <div class="quick-specs">
                                         ${Gcontent1[4].desStr1}
                                        <!--  
                                            <p>铝钛合金支架</p>
                                            <p>高通骁龙810八核处理器</p>
                                            <p>3G RAM+16G ROM，LPDDR4</p>
                                            <p>双卡双待，4G全网通</p>
                                            <p>5.5英寸1080P夏普高饱和屏</p>
                                            <p>1600万+800万摄像头</p>
                                            <p>专业Hi-Fi音乐芯片</p>-->
                                        </div>
                                        <p class="fedex"></p>
                                        <div class="link">
                                            <a href="#">立即购买</a>
                                            <a href="#">查看详情</a></div>
                                    </div>
                                </li>
                                <li class="goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${Gcontent1[5].gpath}" width="393" height="380"></div>
                                            <div class="price">
                                                <h2>${Gcontent1[5].gname}</h2>
                                                <span><sup>￥</sup><label>${Gcontent1[5].price}</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent1[5].gname}</h3>
                                        <p class="price">￥<span>${Gcontent1[5].price}</span></p>
                                        <div class="quick-specs">
                                         ${Gcontent1[5].desStr1}
                                        <!--  
                                            <p>电信4G+下载速度300Mbps</p>
                                            <p>铝钛合金支架</p>
                                            <p>高通骁龙810八核处理器</p>
                                            <p>3G RAM+16G ROM，LPDDR4</p>
                                            <p>双卡双待，4G全网通</p>
                                            <p>5.5英寸1080P夏普高饱和屏</p>
                                            <p>1600万+800万摄像头</p>
                                            <p>专业Hi-Fi音乐芯片</p>-->
                                        </div>
                                        <p class="fedex"></p>
                                        <div class="link">
                                            <a href="#">立即购买</a>
                                            <a href="#">查看详情</a></div>
                                    </div>
                                </li>
                           </ul>
                        </dd>
                </dl>
               
                <dl class="cl nb-mall-m-package">
                  <dt class="title">
                    	<h2>热卖套装</h2>
                        <a href="#">查看更多套装 ></a>
                  </dt>
                  <dd>
                      <ul class="cl">
                       <c:forEach items="${Allgoods}" var="item">
                               			<c:if test="${item.gposition eq 11}">
                         <li class="cl left-side" style="margin-bottom:10px">
                              <div class="figure">
                                  <a href="#">
                                      <img src="${item.gpath }" width="270" height="270">
                                  </a>
                              </div>
                              <div class="goods-info">
                             
                                  <h2>${item.gname}</h2>
                                  <div class="goods-i-des">
                                  ${item.desStr1}
                                  <!-- 
                                      <p>nubia My 布拉格（经典版）</p>
                                      <p>高保真耳机</p>
                                      <p>炫彩移动电源</p>
                                      <p>防震保护套</p> --> 
                                  </div>
                                  <div class="goods-price">
                                      <span class="price-item"><sup>￥</sup><label>${item.price }</label></span>
                                      <!-- <span class="price-o">￥2116</span>
                                      <span class="price-save">立省117元</span> -->
                                  </div>
                                  <div class="link">
                                      <a href="#">立即购买</a>
                                  </div>
                                   </c:if>
                        </c:forEach>
                              </div>
                          </li>
                          <li class="right-side" style="margin-bottom:10px">
                          <c:forEach items="${Allgoods}" var="item">
                               			<c:if test="${item.gposition eq 12}">
                              <div class="figure">
                                  <a href="#">
                                      <img src="${item.gpath }" width="270" height="270">
                                  </a>
                              </div>
                              <div class="goods-info">
                                  <h2>${item.gname }</h2>
                                  <div class="goods-i-des">
                                   ${item.desStr1}
                                  <!-- 
                                      <p>nubia Z9 mini</p>
                                      <p>新一代耳机</p>
                                      <p>防指纹膜</p>
                                      <p>超薄保护套</p> --> 
                                  </div>
                                  <div class="goods-price">
                                      <span class="price-item"><sup>￥</sup><label>${item.price }</label></span>
                                    <!--   <span class="price-o">￥1456</span>
                                      <span class="price-save">立省57元</span>--> 
                                  </div>
                                  <div class="link">
                                      <a href="#">立即购买</a>
                                  </div>
                              </div>
                              </c:if>
                        </c:forEach>
                          </li>
                        </ul>
                  </dd>
                </dl>
                	
                <dl class="cl nb-mall-m-access">
                        <dt class="title">
                            <h2>精选配件</h2>
                            <a href="#">查看更多产品 ></a>
                        </dt>
                        <dt class="sub-nav-bar">
                            <ul class="cl">
                                <li>
                                    <a href="#">
                                        <img src="${Gcontent2[0].gpath }" width="150" height="80">
                                        <p>${Gcontent2[0].gname }</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="${Gcontent2[1].gpath }" width="150" height="80">
                                        <p>${Gcontent2[1].gname }</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="${Gcontent2[2].gpath }" width="150" height="80">
                                        <p>${Gcontent2[2].gname }</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="${Gcontent2[3].gpath }" width="150" height="80">
                                        <p>${Gcontent2[3].gname }</p>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <img src="${Gcontent2[4].gpath }" width="150" height="80">
                                        <p>${Gcontent2[4].gname }</p>
                                    </a>
                                </li>
                            </ul>
                        </dt>
                        
                        <dd>
                            <ul>
                                <li class="ac1 goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${Gcontent3[0].gpath }" width="270" height="270">
                                            </div>
                                            <div class="price">
                                                <h2>${Gcontent3[0].gname }</h2>
                                                <span><sup>￥</sup><label>${Gcontent3[0].price }</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent3[0].gname }</h3>
                                        <p class="price">￥<span>${Gcontent3[0].price }</span></p>
                                        <div class="quick-specs">
                                        ${Gcontent3[0].desStr1 }
                                        <!-- 
                                            <p>源自工匠灵感</p>
                                            <p>自然融入掌心</p>
                                            <p>细腻触感</p>
                                            <p>真材实料</p>
                                            <p>彰显个性</p> -->
                                        </div>
                                        <div class="link">
                                            <a href="#">加入购物车</a>
                                            <a href="#">查看详情</a>
                                        </div>
                                    </div>
                                </li>
                                
                                <li class="ac2 goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${Gcontent3[1].gpath }" width="270" height="270">
                                            </div>
                                            <div class="price">
                                                <h2>${Gcontent3[1].gname }</h2>
                                                <span><sup>￥</sup><label>${Gcontent3[1].price }</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent3[1].gname }</h3>
                                        <p class="price">￥<span>${Gcontent3[1].price }</span></p>
                                        <div class="quick-specs">
                                          ${Gcontent3[1].desStr1 }
                                        <!-- 
                                            <p>超纤高档PU皮革</p>
                                            <p>经典风范</p>
                                            <p>时尚简约</p>
                                            <p>多角度支架</p>
                                            <p>解放双手</p> -->
                                        </div>
                                        <div class="link">
                                            <a href="#">加入购物车</a>
                                            <a href="#">查看详情</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="ac3 goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img  src="${Gcontent3[2].gpath }" width="270" height="270">
                                            </div>
                                            <div class="price">
                                                <h2>${Gcontent3[2].gname }</h2>
                                                <span><sup>￥</sup><label>${Gcontent3[2].price }</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent3[2].gname }</h3>
                                        <p class="price">￥<span>${Gcontent3[2].price }</span></p>
                                        <div class="quick-specs">
                                         ${Gcontent3[2].desStr1 }
                                        <!-- 
                                            <p>超纤高档PU皮革</p>
                                            <p>经典风范</p>
                                            <p>时尚简约</p>
                                            <p>多角度支架</p>
                                            <p>解放双手</p> -->
                                        </div>
                                        <div class="link">
                                            <a href="#">加入购物车</a>
                                            <a href="#">查看详情</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="ac4 goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img  src="${Gcontent3[3].gpath }" width="270" height="270">
                                            </div>
                                            <div class="price">
                                                <h2>${Gcontent3[3].gname }</h2>
                                                <span><sup>￥</sup><label>${Gcontent3[3].price }</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent3[3].gname }</h3>
                                        <p class="price">￥<span>${Gcontent3[3].price }</span></p>
                                        <div class="quick-specs">
                                         ${Gcontent3[3].desStr1 }
                                        <!-- 
                                            <p>极致纤薄</p>
                                            <p>质地紧实柔韧非凡</p>
                                            <p>多彩灵动</p>
                                            <p>点亮生活</p> -->
                                        </div>
                                        <div class="link">
                                            <a href="#">加入购物车</a>
                                            <a href="#">查看详情</a>
                                        </div>
                                    </div>
                                </li>
                                <li class="ac-big goods-hover-shows">
                                    <a href="#">
                                        <div class="nbc-pro-cont">
                                            <div class="figure">
                                                <img src="${Gcontent3[4].gpath }" width="393" height="600"></div>
                                            <div class="price">
                                                <h2>${Gcontent3[4].gname }</h2>
                                                <span><sup>￥</sup><label>${Gcontent3[4].price }</label></span>
                                            </div>
                                        </div>
                                    </a>
                                    <div class="nbc-pro-info">
                                        <h3 class="title">${Gcontent3[4].gname }</h3>
                                        <p class="price">￥<span>${Gcontent3[4].price }</span></p>
                                        <div class="quick-specs">
                                         ${Gcontent3[3].desStr1 }
                                        <!--
                                            <p>源自意大利经典制作</p>
                                            <p>专业级耳机</p>
                                            <p>红圈亮片CD纹</p>
                                            <p>超薄PEI材质振膜</p>
                                            <p>铆接工艺结构</p>
                                            <p>镀金无损传输</p>
                                            <p>声音层次突出</p>
                                            <p>具有不一样的声乐体验。</p>  -->
                                        </div>
                                        <div class="link">
                                            <a href="#">加入购物车</a>
                                            <a href="#">查看详情</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </dd>
                </dl>
                
                <dl class="cl nb-mall-m-rel">
                	<dt class="title">
                    	<h2>周边产品</h2>
                        <a href="#" target="_blank">查看全部产品 ></a>
                    </dt>
                    <dd>
                        <ul class="cl">
                        <li class="clear-margin-left goods-hover-shows" style="margin-bottom:10px">
                              <a href="#">
                                    <div class="nbc-pro-cont">
                                        <div class="figure">
                                            <img  src="${Gcontent4[0].gpath }" width="270" height="270">
                                        </div>
                                        <div class="price">
                                            <h2>${Gcontent4[0].gname }</h2>
                                            <span><sup>￥</sup><label>${Gcontent4[0].price }</label></span>
                                        </div>
                                    </div>
                                </a>
                                <div class="nbc-pro-info">
                                    <h3 class="title">${Gcontent4[0].gname }</h3>
                                    <p class="price">￥<span>${Gcontent4[0].price }</span></p>
                                    <div class="quick-specs">
                                     ${Gcontent4[0].desStr1 }
                                    <!-- 
                                        <p>8000mAh锂离子聚合物电芯</p>
                                        <p>MPS 9重电路保护</p>
                                        <p>厚度11mm极致纤薄</p>
                                        <p>砂纹喷涂，多彩设计。</p> -->
                                    </div>
                                    <div class="link">
                                        <a href="#">加入购物车</a>
                                        <a href="#">查看详情</a>
                                    </div>
                                </div>
                            </li>
                            <li class=" goods-hover-shows" style="margin-bottom:10px">
                                <a href="#">
                                    <div class="nbc-pro-cont">
                                        <div class="figure">
                                            <img  src="${Gcontent4[1].gpath }" width="270" height="270"></div>
                                        <div class="price">
                                            <h2>${Gcontent4[1].gname }</h2>
                                            <span><sup>￥</sup><label>${Gcontent4[1].price }</label></span>
                                        </div>
                                    </div>
                                </a>
                                <div class="nbc-pro-info">
                                    <h3 class="title">${Gcontent4[1].gname }</h3>
                                    <p class="price">￥<span>${Gcontent4[1].price }</span></p>
                                    <div class="quick-specs">
                                     ${Gcontent4[1].desStr1 }
                                    <!-- 
                                        <p>优质选材，精密工艺</p>
                                        <p>轻便小巧，收纳简单</p>
                                        <p>手机单反，同样适用</p> -->
                                    </div>
                                    <div class="link">
                                        <a href="#">加入购物车</a>
                                        <a href="#">查看详情</a></div>
                                </div>
                            </li>
                            <li class=" goods-hover-shows" style="margin-bottom:10px">
                                <a href="#">
                                    <div class="nbc-pro-cont">
                                        <div class="figure">
                                            <img src="${Gcontent4[2].gpath }" width="270" height="270"></div>
                                        <div class="price">
                                            <h2>${Gcontent4[2].gname }</h2>
                                            <span><sup>￥</sup><label>${Gcontent4[2].price }</label></span>
                                        </div>
                                    </div>
                                </a>
                                <div class="nbc-pro-info">
                                    <h3 class="title">${Gcontent4[2].gname }</h3>
                                    <p class="price">￥<span>${Gcontent4[2].price }</span></p>
                                    <div class="quick-specs">
                                     ${Gcontent4[2].desStr1 }
                                    <!--  
                                        <p>时尚设计，轻巧便携；</p>
                                        <p>无线蓝牙，一键连接；</p>
                                        <p>纽扣电池，无需充电。</p>-->
                                    </div>
                                    <div class="link">
                                        <a href="#">加入购物车</a>
                                        <a href="#">查看详情</a></div>
                                </div>
                            </li>
                        </ul>
                    </dd>
                </dl>
                
                <dl>
                	 <dd class="nbc-shop-box">
							<div class="nbc-shop-contact">
                         	   <div class="return">
                                  <div class="figure">
                                      <img src="images/nbc-shop-return-ico.jpg" width="84" height="84">
                                  </div>
                                  <p>7天无理由退货</p>
                                </div>
                                
                         	   <div class="goodexchange">
                              	 <div class="figure">
                               		<img src="images/nbc-shop-goodexchange-ico.jpg" width="84" height="84">
                                 </div>
                                 <p>15天免费上门换货</p>
                               </div>
                               
                         	   <div class="sf">
                               	<div class="figure">
                                 <img src="images/nbc-shop-sf-ico.jpg" width="84" height="84">
                                </div>
                                <p>全场59元免运费</p>
                               </div>
                               
                               <div class="shop">
                              	 <div class="figure">
                               		<img src="images/nbc-shop-add-ico.jpg" width="84" height="84">
                               	 </div>
                               	 <p>查找线下商店</p>
                               </div>
                               
                               <div class="tel"><div class="figure">
                               		<img src="images/nbc-shop-tel-ico.jpg" width="84" height="84">
                               </div>
                               <p>400-700-6600</p>
                               </div>
                               
                            </div>
                            <div class="nbc-shop-link">
                            <h2>线下商店购买拥有完备的售后服务<br>没有购机后顾之忧</h2>
                            <a href="#">了解更多 ></a>
                            </div>
                        </dd>
                </dl>
            
            </div>
            
            <div class="nb-mbc-foot">
            		<div class="foot-service">
                        <ul class="cl">
                            <li><span>0</span>运费购手机</li>
                            <li><span>1</span>小时售后派单响应</li>
                            <li><span>30</span>天无忧退换货</li>
                            <li><span>330</span>余家售后服务中心</li>
                        </ul>
                    </div>
                    <div class="foot-link cl">
                        <dl class="cl ffff">
                            <dt>关于我们</dt>
                            <dd><a target="_blank" href="#">关于nubia</a></dd>
                            <dd><a target="_blank" href="#">新闻中心</a></dd>
                            <dd><a target="_blank" href="#">体验店</a></dd>
                            <dd><a target="_blank" href="#">公益</a></dd>
                            <dd><a target="_blank" href="#">星空之约</a></dd>
                            <dd><a target="_blank" href="#">联系我们</a></dd>
                            <dd><a target="_blank" href="#">友情链接</a></dd>
                        </dl>
                        <dl class="cl">
                            <dt>手机</dt>
                            <dd><a target="_blank" href="#">nubia Z9</a></dd>
                            <dd><a target="_blank" href="#">nubia Z9 Max</a></dd>
                            <dd><a target="_blank" href="#">nubia Z9 mini</a></dd>
                            <dd><a target="_blank" href="#">nubia Z7</a></dd>
                            <dd><a target="_blank" href="#">nubia Z7 Max</a></dd>
                            <dd><a target="_blank" href="#">nubia Z7 mini</a></dd>
                            <dd><a target="_blank" href="#">nubia X6</a></dd>
                        </dl>
                        <dl class="cl">
                            <dt>配件</dt>
                            <dd><a target="_blank" href="#">保护壳</a></dd>
                            <dd><a target="_blank" href="#">皮套</a></dd>
                            <dd><a target="_blank" href="#">贴膜</a></dd>
                            <dd><a target="_blank" href="#">耳机</a></dd>
                            <dd><a target="_blank" href="#">数据线/充电器</a></dd>
                            <dd><a target="_blank" href="#">周边产品</a></dd>
                        </dl>
                        <dl class="cl">
                            <dt>服务中心</dt>
                            <dd><a target="_blank" href="#">个人中心</a></dd>
                            <dd><a target="_blank" href="#">售后服务</a></dd>
                            <dd><a target="_blank" href="#">客服中心</a></dd>
                            <dd><a target="_blank" href="#">帮助中心</a></dd>
                            <dd><a target="_blank" href="#">软件下载</a></dd>
                        </dl>
                        <dl class="cl">
                            <dt>关注我们</dt>
                            <dd><a target="_blank" href="#">社区</a></dd>
                            <dd><a target="_blank" href="#" target="_blank">新浪微博</a></dd>
                            <dd><a target="_blank" href="#" target="_blank">QQ空间</a></dd>
                            <dd><a href="javascript:;" id="wx">微信</a></dd>
                            <dd><a target="_blank" href="#" target="_blank">百度贴吧</a></dd>
                        </dl>
                        <div class="foot-link-tel">
                            <a href="javascript:;" onclick="window.open('##')">7*24小时在线客服</a>
                            <div class="tel">
                          	  <img src="images/nb-mbc-tel.jpg" width="190" height="25">
                            </div>
                            <p>周一到周日 8:30-20:30 (全年无休)</p>
                        </div>
                        <style>
                            #ft-wx{width: 150px; height: 150px; background: #fff; border:1px #ccc solid; position: absolute; right: 485px; top: 63%; margin-top: -75px; border-radius: 5px; display: none;position: absolute;}
                            #ft-wx img{width: 130px; height: 130px; position: absolute; top: 11px; left: 10px; z-index: 1;}
                            #ft-wx:before{width: 10px; height: 20px; overflow: hidden; position: absolute; right: -10px; top: 50%; margin-top: -10px; content: ''; z-index: 2; background-size: 10px 20px; background-repeat: no-repeat;}
                        </style>
                        <div id="ft-wx"><img src="images/nb-weixin-code-figure.jpg" alt="" /></div>
                    </div>
                </div>
            </div>
      </div>
      <!--尾部-->
      <div id="nb-footer" style="background:#fff;">
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