<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>无标题文档</title>
<base href="<%=basePath%>">
<link href="css/addshop.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/index.js"></script>
</head>

<body>
	<div id="facebox">
		<h2 class="title" style="display: block;">
			<span>成功加入到购物车</span>
		</h2>

		<div class="content"
			style="display: block; visibility: visible; zoom: 1; opacity: 1;">
			商品"Z9 Max皮质保护套（白色）"加入购物车成功。<br>
			<br>购物车目前共1种商品，价格合计：￥169.00。
		</div>


		<div class="footer"
			style="display: block; visibility: visible; zoom: 1; opacity: 1;">
			<a class="close" style="display: none;" href="#"> </a> <a
				onclick="javascript:closelay();" href="javascript:void(0);"> <input
				type="button" value="继续购物"> </a> <a
				onclick="javascript:directTocart();" href="javascript:void(0);">
				<input class="view-cart" type="button" value="立即结算"> </a>
		</div>
	</div>
</body>
</html>
