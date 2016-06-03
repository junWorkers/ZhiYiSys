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
<title>指艺首页——指尖的艺术，你值得拥有</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<link href="css/index.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />         <!--小图标-->
<script type="text/javascript">
	var j=0;
	$(function(){
		$.post("ad_findpic.action",function(data){
			$.each(data,function(index,item){
				if(item.aposition=="首页大"){
					j=j+1;
					if(j==1){
						$("#showPic").append("<li><a href='"+item.alink+"'><img src='"+item.mpath+"' id='"+j+"'  style='display:block'/></a></li>")
					}else{
						$("#showPic").append("<li><a href='"+item.alink+"'><img src='"+item.mpath+"' id='"+j+"'  style='display:none'/></a></li>");
					}
				}else if(item.aposition=="首页小"){
					console.info(item.mpath)
					$(".cl").append("<li class='nb-mp-i-1'><a target='_blank' href='"+item.alink+"'><i><img src='"+item.mpath+"'/></i> <h2>指艺</h2><p>美好的开始</p></a></li>")
				}
			});
		},'json');
		
		
	 	$.post("goods_findContent",function(data){
			
		},'json'); 
		 
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
                	<c:if test="${not empty sessionScope.users.uname}">
                		   <li><a href="#">当前用户名：${sessionScope.users.uname}</a></li>
                		   <li><a href="javascript:loginOut()">[注销]</a></li>
                	</c:if>
                	<c:if test="${empty sessionScope.users.uname}">
                		<li><a href="register.jsp">注册</a></li>
                    	<li><a href="login.jsp">登录</a></li>
                	</c:if>
                </ul>
            </div>
        </div>
        <!--图片轮播-->
    	<div id="fa-image">
    	
            <ul id="showPic">
              <%--  <li><a href="${sessionScope.pics[0].alink}"><img src="${sessionScope.pics[0].mpath }" id="1"  style="display:block"/></a></li>
                <li><a href="${sessionScope.pics[1].alink}"><img src="${sessionScope.pics[1].mpath }" id="2"  style="display:none"/></a></li>
                <li><a href="${sessionScope.pics[2].alink}"><img src="${sessionScope.pics[2].mpath }" id="3"  style="display:none"/></a></li>
                <li><a href="${sessionScope.pics[3].alink}"><img src="${sessionScope.pics[3].mpath }" id="4"  style="display:none"/></a></li>
                <li><a href="${sessionScope.pics[4].alink}"><img src="${sessionScope.pics[4].mpath }" id="5"  style="display:none"/></a></li>  --%>
           </ul>
           <center>
	           <span id="a1">1</span>
	           <span id="a2">2</span>
	           <span id="a3">3</span>
	           <span id="a4">4</span>
	           <span id="a5">5</span>
           </center>
        </div>
        
    	<!--小图片展示-->
         <div class="nb-m-promos small">
                <ul class="cl">
                          <%-- <li class="nb-mp-i-1">
                            <a target="_blank" href="${ad2[0].alink}">
                               <i><img  src="${ad2[0].mpath }" ></i>
                                <h2>指艺</h2>
                                <p>美好的开始</p>
                            </a>
                        </li>
                                                                        
                        <li class="nb-mp-i-1">
                            <a target="_blank" href="${ad2[1].alink}">
								<i><img  src="${ad2[1].mpath }" ></i>
                                <h2>指艺</h2>
                                <p>美好的开始</p>
                            </a>
                        </li>
                                                                        
                       <li class="nb-mp-i-1">
                            <a target="_blank" href="${ad2[2].alink}">
								 <i><img  src="${ad2[2].mpath }" ></i>
                                 <h2>指艺</h2>
                                <p>美好的开始</p>
                            </a>
                        </li>
                       <li class="nb-mp-i-1">
                            <a target="_blank" href="${ad2[3].alink}">
								<i><img  src="${ad2[3].mpath }"></i>
                                <h2>指艺</h2>
                                <p>美好的开始</p>
                            </a>
                        </li> --%>
                      
                </ul>
            </div>
            
        </div>
       
        
        <!--首页底部-->
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
        	<p class="nb-footer-info"> 2012-2015 指艺 版权所有 <a href="#">粤ICP备10006213号-2</a> ICP经营许可证编号：粤B2-20120688 努比亚技术有限公司</p>
        </div>
        
    </div>
    
</body>
</html>
 