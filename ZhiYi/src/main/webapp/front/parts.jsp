<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>智能手机配件</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/parts.css" />
<link href="css/index.css" rel="stylesheet" type="text/css">
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/parts.js"></script>
<script type="text/javascript" src="js/index.js"></script>

<script>
/* 	var str="";
	$(function(){
		$.ajax({
			type:"POST",
			url:"goods_chaxunxinxi",
			dataType:'JSON',
			success:function(data){
				for(var i=0;i<data.rows.length;i++){
					var item=data.rows[i];
					str+="<li class='column'><a href='javascript:void(0)'><div class='figure'><img src="+item.firstPic+" height='240px' /><p>"+item.gname+"</p></a></li>";
				}
				document.getElementById("fdsfsdfsd").innerHTML=str;
			}
		});                                   
	}); */
</script>
</head>

<body>
	<%@include file="header.jsp"%>
	<div id="parts">
		<ul>
		<c:forEach items="${Allgoods}" var="item">
				<c:if test="${item.gposition eq 12}">
					<li><a href="javascript:void(0)">
					<div height="80" width="150" class="figure">
						<img src="${item.gpath }" />
						<p>${item.gname }</p>
					</div>
					</a></li>
				</c:if>
		</c:forEach>
			<%-- <li id="parts-img1"><a href="#">
					<div height="80" width="150" class="figure">
						<img src="${Gcontent2[0].gpath }" />
						<p>${Gcontent2[0].gname }</p>
					</div>
			</a></li>
			<li><a href="javascript:void(0)">
					<div height="80" width="150" class="figure">
						<img src="${Gcontent2[1].gpath }" />
						<p>${Gcontent2[1].gname }</p>
					</div>
			</a></li>
			<li><a href="javascript:void(0)">
					<div height="80" width="150" class="figure">
						<img src="${Gcontent2[3].gpath }" />
						<p>${Gcontent2[3].gname }</p>
					</div>
			</a></li>
			<li><a href="javascript:void(0)l">
					<div height="80" width="150" class="figure">
						<img src="${Gcontent2[4].gpath }" />
						<p>${Gcontent2[4].gname }</p>
					</div>
			</a></li>
			<li><a href="javascript:void(0)">
					<div height="80" width="150" class="figure">
						<img src="${Gcontent2[2].gpath }" />
						<p>${Gcontent2[2].gname }</p>
					</div>
			</a></li>
			<li><a href="javascript:void(0)">
					<div height="80" width="150" class="figure">
						<img src="${Gcontent2[5].gpath }" />
						<p>${Gcontent2[5].gname }</p>
					</div>
			</a></li> --%>
		</ul>
	</div>

	<div id="big-img">
		<c:forEach items="${Allgoods}" var="item">
			<c:if test="${item.tname eq '配件'}">
				<c:if test="${item.gposition eq 2}">
					<a href="goods_showfind.action?gid=${item.gid}"><img
						src="${item.gpath}" /> </a>
				</c:if>
			</c:if>
		</c:forEach>
	</div>

	<div id="goods">
		<div id="g1">
			<div id="g1a">
				<c:forEach items="${Allgoods}" var="item">
					<c:if test="${item.gposition eq 16}">
						<a href="front/pizhibaohu.jsp">
							<div class="big1">
								<img src="${item.firstPic }" height="169px" width="420px" />
							</div>

							<div class="title">
								<h2>${item.gname }</h2>
								<p>${item.descible}</p>
								<span>一探究竟</span>
							</div>
						</a>
					</c:if>
				</c:forEach>
			</div>

			<div id="g1b">
				<c:forEach items="${Allgoods}" var="item">
					<c:if test="${item.gposition eq 17}">
						<a href="javascript:void(0)">
							<div class="big2">
								<img src="${item.firstPic }" />
							</div>

							<div class="title">
								<h2>${item.gname }</h2>
								<p>${item.descible}</p>
								<span>一探究竟</span>
							</div>
						</a>
					</c:if>
				</c:forEach>
			</div>
		</div>



		<div id="fo_parts">
			<ul id="fdsfsdfsd">
				<c:forEach items="${Allgoods}" var="item">
				<c:if test="${item.gposition eq 20}">
						<li class='column'><a href='javascript:void(0)'><div class='figure'><img src="${item.firstPic }"   height='240px' /><p>${item.gname}</p></a></li>;
				</c:if>
		</c:forEach>
				<!--  
					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_1.png" height="240px" />
							</div>
							<p>Z9 Mini系列防震保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_2.png" height="240px" />
							</div>
							<p>My 布拉格 智能保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_3.png" height="240px" />
							</div>
							<p>nubia 炫彩自拍杆</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_4.png" height="240px" />
							</div>
							<p>Z9 Max系列防震保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_5.png" height="240px" />
							</div>
							<p>视界精选明信片（二）</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_6.png" height="240px" />
							</div>
							<p>nubia摄影三脚架</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_7.png" height="240px" />
							</div>
							<p>nubia 炫彩移动电源</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_8.png" height="240px" />
							</div>
							<p>Z9 防震保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_9.png" height="240px" />
							</div>
							<p>nubia电源适配器</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_10.png" height="240px" />
							</div>
							<p>nubia数据线</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure">
								<img src="images/fo_11.png" height="240px" />
							</div>
							<p>布拉格主题T恤</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_12.png" height="240px" />
							</div>
							<p>红魔耳机</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_13.png" height="240px" />
							</div>
							<p>Z9皮质保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_14.png" height="240px" />
							</div>
							<p>Z9 Max超薄保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_15.png" height="240px" />
							</div>
							<p>Z9 Mini 防指纹保护膜</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_16.png" height="240px" />
							</div>
							<p>Z9 Mini 皮质保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_17.png" height="240px" />
							</div>
							<p>Z9 Max 防指纹保护膜</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_18.png" height="240px" />
							</div>
							<p>Z9 Mini超薄保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_19.png" height="240px" />
							</div>
							<p>Z9 mini个性后盖</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_20.png" height="240px" />
							</div>
							<p>My 布拉格 皮质保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_21.png" height="240px" />
							</div>
							<p>X6翻盖智能保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_22.png" height="240px" />
							</div>
							<p>nubia高保真耳机</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_23.png" height="240px" />
							</div>
							<p>Z5S 翻盖保护套</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_24.png" height="240px" />
							</div>
							<p>Z5S mini亮彩后盖</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_25.png" height="240px" />
							</div>
							<p>Z5 mini 粉彩后盖</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_26.png" height="240px" />
							</div>
							<p>蓝牙找寻器</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_27.png" height="240px" />
							</div>
							<p>X6防指纹贴膜</p>
					</a></li>

					<li class="column"><a href="javascript:void(0)">
							<div class="figure_min">
								<img src="images/fo_28.png" height="240px" />
							</div>
							<p>新一代耳机</p>
					</li>
					
					<li class="column"><a href="javascript:void(0)">
								<div class="figure_min">
									<img src="images/fo_21.png" height="240px" />
								</div>
								<p>X6翻盖智能保护套</p>
						</a></li>

						<li class="column"><a href="javascript:void(0)">
								<div class="figure">
									<img src="images/fo_7.png" height="240px" />
								</div>
								<p>nubia 炫彩移动电源</p>
						</a></li>

						<li class="column"><a href="javascript:void(0)">
								<div class="figure">
									<img src="images/fo_9.png" height="240px" />
								</div>
								<p>nubia电源适配器</p>
						</a></li>

						<li class="column"><a href="javascript:void(0)">
								<div class="figure">
									<img src="images/fo_10.png" height="240px" />
								</div>
								<p>nubia数据线</p>
						</a></li>

						<li class="column"><a href="javascript:void(0)">
								<div class="figure_min">
									<img src="images/fo_12.png" height="240px" />
								</div>
								<p>红魔耳机</p>
						</a></li>

						<li class="column"><a href="javascript:void(0)">
								<div class="figure_min">
									<img src="images/fo_22.png" height="240px" />
								</div>
								<p>nubia高保真耳机</p>
						</a></li>

						<li class="column"><a href="javascript:void(0)">
								<div class="figure_min">
									<img src="images/fo_27.png" height="240px" />
								</div>
								<p>X6防指纹贴膜</p>
						</a></li>-->
			</ul>

		</div>

	</div>

	<div id="foot">
		<div id="fo_img">
			<img src="images/ft-log.jpg" height="13" width="14">&gt; 全部配件
		</div>
		<div id="fo_dl">
			<dl>
				<dt>保护壳</dt>
				<dd>
					<a href="javascript:void(0)">Z9 防震保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">My 布拉格 防震保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z9超薄保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z9 mini超薄保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z9 Max超薄保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z9 mini个性后盖</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7 透明保护壳</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7 mini透明保护壳</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z5S mini亮彩后盖</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z5 mini 粉彩后盖</a>
				</dd>
			</dl>
			<dl>
				<dt>皮套</dt>
				<dd>
					<a href="javascript:void(0)">My 布拉格 智能保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">My 布拉格 皮质保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z9皮质保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z9 mini皮质保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z9 Max皮质保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7max 视窗保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7 翻盖皮套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7 智能保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7 mini翻盖保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">X6翻盖智能保护套</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z5S 翻盖保护套</a>
				</dd>
			</dl>
			<dl>
				<dt>贴膜</dt>
				<dd>
					<a href="javascript:void(0)">Z9 mini 防指纹保护膜</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z9 Max 防指纹保护膜</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7 防指纹保护膜</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7 mini防指纹保护膜</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7 Max磨砂保护膜</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z7 Max防指纹保护膜</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">X6防指纹贴膜</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">Z5S 防指纹膜</a>
				</dd>
			</dl>
			<dl>
				<dt>耳机</dt>
				<dd>
					<a href="javascript:void(0)">红魔耳机</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">新一代耳机</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">nubia高保真耳机</a>
				</dd>
			</dl>
			<dl>
				<dt>周边产品</dt>
				<dd>
					<a href="javascript:void(0)">nubia摄影三脚架</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">布拉格主题T恤</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">视界精选明信片（二）</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">nubia 炫彩自拍杆</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">nubia 炫彩移动电源</a>
				</dd>
				<dd>
					<a href="javascript:void(0)">蓝牙找寻器</a>
				</dd>
			</dl>
		</div>
	</div>
</body>
</html>
