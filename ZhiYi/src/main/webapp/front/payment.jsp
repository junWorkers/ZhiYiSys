<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta charset="utf-8">
<title>订单信息确认</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/jquery.cityselect.js"></script>
<script type="text/javascript" src="js/payment.js"></script>
<link href="css/index.css" rel="stylesheet" type="text/css">
<link href="css/payment.css" rel="stylesheet" type="text/css">
<link href="css/footer.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/index.js"></script>
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<style type="text/css">
.disabled-buy {
	background-image: none;
	background-color: rgb(221, 221, 221);
	color: white;
	font-size: 16px;
	font-weight: bold;
	cursor: pointer;
}

#receiptTitle {
	border: 1px solid #E3E3E3;
	border-radius: 4px;
	width: 500px;
	height: 20px;
	line-height: 20px;
	padding: 6px 8px 3px;
}
</style>
</head>

<body>
	<%@include file="header.jsp"%>
	<div style="width: 100%; height: 61px;"></div>
	<!-- start content area -->
	<div class="bg-payorder">
		<div class="bg-nav" style="width: 250px;">
			<ul>
				<li><a href="front/shoppingmall.jsp">首页</a>&gt;</li>
				<li><a href="front/shoppingCart.jsp">您的购物车</a>&gt;</li>
				<li><a href="front/payment.jsp">填写购物车</a></li>
			</ul>
		</div>
	</div>

	<div class="main carts">
		<form id="theForm" name="flow">
			<div class="items fillOrder mt20">
				<div class="conT">
					<div class="conB">
						<div class="con checkout">
							<!-- 配送地址开始 -->
							<div class="address" id="shippingAddress">
								<div class="hd">
									<h2>我的收货地址</h2>
								</div>
								<div id="addr"></div>
								<div class="subHd">
									<input
										style="background-color: #E8380D; color: #fff; border-radius: 24px; font-size: 16px;"
										class="save" value="添加新地址" id="otherAddress" type="button"
										onClick="others()">
								</div>
								<div style="display: none;" id="newAddress" class="newAddress">
									<ul>
										<li><label>收件人:</label>
											<div class="inputBg">
												<input name="consignee" id="consignee" class="required"
													type="text" onBlur="checkConsignee()"> <a id="cons"></a>
											</div></li>

										<li><label>省份:</label>
											<div class="inputBg">
												<div id="city_4">
													<select class="prov"></select> <select class="citys"></select>
													<select class="dist"></select>
												</div>
											</div></li>

										<li><label>收货地址：</label><span id="selectedRegionNames"
											class="fl"></span>
											<div class="inputBg">
												<p id="shenshiqu"></p>
												<input class="required" name="address" id="address"
													size="40" type="text" onBlur="checkAddress()"
													onfocus="getAddress()"> <a id="addrs"></a>
											</div></li>

										<li><label>邮编：</label>
											<div class="inputBg">
												<input maxlength="6" class="required validate-zipcode"
													name="zipcode" id="zipcode" type="text"
													onBlur="checkZipcode()"> <a id="zip"></a>
											</div></li>

										<li><label>手机：</label>
											<div class="inputBg">
												<input class="validate-mobile" name="mobile" id="phone"
													type="text" onBlur="checkMobile()"> <a id="mob"></a>
											</div></li>

										<li><label>配送时间：</label>
											<div class="delStyle">
												<div class="disFixBg">

													<!--显示所有城市时class="disFixBg selected"-->
													<!--div class="delivery">
                                                        <input class="" type="text" readonly="readonly" value="只工作日配送（工作日双休日不配送）" id="shipText"/>
                                                        <span class="btnSelected" id="shipTime">下拉按钮</span>
                                                        <input type="hidden" name="shippingTime" id="shippingTime" value="WorkingDay" />
                                                    </div-->
													<select name="shippingTime" id="time">
														<option selected="selected" value="WorkingDay">
															只工作日送货(双休日、假日不配送)</option>
														<option value="WorkingRestDay">工作日、双休日与假日均可送货</option>
														<option value="RestDay">只双休日、假日送货(工作日不配送)</option>
													</select>
													<div class="allStyle" style="display: none;">
														<a href="javascript:;" key="WorkingDay"
															val="只工作日送货(双休日、假日不配送)"> 只工作日送货(双休日、假日不配送) </a> <a
															href="javascript:;" key="WorkingRestDay"
															val="工作日、双休日与假日均可送货"> 工作日、双休日与假日均可送货 </a> <a
															href="javascript:;" key="RestDay" val="只双休日、假日送货(工作日不配送)">
															只双休日、假日送货(工作日不配送) </a>
													</div>
												</div>
											</div></li>
									</ul>
									<div class="btn clearfix">
										<input class="save" value="保存新地址" id="saveAddress"
											type="button" onClick="addAddress()">
									</div>
								</div>
								<div class="allAddress"></div>
							</div>
							<!-- 配送地址结束 -->

							<!-- 购物车显示开始 -->
							<div id="cart" class="mod">
								<div class="hd">
									<h2>商品清单</h2>
								</div>
								<div style="clear: both"></div>
								<div class="step2_Box" id="step2_Box">
									<table class="shoppingCart" border="0" height="50" width="100%">
										<thead>
											<tr>
												<th width="41%">商品名称</th>
												<th width="20%">单价</th>
												<th width="19%">数量</th>
												<th width="20%">小计</th>
												<!-- <th width="16%">操作</th>
                                            -->
											</tr>
										</thead>
										<tbody id="tbody">

										</tbody>
									</table>
								</div>

								<div class="costs" style="clear: left">
									<p class="product-amount">
										<label>总计：</label> <span id="productAmount"></span>
									</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
	</div>
	</form>
	<button
		style="float: right; margin-right: 80px; background-color: red; color: white; width: 100px; height: 30px; font-weight: bold;"
		onClick="tijiao()">提交订单</button>
	<p id="osid" style="display: nonoe;">${order.osid }</p>
</body>
</html>
