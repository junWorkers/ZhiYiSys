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
<title>指艺首页——指尖的艺术，你值得拥有</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/xiaoshou.js"></script>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/shouhou.css" rel="stylesheet" type="text/css" />
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<style>
#services ul li a.pic4 .pic {
	background-position: -272px -136px;
}

#services ul li .pp3 {
	color: #F00;
}
</style>

</head>

<body>
	<%@include file="header.jsp"%>
	<div id="bg-serves">
		<ul>
			<li><a href="">首页 ></a></li>
			<li><a href="">&nbsp;服务</a></li>
		</ul>
	</div>
	<div id="services">
		<ul>
			<li><a href="front/person.jsp" class="pic1"> <span
					class="pic"></span>
					<p>个人中心</p>
			</a></li>

			<li><a href="front/shouhou.jsp" class="pic2"> <span
					class="pic"></span>
					<p>售后服务</p>
			</a></li>

			<li><a href="front/wangdian.jsp" class="pic3"> <span
					class="pic"></span>
					<p>售后网点</p>
			</a></li>

			<li><a data-toggle="tab" class="pic4"> <span class="pic"></span>
					<p class="pp3">帮助中心</p>
			</a></li>


		</ul>
	</div>

	<div id="services-con">
		<ul>
			<li class="m"><a data-toggle="tab"
				href="front/help.jsp#policy0001" class="img" onClick="change3('1')">
					<span class="img1"></span><span class="content">产品咨询</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/help.jsp#policy0002" class="img" onClick="change3('2')">
					<span class="img1"></span><span class="content">产品订购</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/help.jsp#policy0003" class="img" onClick="change3('3')">
					<span class="img1"></span><span class="content">支付及配送</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/help.jsp#policy0004" class="img" onClick="change3('4')">
					<span class="img1"></span><span class="content">服务问题</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/help.jsp#policy0005" class="img" onClick="change3('5')">
					<span class="img1"></span><span class="content">特色服务</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/help.jsp#policy0006" class="img" onClick="change3('6')">
					<span class="img1"></span><span class="content">技术问题</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/help.jsp#policy0007" class="img" onClick="change3('7')">
					<span class="img1"></span><span class="content">会员介绍</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/help.jsp#policy0008" class="img" onClick="change3('8')">
					<span class="img1"></span><span class="content">牛豆说明</span>
			</a></li>


		</ul>
	</div>

	<div id="services-content">
		<div id="policy0001" class="s-pay-con-tab-pane_active">
			<ul class="s-list-nest nav nav-tabs">
				<li class=""><a data-toggle="tab" href="#faq001"
					onClick="change4(1)">>X6</a></li>
				<li class=""><a data-toggle="tab" href="#faq002"
					onClick="change4(2)">>Z5S LTE</a></li>
				<li class=""><a data-toggle="tab" href="#faq003"
					onClick="change4(3)">>Z5Sn</a></li>
				<li class=""><a data-toggle="tab" href="#faq004"
					onClick="change4(4)">>Z5S</a></li>
				<li class=""><a data-toggle="tab" href="#faq005"
					onClick="change4(5)">>Z5Smini</a></li>
			</ul>
			<div class="tab-content">
				<div id="faq001" class="s-con-nest tab-pane1">
					<div class="question-container services-p">
						<p class="ask">Q1: X6 手机的屏幕有多大？</p>
						<p class="answer">A1: 6.4吋超夏普CGS显示屏。</p>
						<p class="ask">Q2: X6手机销售包装内都有哪些东西？</p>
						<p class="answer">A2:
							主机*1，数据线*1，充电器*1，耳机*1，保修卡*1，取卡器*1，快速指引*1，客服服务中心通讯录*1。</p>
						<p class="ask">Q3: X6手机是3G全网通手机吗？</p>
						<p class="answer">A3: 是的，3G全网通+LTE。</p>
						<p class="ask">Q4: X6手机是四核的吗？</p>
						<p class="answer">A4:高通骁龙801处理器，极速四核2.3GHz。</p>
						<p class="ask">Q5: X6手机的内存有多大？</p>
						<p class="answer">A5:2GB RAM+32G ROM内存。</p>
						<p class="ask">Q6:X6手机支持NFC及相关应用吗？</p>
						<p class="answer">A6:支持NFC功能及相关应用,其中包括智能标签等应用。。</p>
						<p class="ask">Q7:X6手机支持WiFi双频吗？</p>
						<p class="answer">A7:支持2.4GHz/5GHz双频WiFi、支持802.11
							ac协议,支持高速WiFi传输。</p>
						<p class="ask">Q8:X6手机使用何种尺寸的用户识别卡？</p>
						<p class="answer">A8:支持Micro-SIM卡(小卡)。</p>
					</div>
				</div>
				<div id="faq002" class="s-con-nest tab-pane">
					<div class="question-container services-p">
						<p class="ask">Q1：Z5S LTE手机销售包装内都有哪些东西？</p>
						<p class="answer">A1:
							包含主机、充电器、数据线、取卡器、保修卡、售后电话清单、快速指引（彩盒内托上）、nubia高保真耳机。</p>
						<p class="ask">Q2：Z5S LTE手机是3G全网通手机吗？</p>
						<p class="answer">A2: 是的，3G全网通+LTE。</p>
						<p class="ask">Q3：Z5S LTE手机是四核的吗？</p>
						<p class="answer">A3: 是，采用高通最新高端四核芯片骁龙800,四核2.3GHz。</p>
						<p class="ask">Q4：Z5S LTE手机的内存有多大？</p>
						<p class="answer">A4: 手机采用2+32/64G内存,ROM是32/64GB, RAM是2GB。</p>
						<p class="answer">注：通常智能手机手机操作系统及自带应用占用了部分存储空间,因此用户实际可用空间比标称值小</p>
						<p class="ask">Q5：Z5S LTE手机支持NFC及相关应用吗？</p>
						<p class="answer">A5: 支持NFC功能及相关应用,其中包括智能标签等应用。</p>
						<p class="ask">Q6：Z5S LTE手机支持WiFi双频吗？</p>
						<p class="answer">A6: 支持2.4GHz/5GHz双频WiFi、支持802.11
							ac协议,支持高速WiFi传输。</p>
						<p class="ask">Q7：Z5S LTE手机使用何种尺寸的用户识别卡？</p>
						<p class="answer">A7: 支持Micro-SIM卡。</p>
					</div>
				</div>
				<div id="faq003" class="s-con-nest tab-pane">
					<div class="question-container services-p">
						<p class="ask">Q1：Z5Sn与Z5S有什么区别？</p>
						<p class="answer">A1:
							Z5Sn增加光学防抖、HDMI、NFC、slimport、四向凌空手势等功能，同时还搭配官方耳机配件。</p>
						<p class="ask">Q2：Z5Sn 手机销售包装内都有哪些东西？</p>
						<p class="answer">A2:
							手机*1，售后网点手册*1，手机保修卡*1，取卡器*1，USB数据线*1，耳机*1，充电器*1。</p>
						<p class="ask">Q3：Z5Sn 手机是3G全网通手机吗？</p>
						<p class="answer">A3: 是的！</p>
						<p class="ask">Q4：Z5Sn 手机是四核的吗？</p>
						<p class="answer">A4: 高通骁龙800处理器，极速四核。</p>
						<p class="ask">Q5：Z5Sn 手机的内存有多大？</p>
						<p class="answer">A5: 2GB RAM+16G ROM内存。</p>
						<p class="ask">Q6：Z5Sn 手机支持NFC及相关应用吗？</p>
						<p class="answer">A6: 支持NFC功能及相关应用,其中包括智能标签等应用。</p>
						<p class="ask">Q7：Z5Sn 手机支持WiFi双频吗？</p>
						<p class="answer">A7: 支持2.4GHz/5GHz双频WiFi、支持802.11
							ac协议,支持高速WiFi传输。</p>
						<p class="ask">Q8：Z5Sn 手机使用何种尺寸的用户识别卡？</p>
						<p class="answer">A8: 支持Micro-SIM卡(小卡)。</p>
					</div>
				</div>
				<div id="faq004" class="s-con-nest tab-pane">
					<div class="question-container services-p">
						<p class="ask">Q1：Z5S手机销售包装内都有哪些东西？</p>
						<p class="answer">A1: 包含主机、充电器、数据线、取卡器、保修卡、售后电话清单、快速指引（彩盒内托上）。</p>
						<p class="ask">Q2：Z5S手机是3G全网通手机吗？</p>
						<p class="answer">A2: 是,支持GSM, WCDMA, CDMA2000、EVDO、TD-SCDMA。</p>
						<p class="ask">Q3：Z5S手机是四核的吗？</p>
						<p class="answer">A3: 是，采用高通最新高端四核芯片骁龙800,四核2.3GHz。</p>
						<p class="ask">Q4：Z5S手机的内存有多大？</p>
						<p class="answer">A4: 手机采用2+16内存,ROM是16GB, RAM是2GB。</p>
						<p class="answer">注：通常智能手机手机操作系统及自带应用占用了部分存储空间,因此用户实际可用空间比标称值略小。</p>
						<p class="ask">Q5：Z5S手机支持NFC及相关应用吗？</p>
						<p class="answer">A5: 不支持NFC功能及相关应用。</p>
						<p class="ask">Q6：Z5S手机支持WiFi双频吗？</p>
						<p class="answer">A6: 支持2.4GHz/5GHz双频WiFi、支持802.11
							ac协议,支持高速WiFi传输。</p>
						<p class="ask">Q7：Z5S手机使用何种尺寸的用户识别卡？</p>
						<p class="answer">A7: 支持Micro-SIM卡。</p>
					</div>
				</div>
				<div id="faq005" class="s-con-nest tab-pane">
					<div class="question-container services-p">
						<p class="ask">Q1：Z5S mini手机销售包装内都有哪些东西？</p>
						<p class="answer">A1: 包含主机、充电器、数据线、保修卡、售后电话清单、快速指引（彩盒内托上）。</p>
						<p class="ask">Q2：Z5S mini手机是3G全网通手机吗？</p>
						<p class="answer">A2: 是,支持GSM, WCDMA, CDMA2000、EVDO、TD-SCDMA。</p>
						<p class="ask">Q3：Z5S mini手机是四核的吗？</p>
						<p class="answer">A3: 是，采用高通主流高端骁龙600,四核1.7GHz。</p>
						<p class="ask">Q4：Z5S mini手机的内存有多大？</p>
						<p class="answer">A4: 手机采用2+16G内存,ROM是16GB, RAM是2GB。</p>
						<p class="answer">注：通常智能手机手机操作系统及自带应用占用了部分存储空间,因此用户实际可用空间比标称值略小</p>
						<p class="ask">Q5：Z5S mini手机支持NFC及相关应用吗？</p>
						<p class="answer">A5: 不支持NFC功能及相关应用。</p>
						<p class="ask">Q6：Z5S mini手机支持WiFi双频吗？</p>
						<p class="answer">A6: 支持2.4GHz/5GHz双频WiFi。</p>
						<p class="ask">Q7：Z5S mini手机使用何种尺寸的用户识别卡？</p>
						<p class="answer">A7: 支持Micro-SIM卡。</p>
					</div>
				</div>
			</div>
		</div>

		<div id="policy0002" class="s-pay-con-tab-pane">
			<ul class="s-list-nest nav nav-tabs">
				<li class=""><a data-toggle="tab" href="#faq021"
					onClick="change5(1)">>营销活动</a></li>
				<li><a data-toggle="tab" href="#faq022" onClick="change5(2)">>购买流程</a>
				</li>
				<li><a data-toggle="tab" href="#faq023" onClick="change5(3)">>订单</a>
				</li>
				<li><a data-toggle="tab" href="#faq024" onClick="change5(4)">>优惠券</a>
				</li>
			</ul>
			<div class="tab-content">
				<div id="faq021" class="s-con-nest tab-pane1 ">
					<div class="question-container services-p">
						<p class="ask">Q1: 努比亚手机营销活动是怎样的？</p>
						<p class="answer">
							A1: 具体营销活动请留意努比亚 <a target="_blank" href="">官方微博</a>
							,官方论坛的活动通知。大型营销活动,比如预购,因为需要提前支付才能确认享受权利,所以有可能不支持货到付款。发货时间也会因为活动规模做相应调整。
						</p>
						<p class="ask">Q2: 努比亚手机在哪里可以买到？</p>
						<p class="answer">
							A2: 可以在全国努比亚 <a target="_blank" href="">线下体验店</a> 和 <a
								target="_blank" href="">官网</a> 进行购买,具体活动可留意官网论坛和 <a
								target="_blank" href="">官方微博</a>
							等官方媒体信息。另外还可以参加官网与第三方平台的合作活动中购买。
						</p>
					</div>
				</div>
				<div id="faq022" class="s-con-nest tab-pane">
					<div class="question-container services-p">
						<p class="ask">Q1: 努比亚手机及配件如何购买？</p>
						<p class="answer">A1:可以进入网站的“购买产品”的页面选择需要的商品进行购买,相关配件也可以在该页面进行选择购买,或者进入线下体验店购买。另外还可以参加官网与第三方平台的合作活动中购买。</p>
						<p class="ask">Q2: 努比亚手机在官方网站如何购买？</p>
						<p class="answer">
							A2: 可以在选购产品页面把中意的产品或配件放入购物车,然后点击结算后进入结算付款页面。具体操作请参见 <a
								target="_blank" href="">支付及配送</a> 项。具体的支付方式会因营销活动的性质而不同。
						</p>
					</div>
				</div>
				<div id="faq023" class="s-con-nest tab-pane">
					<div class="question-container services-p">
						<p class="ask">Q1: 订单状态查询?</p>
						<p class="answer">A1:
							新订单从下单到订单完成,会经历各种状态,我们会将各种状态显示在订单页面,希望以此种方式让您更好的了解订单情况,及时跟踪订单状态,顺利完成购买。</p>
						<p class="answer">以下是订单状态的简单说明：</p>
						<p class="answer">待确认：选择“在线支付”,成功下单、待客服确认。</p>
						<p class="answer">已确认：选择“在线支付”,成功下单、客服已经确认。</p>
						<p class="answer">等待付款：选择“在线支付”,成功下单但未付款。</p>
						<p class="answer">已付款：选择“在线支付”,成功下单且成功付款。</p>
						<p class="answer">已发货：您下的订单已经发出。</p>
						<p class="answer">已收货：您已经签收确认收货。</p>
						<p class="ask">Q2: 支持合并订单吗？</p>
						<p class="answer">A2: 努比亚官网暂时不支持合并订单,购买多件产品,建议放在购物车中一起下单。</p>
						<p class="ask">Q3: 如何修改订单信息？</p>
						<p class="answer">A3:
							如果您需要修改订单信息,您现在可以登陆努比亚官网,打开“我的订单”,点击“订单详情”进行修改。温馨提示：修改订单时您可与我们的在线客服、400-700-6600取得联系,我们工作人员会帮您进行手动修改。</p>
						<p class="ask">Q4: 已下单想要取消其中一件商品或更换商品颜色可以吗?</p>
						<p class="answer">A4:
							非常抱歉,目前在努比亚网下单后不支持对订单做商品的添加/修改操作,只能整单取消或退款。如果您的订单已经支付成功,订单在办理退款后,您之前参加活动的购买资格也会随之取消。</p>
					</div>
				</div>
				<div id="faq024" class="s-con-nest tab-pane">
					<div class="question-container services-p">
						<p class="ask">Q1: 努比亚会不会有优惠卷？</p>
						<p class="answer">A1: 优惠券的发放请关注官方微博和官方论坛的活动。</p>
						<p class="ask">Q2: 努比亚的优惠卷如何使用?</p>
						<p class="answer">
							A2: 努比亚的优惠券使用规则见发券时的短信,微博或者邮件提示；使用时在您确认订单时填入优惠券填写窗口即可,具体使用方法参看 <a
								target="_blank" href="">支付方式</a> 。
						</p>
					</div>
				</div>
			</div>
		</div>

		<div id="policy0003" class="s-pay-con-tab-pane">
			<ul class="s-list-nest nav nav-tabs">
				<li class=""><a data-toggle="tab" href="#faq031"
					onClick="change6(1)">>物流</a></li>
				<li class=""><a data-toggle="tab" href="#faq032"
					onClick="change6(2)">>签收</a></li>
				<li><a data-toggle="tab" href="#faq033" onClick="change6(3)">>发票</a>
				</li>

				<li class=""><a data-toggle="tab" href="#faq035"
					onClick="change6(4)">>货到付款</a></li>
				<li class=""><a data-toggle="tab" href="#faq036"
					onClick="change6(5)">>支付方式</a></li>
				<li><a data-toggle="tab" href="#faq037" onClick="change6(6)">>配送方式</a>
				</li>
			</ul>
			<div class="tab-content">
				<div id="faq031" class="s-con-nest tab-pane1">
					<div class="question-container services-p">
						<p class="ask">Q1: 下单时可以指定送货时间吗？</p>
						<p class="answer">A1：可以的。您可以选择不限时间送货、工作日送货或双休日、假日送货。</p>
						<p class="ask">Q2: 有哪些快递公司进行配送？</p>
						<p class="answer">A2：顺丰快递公司进行全国配送（除港、澳、台地区外）,部分顺丰快递无法配送的地区我们将使用EMS配送,请您放心购买。</p>
						<p class="ask">Q3: 如何查询快递进度？</p>
						<p class="answer">A3：登陆后,打开“我的订单”查看订单详情,如果您的订单状态为“已发货”,可凭您订单中的货运单号,到相应物流公司官网查询配送情况。
						</p>
						<p class="ask">Q4: 配送需要多长时间？</p>
						<p class="answer">A4：根据营销活动规模安排发货时间。正常情况下,自订单出库次日起,广东地区1-2天,广东以外的其他地区2-8天；您可在配送范围与费用页面输入所在地区,查询具体配送时间。因天气等异常原因会有不同程度的延迟现象发生,配送公司会尽快为您送达。
						</p>
						<p class="ask">Q5: 如何查询第三方配送的状态？</p>
						<p class="answer">
							A5：顺丰：www.sf-express.com/cn/sc/ <br> EMS邮政：www.ems.com.cn
						</p>
						<p class="ask">Q6: 努比亚支持的配送范围</p>
						<p class="answer">A6：努比亚手机暂时只支持中国大陆地区的配送,如果您当地的物流网络不是很发达的情况下,我们一般是会通过EMS将商品送达到您的手中,请您放心。</p>
						<p class="ask">Q7: 运输的安全性如何保证呢？</p>
						<p class="answer">
							A7：努比亚手机的外包装很严密,包装盒通常情况下不会损坏,如果在运送过程中出现损坏,您可以在签收时,让快递人员作证,如有疑问请及时联系客服人员进行解决,如果快递过程中丢单,我们会重新为您补发新商品,请您放心购买。
							<br> 注：为保障大家的切身利益,我们在此提醒您,收到商品时需要注意以下各项： <br>
							1）请您在下单时,尽量留下本人能够签收的地址与联系电话。 <br>
							2）配送过程中，如因机场航空管制等原因，配送时效会有所延误。 <br>
							3）您在收到商品时请当场验货,首先检查外包装是否完好,商品种类数量是否与订单明细相符,不支持签收前拆手机包装验货。签收后可要求投递员在场共同检验手机包装内商品是否齐全。
							<br> 4）在本人不能亲自签收的情况下,请委托他人签收并严格按照第二项内容操作。 <br>
							5）如签收后商品出现质量问题,如功能性故障,请您及时联系努比亚客服。
						</p>
						<p class="ask">Q8: 为何订单已发货但查不到物流信息？</p>
						<p class="answer">A8：您所购买的商品在从努比亚库房发出后,一般1个工作日内可以在对应的物流公司官网查询到物流信息,如果您没有查询到,还请您不要着急,您可以晚些时候再次查询,非常感谢您的理解。</p>
						<p class="ask">Q9: 手机已经发货什么时候收到？</p>
						<p class="answer">A9：因物流公司和发货仓库不同等其他不可控因素影响,配送所需的具体时间并不能确定,一般情况下发货后7天左右能够送达,如果您需要查询物流状态,可以随时在“我的订单”-“订单详情”内查看物流信息并跟踪订单物流状态,非常感谢您的理解。</p>
						<p class="ask">Q10: 我买的商品是用的什么快递？</p>
						<p class="answer">A10：我们会根据订单填写的地址选择最佳配送方式,正常情况采用顺丰速递,部分顺丰快递无法配送的地区我们将使用EMS配送,如果您需要查询物流状态,可以随时在“我的订单”-“订单详情”内查看物流信息并跟踪订单物流状态,非常感谢您的理解。</p>
						<p class="ask">Q11: 可否自己选择快递公司？</p>
						<p class="answer">A11：非常抱歉,我们暂时还不支持此项服务,不过请您放心,我们会根据您所在的地区进行选择合适的快递公司给您配送。</p>
						<p class="ask">Q12: 交货条件</p>
						<p class="answer">A12：努比亚商店产品由指定的送货员在周一至周日的营业时间内送货。所有交货均须签名。如果首次投递不成,我们将通知你联系送货员以安排一个更为方便的送货日期。</p>
					</div>
				</div>
				<div id="faq032" class="s-con-nest tab-pane2 ">
					<div class="question-container services-p">
						<p class="ask">Q1: 如何投诉快递人员？</p>
						<p class="answer">A1：如果您遇到快递人员服务态度不好、延误投递、多收快递费、私自拆封等恶劣行为,请联系nubia客服中心400热线进行投诉。</p>
						<p class="ask">Q2: 签收验货需注意什么？</p>
						<p class="answer">
							A2：在线支付用户：快递送货上门后,用户可要求打开货品外包装查看货品是否齐全（不可打开手机包装）, <br>
							1、不齐全或有问题,请与客服联系 <br>
							2、齐全且无问题,用户签收,签收后,用户可要求当快递面打开手机包装,如发现问题,与客服联系。
						</p>
						<p class="ask">Q3: 收货时是否需要提供证件？</p>
						<p class="answer">A3：收货时请务必凭收货人身份证收取；代收时,快递人员与收货人电话再次确认代收人信息,核对代收人身份证。
						</p>
						<p class="ask">Q4: 被他人签收了,怎么办？</p>
						<p class="answer">A4：请您尝试联系收货地址的相关人员,确认能否找回货品。如果确认丢失,我们会协助您联系快递工作人员,核实当时的情况,在必要的情况下,我们会寻求警方协助,尽最大努力帮助您减少损失。</p>
					</div>
				</div>
				<div id="faq033" class="s-con-nest tab-pane ">
					<div class="question-container services-p">
						<p class="ask">Q1: 是否提供发票？提供哪几种发票？</p>
						<p class="answer">A1：提供发票。可提供普通个人发票和普通公司发票。</p>
						<p class="ask">Q2: 如何获得发票？</p>
						<p class="answer">A2：下单时,选择发票类型并填写发票信息。普通个人发票和普通公司发票随购买的货品一起发出。</p>
						<p class="ask">Q3: 能否要求按商品种类开据不同发票？</p>
						<p class="answer">A3：一张订单只开据一张发票。如果您购买多款商品需要单独发据发票,建议您分开下单。</p>
						<p class="ask">Q4: 发票抬头如何填写？</p>
						<p class="answer">A4：可选择为个人普通发票,如果您是公司用户,可以选择“单位”并在“单位名称”中填写公司信息。</p>
						<p class="ask">Q5: 发票遗失怎么办？</p>
						<p class="answer">A5：如因您个人的操作失误而导致发票遗失、损毁等情况,nubia官网不能为您提供更换、重开发票的服务,您可以申请传真或邮寄发票底单的扫描件,相应的快递费需要您来承担。</p>
					</div>
				</div>
				<div id="faq034" class="s-con-nest tab-pane ">
					<div class="question-container services-p">
						<p class="ask">Q1: 在线支付安全吗？</p>
						<p class="answer">
							A1:
							在线支付是安全的,若您付款产生异常问题,请及时与我们联系,我们会尽快帮您解决的。另外您支付的款项一旦到账,我们就会根据销售活动规模按照顺序在一定周期内发货的,请您放心。
							<br>
							注：在您进行在线支付时,尽量在自己家中或是较为安全的网络环境中进行支付,以保证您的个人财产安全以及个人银行信息不被泄露,在您选择货到付款时,支付时记得将快递费用计算在内,以免影响您的正常收货。
						</p>
						<p class="ask">Q2: 努比亚支持哪几种支付方式？</p>
						<p class="answer">
							A2：我们支持 “货到付款”、“支付宝支付”、“支付宝快捷支付”、“网上银行直连”、“银行汇款”五种方式。 <br>
							具体营销活动的支付方式要根据销售活动的特点和性质而定。
						</p>
						<p class="ask">Q3: 无法付款,提示您的支付限额不够怎么办？</p>
						<p class="answer">A3: 如果现实支付限额不足,请联系您的发卡行修改支付限额。</p>
						<p class="ask">Q4: 在线商城可以信用卡支付吗？</p>
						<p class="answer">A4: 支持。</p>
						<p class="ask">Q5: 支付方式可不可以更改？</p>
						<p class="answer">A5:
							已生成并且已选好支付方式的订单,请进入用户中心——我的订单——查看详情,进入订单详情页面进行支付方式修改。</p>
						<p class="ask">Q6: 支付后提示已支付但订单却显示未支付</p>
						<p class="answer">A6:
							这是由于同时支付的订单数量太多,导致支付宝数据与我们系统数据暂时没有同步。原则上24小时内支付信息会同步正确,请您放心,如果超过24小时还未同步,您可以联系努比亚客服,我们会尽快帮您处理。给您带来不便,请谅解！</p>
					</div>
				</div>

				<div id="faq036" class="s-con-nest tab-pane">
					<div>
						<p>
							nubia在线购买平台支持支付宝支付、支付宝银行直连、支付宝快捷支付、货到付款、微信支付、趣分期支付、招商银行信用卡分期付款等支付方式。具体的支付方式会根据营销活动的性质做相应调整。</p>
						<p style="font-weight: bold">一、支付宝支付</p>
						<p>1. 进入订单详情页面，在“支付方式”处选择“支付宝”，如有优惠券 ，输入后提交订单；</p>
						<p>
							<img style="width: 700px" src="images/faq01.jpg" alt="nubia支付方式">
						</p>
						<p>
							<br>
						</p>
						<p>2. 提交订单后，显示订单已提交成功；</p>
						<p>
							<img style="width: 700px" src="images/faq02.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>3. 点击“支付宝支付”按钮，进入支付宝付款页面，填写支付宝账户信息，并点击下一步完成支付。</p>
						<p>
							<img style="width: 700px" src="images/faq03.jpg" alt="nubia支付方式">
						</p>
						<p>
							<br>
						</p>
						<p style="font-weight: bold">二、支付宝银行直连支付</p>
						<p>1. 进入订单详情页面，在“支付方式”处选择“支付宝银行直连”，然后选择您网银所属的银行，如有优惠券
							，输入后提交订单（注：此处以中国农业银行为例）；</p>
						<p></p>
						<p>
							<img style="width: 700px" src="images/faq04.jpg" alt="nubia支付方式">
						</p>
						<p>
							<br>
						</p>
						<br>
						<p>2. 提交订单后，显示订单提交成功，点击“支付宝支付”按钮，会自动进入您所选择银行的网银支付界面；</p>
						<p>
							<img style="width: 700px" src="images/faq05.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>3. 在网银支付界面，请按照网页提示进行操作，完成支付（注：此处以中国农业银行为例）。</p>
						<p>
							<img style="width: 700px" src="images/faq06.jpg" alt="nubia支付方式">
						</p>
						<br> <br>
						<p style="font-weight: bold">三、支付宝快捷支付</p>
						<p>1. 进入订单详情页面，在“支付方式”处选择“支付宝快捷支付”，如有优惠券 ，输入后提交订单；</p>
						<p>
							<img style="width: 700px" src="images/faq07.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>
							<br>
						</p>
						<p>2. 提交订单后，显示订单已提交成功；</p>
						<p>
							<img style="width: 700px" src="images/faq08.jpg" alt="nubia支付方式">
						</p>
						<br> <br>
						<p>3. 点击“支付宝支付”，进入支付宝支付页面；</p>
						<p>
							<img style="width: 700px" src="images/faq09.jpg" alt="nubia支付方式">
						</p>
						<br> <br>
						<p>4. 填写支付宝账户信息，并点击下一步完成支付。</p>
						<p>
							<img style="width: 700px" src="images/faq010.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p></p>
						<br>
						<p></p>
						<br>
						<p style="font-weight: bold">四、货到付款</p>
						<p>
							货到付款是nubia合作物流公司快递员（顺丰）送货上门，客户收单验货后，直接将货款交给快递员的一种结算方式（注：目前暂未开通POS机刷卡服务的地区，货到后需要现金支付）。
							<br>
						</p>
						<p>1. 进入订单详情页面，在“支付方式”处选择“货到付款”，如有优惠券
							，输入后提交订单（注：如未显示“货到付款”，表示您的收货地址或者正在购买的产品暂不支持该服务）</p>
						<p>
							<img style="width: 700px" src="images/faq011.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>2. 提交订单后，显示订单已提交成功，稍后会有客服进行电话确认，确认无误后订单正式生效。</p>
						<p>
							<img style="width: 700px" src="images/faq012.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p style="font-weight: bold">五、微信支付</p>
						<p>1. 进入订单详情页面，在“支付方式”处选择“微信支付”，如有优惠券 ，输入后提交订单；</p>
						<p>
							<img style="width: 700px" src="images/faq013.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>2. 提交订单后，显示订单已提交成功；</p>
						<p>
							<img style="width: 700px" src="images/faq014.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>3. 点击“微信支付”按钮，进入微信支付页面；</p>
						<p>
							<img style="width: 700px" src="images/faq015.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>4. 手机打开微信扫描二维码，进入微信确认交易页面，点击“立即支付”，输入微信支付密码，完成支付。</p>
						<p>
							<img style="width: 700px" src="images/faq016.png" alt="nubia支付方式">
						</p>
						<br>
						<p style="font-weight: bold">六、趣分期支付</p>
						<p>
							趣分期是nubia为方便大学生购买而合作的分期付款平台，面向全国正规统招全日制在校本/专科学生，包含研究生和博士生，需要提供身份证、学信网等方可办理。</p>
						<p>1. 进入订单详情页面，在“支付方式”处选择“趣分期”，如有优惠券 ，输入后提交订单；</p>
						<p>
							<img style="width: 700px" src="images/faq017.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>2. 提交订单后，显示订单已提交成功；</p>
						<p>
							<img style="width: 700px" src="images/faq018.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>3.
							点击“趣分期”按钮，进入趣分期支付页面，输入登录账号及密码，点击“确认分期付款”按钮，完成支付（注：初次使用需要验证身份证、邮箱、大学、宿舍地址信息）。</p>
						<p>
							<img style="width: 700px" src="images/faq019.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p style="font-weight: bold">七、招商银行信用卡分期付款</p>
						<p>1. 进入订单详情页面，在“支付方式”处选择“招商银行分期付款”，选择分期期数，查看付款金额、规则等信息，如有优惠券
							，输入后提交订单；</p>
						<p>
							<img style="width: 700px" src="images/faq020.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>2. 提交订单后，显示订单已提交成功；</p>
						<p>
							<img style="width: 700px" src="images/faq021.jpg" alt="nubia支付方式">
						</p>
						<br>
						<p>3. 点击“分期付款”按钮，进入招行信用卡付款页面，选择付款方式，填写相关信息，完成支付。</p>
						<p>
							<img style="width: 700px" src="images/faq022.jpg" alt="nubia支付方式">
						</p>
						<br>
					</div>
				</div>
				<div id="faq037" class="s-con-nest tab-pane ">
					<div id="art">
						<div>
							<h2 class="services-p">一、配送方式：</h2>
							<p>选用顺丰配送,顺丰不可达地区,转EMS配送。（收件时请检查发票是否在快递包装中）</p>
							<br>
							<h2 class="services-p">二、配送费用：</h2>
							<p>金牌用户全场订单免运费；</p>
							<p>银牌用户订单满39元免运费，不满39元收取运费10元；</p>
							<p>银牌以下用户订单满59元免运费，不满59元收取运费10元；</p>
							<br>
							<h2 class="services-p">三、配送范围：</h2>
							<p>
								顺丰配送范围参考： <a target="_balnk"
									href="http://www.sf-express.com/cn/sc/">http://www.sf-express.com/cn/sc/</a>
							</p>
							<p>顺丰不可达地区,转EMS配送。</p>
							<br>
							<h2 class="services-p">四、配送时间：</h2>
							<p>在收货地址页面里,新增收货地址时,您可以选择不限时间送货、工作日送货或双休日、假日送货。</p>
							<p>
								<img src="images/faq01.jpg" alt="nubia配送方式">
							</p>
							<p>到货的准确时间取决于您的具体收货位置和运输公司的当时效率,珠三角一般需要1～2天时间,省会城市一般需要2～3天时间,乡镇周边城市一般需要3～5天的时间,如果遇到节假日或者大型活动时间会有所延长。</p>
							<br> <br>
							<h2 class="services-p">五、配送查询：</h2>
							<p>商品发出后您可以登陆到"nubia-我的订单"查询发货单号,并根据发货单号查询配送进度,
								"顺丰速运"可拨打400-811-1111,也可到运输公司官网查询。</p>
							<br>
							<p>1）进入我的订单,点击所查询订单的“查看详情”</p>
						</div>
						<div>
							<img src="images/faq02.jpg" alt="nubia配送方式"> <br>
							<p></p>
							<p></p>
							<p>2）通过订单基本信息里的“发货单号”,即可查询配送进度。</p>
							<p>
								<img src="images/faq01.jpg" alt="nubia配送方式">
							</p>
							<p>
								对配送服务的其它说明： <br> 1．下单时,请尽量留下本人能够签收的地址与联系电话。
							</p>
							<p>2．收到商品时请当场验货,检查外包装是否完好,商品种类数量是否与订单明细相符,发票与购物清单是否齐全,发票金额与订单金额是否相符,不支持签收前拆手机包装验货。签收后可要求投递员在场共同检验发票,购物清单和手机包装内商品是否齐全。
							</p>
							<p>3．在本人不能亲自签收的情况下,请委托他人签收并严格按照第二项内容操作。</p>
							<p>4．如签收后商品出现质量问题,如功能性故障,请您及时联系客服中心400-700-6600。</p>
							<p></p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="policy0004" class="s-pay-con-tab-pane">
			<div class="services-p question-container">
				<p class="ask">Q1: 努比亚热线及服务时间？</p>
				<p class="answer">A1:
					努比亚热线号码为：400-700-6600，为用户提供咨询、售后、投诉等全程的服务享受。人工服务时间为：周一至周日
					8:30~20:30。</p>
				<p class="ask">Q2: 怎么查询努比亚客户服务中心？</p>
				<p class="answer">A2:
					您可以在www.nubia.cn“服务”-“客服中心”板块查询到努比亚客户服务中心的详细信息，也可以通过努比亚热线400-700-6600以及在线客服进行咨询。</p>
				<p class="ask">Q3: 怎么查询努比亚官方线下专卖店？</p>
				<p class="answer">A3:
					您可以在www.nubia.cn“专卖店”板块查询到详细信息，也可以通过努比亚热线400-700-6600以及在线客服进行咨询。</p>
				<p class="ask">Q4: 手机出现问题该如何进行退货？</p>
				<p class="answer">A4:
					您可以直接联系销售方进行业务办理，您也可以拨打努比亚热线400-700-6600咨询。</p>
				<p class="ask">Q5: 手机出现问题该如何进行换货？</p>
				<p class="answer">A5:
					您可以直接前往当地客户服务中心进行业务办理，您也可以拨打努比亚热线400-700-6600咨询。</p>
				<p class="ask">Q6: 手机出现问题该如何进行维修？</p>
				<p class="answer">A6:
					您可以直接前往当地客户服务中心进行业务办理，您也可以拨打努比亚热线400-700-6600咨询。</p>
				<p class="ask">Q7: 退换货及保修时需要什么凭证？</p>
				<p class="answer">A7:
					退货时需要提供销售发票原件。换货及保修时提供发票原件、商场购物小票、电子购物清单、运营商入网协议等任一种都可以。</p>
				<p class="ask">Q8: 机器退换货和维修邮寄到哪里？</p>
				<p class="answer">A8: 请拨打努比亚热线400-700-6600咨询。</p>
				<p class="ask">Q9: 邮寄产生的物流费用如何处理？</p>
				<p class="answer">A9:
					您邮寄时建议选择顺丰，采取运费到付方式；或者您先垫付运费，后续我们退款给您；付费维修时，运费由您个人承担。</p>
				<p class="ask">Q10: 什么情况下，不能享受免费退换货及保修服务？</p>
				<p class="answer">A10:</p>
				<p class="answer">1) 超过三包有效期限；</p>
				<p class="answer">2) 三包凭证上的内容与商品实物标示不符或者涂改的；</p>
				<p class="answer">3)
					未经授权的维修、私拆、误用、碰撞、进液、改动；或不当安装软件系统所造成的商品质量问题,或撕毁、涂改产品标贴、防伪标记、机器序列号（IMEI）；</p>
				<p class="answer">4) 未按产品使用书要求使用、维护、保养而造成损坏的；</p>
				<p class="answer">5) 因人为原因导致手机及其配件的损坏；</p>
				<p class="answer">6) 由于水灾、火灾、雷击等不可抗力造成的损坏；</p>
				<p class="answer">7) 使用非nubia原厂配件,导致手机故障或事故的。</p>
				<p class="ask">Q11: 机器有人为损坏等非保情况时，如何维修？</p>
				<p class="answer">A11:
					您可以到当地客户服务中心进行付费维修，也可以拨打努比亚热线400-700-6600，要求返厂付费维修。</p>
				<p class="ask">Q12: 付费维修后可以保修多久？</p>
				<p class="answer">A12:
					付费维修后，非人为原因造成的同类故障的保修期是30天（进液机除外），请您保留好相关的凭证。</p>
			</div>
		</div>


		<div id="policy0005" class="s-pay-con-tab-pane">
			<ul class="s-list-nest nav nav-tabs">
				<li class=""><a data-toggle="tab" href="#faq0601"
					onClick="change7(1)">>1+1快修服务</a></li>
				<li class=""><a data-toggle="tab" href="#faq0602"
					onClick="change7(2)">>上门服务</a></li>
				<li class=""><a data-toggle="tab" href="#faq0603"
					onClick="change7(3)">>7天无理由退货</a></li>
				<li class=""><a data-toggle="tab" href="#faq0604"
					onClick="change7(4)">>线上线下跨店退货</a></li>
				<li class=""><a data-toggle="tab" href="#faq0605"
					onClick="change7(5)">>Root保修</a></li>
				<li class=""><a data-toggle="tab" href="#faq0606"
					onClick="change7(6)">>意外宝</a></li>
				<li class=""><a data-toggle="tab" href="#faq0607"
					onClick="change7(7)">>微信新服务</a></li>
			</ul>
			<div class="tab-content">
				<div id="faq0601" class="s-con-nest tab-pane1 ">
					<div class="services-p">
						<div class="question-container">
							<p class="ask">Q1: 什么是1+1快修服务？</p>
							<p class="answer">A1:符合保修期条件的努比亚Z7系列及后续产品，在客服中心，从接待到维修，在1小时内完成；返厂维修，从签收返厂机到维修后寄出在1天（24小时）内完成。
							</p>
							<p class="ask">Q2: 所有nubia的机器都支持1+1快修服务吗？</p>
							<p class="answer">A2:只有符合保修期条件的，努比亚Z7系列及后续产品，才能享受1+1快修服务。具体请您拨打努比亚热线400-700-6600咨询。</p>
							<p class="ask">Q3: 全部客服中心都提供1+1快修服务吗？</p>
							<p class="answer">A3:目前只有部分城市的客服中心能提供1小时快修服务，您可以在nubia官网“服务”-“客服中心”板块，查询到已标注的客服中心的详细信息，也可以拨打努比亚热线400-700-6600咨询。</p>
							<p class="ask">Q4: 返厂快修包括物流时间吗？</p>
							<p class="answer">A4:只包括从签收返厂机到维修后寄出，不包括物流往返的时间。</p>
							<p class="ask">Q5: 返厂机器的可以查询进度吗？</p>
							<p class="answer">A5:微信关注“nubia智能手机”公众号后，通过“自助服务”-“我的自助”-“返厂维修查询”，按提示即可查询到您的机器的处理进度。</p>
							<p class="ask">Q6: 1+1快修服务包括机器的检测时间吗？</p>
							<p class="answer">A6:特殊服务及您的测试时间不计算在内。</p>
						</div>
					</div>
				</div>
				<div id="faq0602" class="s-con-nest tab-pane">
					<div class="services-p">
						<div class="question-container">
							<p class="ask">Q1: 不管在哪里买的努比亚手机都可以售后上门服务？</p>
							<p class="answer">A1: 只有在努比亚官网和官方线下专卖店购买的手机才支持售后上门服务。</p>
							<p class="ask">Q2: 怎样申请上门服务？</p>
							<p class="answer">A2: 请直接拨打努比亚热线400-700-6600。</p>
							<p class="ask">Q3: 哪些城市提供上门服务？</p>
							<p class="answer">A3:
								全国30个省份、直辖市、自治区的部分重点城市可以提供上门服务，具体请您拨打努比亚热线400-700-6600咨询。</p>
							<p class="ask">Q4: 提供上门服务城市的上门区域都是没有限制的吗？</p>
							<p class="answer">A4:
								暂时只能对重点城市的重点区域提供上门服务，具体请您拨打努比亚热线400-700-6600咨询。</p>
							<p class="ask">Q5: 哪些业务提供上门服务？</p>
							<p class="answer">A5: 努比亚整机的退货、换货和保修都可以提供上门服务。</p>
							<p class="ask">Q6: 上门服务是否需要收费？</p>
							<p class="answer">A6:
								正常退换货及保修业务，用户不需承担上门费用，无理由退货用户需要承担部分上门服务费用。</p>
						</div>
					</div>
				</div>
				<div id="faq0603" class="s-con-nest tab-pane">
					<div class="services-p">
						<div class="question-container">
							<p class="ask">Q1: 7天无理由退货从哪一天开始计算？</p>
							<p class="answer">A1:
								在官方线下专卖店购买的手机，从购买之日起计；从官网购买的手机，自收到商品之日起计。具体请拨打努比亚热线400-700-6600咨询。
							</p>
							<p class="ask">Q2: 不管在哪里购买的努比亚机器都支持7天无理由退货吗？</p>
							<p class="answer">A2:
								对nubia官网和官方线下专卖店购买的努比亚手机，购买七天内，如果手机无磨损和人为损坏，配件、赠品、发票等齐全，由于您个人喜好等原因，您可以随时选择退货。其他渠道销售的，以销售方公告的售后政策为准。</p>
							<p class="ask">Q3: 怎样办理7天无理由退货吗？</p>
							<p class="answer">A3:
								在官方线下专卖店购买的，可直接前往官方线下专卖店办理，或者直接拨打努比亚热线400-700-6600寻求协助；官网购买的，请直接致电400热线。</p>
							<p class="ask">Q4: 申请7天无理由退货后多长时间才能收到退款？</p>
							<p class="answer">A4:
								您好，因为邮寄、核实处理、退款处理等需要一点时间，我们将全程跟踪，有信息及时通知您，您也可以拨打努比亚热线400-700-6600查询。</p>
							<p class="ask">Q5: 机器使用过，可以七天无理由退货吗？</p>
							<p class="answer">A5:
								对nubia官网和官方线下专卖店购买的努比亚手机，自您收到商品之日起七天内，如果手机无磨损和人为损坏，配件、赠品、发票等齐全，您可随时选择退货。具体请拨打努比亚热线400-700-6600咨询。</p>
						</div>
					</div>
				</div>
				<div id="faq0604" class="s-con-nest tab-pane">
					<div class="services-p">
						<div class="question-container">
							<p class="ask">Q1: 什么是线上线下跨店退货？</p>
							<p class="answer">A1:
								在nubia官网购买的产品可以直接到官方线下专卖店申请退货；官方线下专卖店购买的产品，也可以到nubia官网或另一个官方线下专卖店申请退货。
							</p>
							<p class="ask">Q2: 无论在哪里购买的努比亚手机都可以跨店退货吗？</p>
							<p class="answer">A2: 只有在nubia官网或官方线下专卖店购买的努比亚手机，才支持线上线下跨店退货。</p>
							<p class="ask">Q3：全部官方线下专卖店都可以跨店退货吗？</p>
							<p class="answer">A3:
								目前只有部分专卖店能提供线上线下跨店退货服务，您可以在nubia官网的“专卖店”板块，查询到已标注的专卖店的详细信息，也可以通过努比亚热线400-700-6600咨询。</p>
							<p class="ask">Q4: 怎样办理跨店退货？</p>
							<p class="answer">A4:
								您可以直接前往官网已标注的专卖店办理，也可以拨打努比亚热线400-700-6600寻求协助。</p>
							<p class="ask">Q5: 退货后多长时间才能收到退款？</p>
							<p class="answer">A5:
								因为物流、收货后核实处理、退款处理等需要一点时间，我们将全程跟踪，有信息及时通知您，您也可以拨打努比亚热线400-700-6600查询。</p>
						</div>
					</div>
				</div>
				<div id="faq0605" class="s-con-nest tab-pane">
					<div class="services-p">
						<div class="question-container">
							<p class="ask">Q1: Root的机器可以退换货吗？</p>
							<p class="answer">A1: 对符合退换标准的机器，Root以后，也可以享受正常的退换货服务。</p>
							<p class="ask">Q2: 所有nubia手机Root都可以保修吗？</p>
							<p class="answer">A2:
								正规渠道销售nubia机器，均可以享受Root以后的正常保修服务。即是否Root均不影响机器的保修。</p>
							<p class="ask">Q3: 不管在哪里买的努比亚手机都可以Root保修吗？</p>
							<p class="answer">A3: 是。</p>
						</div>
					</div>
				</div>
				<div id="faq0606" class="s-con-nest tab-pane">
					<div class="services-p">
						<div class="question-container">
							<p class="ask">Q1: 我在购买手机时没有办理“意外宝”，过后还可以办理吗？</p>
							<p class="answer">A1: 意外宝服务必须与手机同时购买，不能单独办理。建议您在购买手机时与手机同时购买。</p>
							<p class="ask">Q2: “意外宝”服务可以办理延期吗（延期指“意外宝”结束后就同一手机再次购买“意外宝”）？</p>
							<p class="answer">A2: 目前暂时不能够为“意外宝”办理延期。</p>
							<p class="ask">Q3: “意外宝”能提供免费上门服务吗？</p>
							<p class="answer">A3: 意外宝暂时不提供上门服务，您需要带上手机到nubia指定客服中心去维修。</p>
							<p class="ask">Q4: 我刚购买了“意外宝”如果想退款可以吗？</p>
							<p class="answer">A4: 您在购买意外宝后的7天之内，如果没有享受过“意外宝”的服务，可以全额退费。</p>
							<p class="ask">Q5:
								经过意外宝服务免费置换了一台新手机，置换的新手机如果出现质量问题怎么办，是否可正常享受三包服务？</p>
							<p class="answer">A5: 新手机如有质量问题，在保修期内，可以正常享受三包服务。</p>
							<p class="ask">Q6:
								在“意外宝”保修期内，经过意外宝服务免费置换了一台新手机，新手机还可以享受“意外宝”服务吗？</p>
							<p class="answer">A6: 不能。“意外宝”为客户更换一次新机后，“意外宝”服务就终止了。</p>
							<p class="ask">Q7: 经过三包服务免费置换了一台新手机，新手机还可享受“意外宝”服务吗？</p>
							<p class="answer">A7:
								可以。如果在保修期内由于换机、维修等导致串号改变，请拨打努比亚热线400-700-6600进行备案。且务必保管好在手机保修期内的所有维修记录。</p>
							<p class="ask">Q8:“意外宝”的保修期怎么计算？</p>
							<p class="answer">A8: 意外宝的保修期是从购机的次日开始算起，向后延续一年。</p>
							<p class="ask">Q9: “意外宝”一年保修期内，可以免费修多少次，有没有次数限制？</p>
							<p class="answer">A9: 没有次数限制。</p>
							<p class="ask">Q10: 手机附件可以参加意外宝吗？</p>
							<p class="answer">A10:
								不可以。目前nubia意外宝服务的保修对象只针对手机，电池（外置）、耳机、充电器、数据线等附件不在保修范围内。</p>
							<p class="ask">Q11: 手机外观磨损是否可以更换新外壳？</p>
							<p class="answer">A11:
								对不起，意外宝服务仅针对影响手机功能故障的修复。外观磨损并不影响手机功能的正式使用，所以意外宝服务不包括更换外壳。另外，手机外壳所有非操作性、装饰性部件，包括油漆/颜料或手机表面抛光材料，都不属于意外宝的保修范围。</p>
							<p class="ask">Q12: 对于人为的损坏，是否提供维修？</p>
							<p class="answer">A12:
								意外宝不负责故意行为导致的手机损坏，或不可抗力（包括但不限于地震、雷电、洪灾、火灾等）、交通意外、人身伤害等意外事故导致的手机损坏。</p>
							<p class="ask">Q13: 什么情况下可以享受“意外宝”服务？</p>
							<p class="answer">A13:
								当您的手机在正常使用过程中，意外坠落、挤压、碰撞或进液，导致的手机的基本使用功能障碍，可享受免费的维修或更换服务。</p>
							<p class="ask">Q14: 到哪里才能获得“意外宝”提供的维修服务？</p>
							<p class="answer">A14:
								意外宝服务实行全国联保，你可以在全国范围内任何一家nubia授权客服中心进行维修。</p>
							<p class="ask">Q15: 我手中持有的“意外宝”协议遗失了，可以补办吗？</p>
							<p class="answer">A15: 意外宝协议丢失了是不可以补办的，所以请您妥善保管好。</p>
							<p class="ask">Q16: 如果我的“意外宝”协议丢失了，我还能享受意外宝服务吗？</p>
							<p class="answer">A16:
								如果服务协议丢失，我们会根据系统数据核实您的意外宝信息，核实无误后我们会立即给您安排服务；如系统数据核实不到您的意外宝信息，
								我们将无法为您提供意外宝服务。</p>
							<p class="ask">Q17: 我的“意外宝”协议或发票遗失了，能否凭手机串号来享受意外宝服务？</p>
							<p class="answer">A17:
								如果您的“意外宝”协议丢失，我们可以根据您当时购买“意外宝”时登记的用户姓名、电话、手机串号等信息在系统里进行核实，如果核实到您确实购买了“意外宝”，你仍然可以继续享受意外宝服务。</p>
							<p class="ask">Q18: 只有在nubia官网和官方线下专卖店购买的手机才能办理“意外宝”吗？</p>
							<p class="answer">A18:
								对。目前暂时只有在nubia官网和官方线下专卖店，购买手机同时购买意外宝服务。</p>
							<p class="ask">Q19: 在哪些官方线下专卖店可以购买“意外宝”？</p>
							<p class="answer">A19: 在全国的官方线下专卖店均可购买，但必须与手机一起购买，不能单独办理。</p>
							<p class="ask">Q20: 我的手机后盖由于松动不小心弄丢了，买了你们意外宝，能帮我把后盖补上吗？</p>
							<p class="answer">A20: 物件的遗失不在我们意外宝的保修范围内。</p>
							<p class="ask">Q21:
								如果我的手机因不可抗力（包括但不限于地震、雷电、洪灾、火灾、战争等）、交通意外（如车辆碾压、碰撞等）、人身伤害等意外事故导致的手机损坏，可以保修吗？</p>
							<p class="answer">A21: 根据“意外宝”的服务合同条款，这些都不属于意外宝的服务范围。</p>
							<p class="ask">Q22: 由于车祸导致手机损坏，能享受意外宝服务吗？</p>
							<p class="answer">A22:
								因人身伤害、交通事故等情况，对手机损坏都属于不可抗力因素，故不在我们意外宝的服务范围内。</p>
						</div>
					</div>
				</div>
				<div id="faq0607" class="s-con-nest tab-pane">
					<div class="services-p">
						<div class="question-container">
							<p class="ask">Q1: 如何使用微信新服务？</p>
							<p class="answer">A1:
								微信关注“nubia智能手机”公众号后，在菜单“自动服务”选择“我的服务”，即可体验微信新服务，详细可拨打努比亚热线400-700-6600咨询。</p>
							<p class="ask">Q2: 微信预约维修可以自己选定时间吗？</p>
							<p class="answer">A2: 提交微信预约单后，对应的客服中心会及时通过电话与您联系，商定具体的维修时间。</p>
							<p class="ask">Q3: 为什么预约维修后没人联系我？</p>
							<p class="answer">A3:
								请检查您的微信预约单，确认填写的电话号码正确，方便对应的客服中心及时与您联系，详细可拨打努比亚热线400-700-6600咨询。</p>
							<p class="ask">Q4: 预约之后，可以自己取消吗？</p>
							<p class="answer">A4:
								在客服中心没和您电话联系前，您可以通过微信直接取消预约单；或者当客服中心和您联系时，通知客服中心代您取消；如果您已预约成功，但暂时有事不能前往，不需要做任何操作，预约逾期后，预约单自动取消。</p>
							<p class="ask">Q5: 预约逾期后，可以重新预约吗？</p>
							<p class="answer">A5: 可以。</p>
							<p class="ask">Q6: 预约的时间怎样查询？</p>
							<p class="answer">A6: 预约成功后，您可通过“预约查询”菜单，查阅到预约时间。</p>
							<p class="ask">Q7: 我的机器已经返厂维修了，为什么在微信查询不到信息呢？</p>
							<p class="answer">A7:
								当您的包裹到了nubia售后并扫描入库后，您才能在微信“返厂维修查询”菜单内，查阅相关的进度。详细可拨打努比亚热线400-700-6600咨询。</p>
							<p class="ask">Q8: 返厂维修查询需要提供什么信息？</p>
							<p class="answer">A8:
								在微信“返厂维修查询”菜单内，根据相关提示，输入您的手机IMEI号、或快递单上的手机号、或快递单号，即可查询到相关信息。</p>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="policy0006" class="s-pay-con-tab-pane">
			<div style="height: 80px;">
				<ul id="tab-nav">
					<li class="" href="javascript:void;" onClick="change8(1)">Z9系列</li>
					<li class="" href="javascript:void;" onClick="change8(2)">Z5/Z7/X6系列</li>
				</ul>
			</div>
			<div class="Zfaq11" style="" id="Zfaq1">
				<ul class="s-list-nest nav nav-tabs" id="s-list-nest1">
					<li><a data-toggle="tab" href="#z9faq051" onClick="change9(1)">>联系人</a></li>
					<li><a data-toggle="tab" href="#z9faq052" onClick="change9(2)">>软件与应用程序</a></li>
					<li><a data-toggle="tab" href="#z9faq053" onClick="change9(3)">>通话</a></li>
					<li><a data-toggle="tab" href="#z9faq054" onClick="change9(4)">>信息</a></li>
					<li><a data-toggle="tab" href="#z9faq055" onClick="change9(5)">>上网</a></li>
				</ul>
				<div class="tab-content">
					<div id="z9faq051" class="s-con-nest tab-pane1">
						<div class="services-p">
							<div class="question-container">
								<p class="ask">Q1.如何从电话卡导入联系人？</p>
								<p class="answer">A：打开联系人， 点击“菜单键/更多→联系人高级选项→从电话卡导入联系人”
									(插双卡时，选择“从电话卡1导入联系人”或者“从电话卡2导入联系人”)，选择要导入的联系人，点击【确定】，此时会提示“确定要导入所选的联系人吗？”选择【确定】。</p>
								<div style="text-align: center;">
									<img src="images/1_033.jpg" data-pinit="registered"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q3.如何导出联系人到手机存储？</p>
								<p class="answer">A：打开联系人，
									点击“菜单键/更多→联系人高级选项→导出vCard格式联系人”，将提示“系统会将您的联系人列表导出到以下文件：00001.vcf,该文件位于手机存储目录下”，选择【确定】。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_031.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q4.如何从手机存储导入联系人？</p>
								<p class="answer">A：打开联系人，
									点击“菜单键/更多→联系人高级设置→导入vCard格式联系人”，系统将会提示“选择vCard文件”，以下可选“导入一个、多个、所有vCard文件”
									选项，选择后再点击【确定】，系统会自动在你手机内存中搜索vCard数据并导入。</p>
								<div style="text-align: center;">

									<img data-pinit="registered" src="images/4_024.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q5.如何给一个联系人设置多个电话号码？</p>
								<p class="answer">A：请确定联系人是储存在手机内存中（此功能可能不支持在SIM/UIM卡中存储的联系人），打开联系人，点击“编辑”，即可对该联系人编辑增添新的电话号码。说明：在“添加更多项”中，可对该联系人新增电子邮件、地址、昵称等其他详细信息。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/5_019.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q6.如何让手机只显示指定类别的联系人？</p>
								<p class="answer">A：打开联系人，点击“菜单键或更多→显示/隐藏联系人”，在选项菜单键中，根据您的需要，您可以勾选其中的一类或多类联系人，被勾选的联系人类别将会出现在手机的联系人列表中。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/6_015.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q7.如何查找联系人？</p>
								<p class="answer">A：进入通讯录，所有联系人按字母顺序排列在联系人列表中。</p>
								<p class="answer">（1）滑动手指上下滚动联系人列表。您也可以沿着右侧的索引拖动手指，快速滚动列表。</p>
								<p class="answer">（2）点按联系人名称，查看联系人详细信息，也可拨打电话、发送信息和呼叫前编辑号码。
									或点按屏幕顶部的“查找联系人”，可以按照全拼、首字母、关键字以及电话号码查询，手机将会自动列出所匹配的联系人。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/7_012.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q8.如何创建联系人群组？</p>
								<p class="answer">A：通过创建联系人群组，可向整个群组发送信息或邮件。</p>
								<p class="answer">（1）在联系人界面，点按下方的【群组】按钮；</p>
								<p class="answer">（2）点按【创建群组】；</p>
								<p class="answer">（3）在添加群组界面中，输入群组名称、设置群组铃声，添加成员或在输入联系人姓名框栏后面，点按“联系人”标签进入到联系人列表中，选择已有的联系人，然后确定即可从联系人列表中添加联系人到群组中，最后编辑群组、设置铃声、编辑群成员后，点击【完成】。
								</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/8_010.jpg"
										alt="nubia FAQ">
								</div>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/9_009.jpg"
										alt="nubia FAQ">
								</div>
							</div>
						</div>
					</div>
					<div id="z9faq052" class="s-con-nest tab-pane">
						<div class="services-p">
							<div class="question-container">
								<p class="ask">Q1.如何将下载至电脑的应用软件安装到手机上？</p>
								<p class="answer">A：请确定软件的格式要为.apk，Android系统只允许在手机上安装.apk软件。将电脑中的APK文件拷贝到手机中，打开手机中“我的文件→安装包→未安装”，找到该APK文件并点击安装。您也可以直接使用第三方平台软件安装，比如91助手、豌豆荚、应用宝等。</p>
								<p>说明：安装未经谷歌认证的应用程序，需要选择“设置→安全和位置→安装管理”并打开【未知来源】。请注意安装使用从未知来源获取的应用程序可能会造成手机损坏，个人数据丢失或泄漏。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/1_037.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q2.如何查看执行中的应用程序并关闭不使用的应用程序？</p>
								<p class="answer">
									A：
									（1）长按HOME键，可查看到正在运行的应用程序缩略图列表，点击缩略图可以切换到此程序；按住缩略图向上滑动即可关闭此应用程序，直接点击
									<img data-pinit="registered" src="images/close.jpg"
										alt="nubia FAQ"> 即可关闭所有后台运行程序；
								</p>
								<p class="answer">（2）选择“设置→应用程序”，并向左滑动到【正在运行】，可以看到正在运行的应用程序列表，选择不使用的应用程序将其关闭；</p>
								<p class="answer">（3）您也可以在通知栏下拉菜单中点击【一键清除】清理后台应用程序。</p>
								<p class="ask">Q3.如何启用应用程序自动更新？</p>
								<p class="answer">A：有的应用程序在启动后，会自动提示更新。一般在应用程序的设置项中有相关自动更新的选项，您可以选择是否启用自动更新。
									说明：</p>
								<p class="answer">（1）不是所有的应用程序均会自动提示更新；</p>
								<p class="answer">（2）此功能需要连接网络（WLAN或者数据业务上网）才能正常运作，设置了自动更新可能会消耗更多的电池电量。</p>
								<p class="ask">Q4.如何查看手机的版本信息？</p>
								<p class="answer">A：在待机屏幕选择“设置?关于手机”即可查看型号、版本号等有关信息。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/2_030.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q5.如何将手机恢复出厂设置？？</p>
								<p class="answer">A：在待机屏幕选择“设置→其它→恢复出厂设置→恢复手机出厂设置”。恢复过程大概3分钟，完成后系统会自动重启。如果您的手机停留开机界面上很久没有反应，请耐心等待，第一次开机时间比较长。</p>
								<div style="text-align: center;">
									<p>说明：</p>
									<p class="answer">（1）恢复出厂设置后的第一次开机时间会比较长，请耐心等待；</p>
									<p class="answer">（2）恢复出厂设置后会清除手机设置及保存在手机里的信息，包括账户、短信、联系人、通话记录等，请您提前备份个人数据等，请您提前备份用户数据。</p>
									<p class="ask">Q6.如何卸载手机上的应用程序？</p>
									<p class="answer">A：卸载手机上的应用程序有两种方法：</p>
									<p class="answer">(1)在待机屏幕，选择“设置?应用程序”，在应用程序列表中找到要删除的应用程序，点击卸载；</p>
									<div style="text-align: center;">
										<img data-pinit="registered" src="images/4_023.jpg"
											alt="nubia FAQ">
									</div>
									<p class="answer">(2)在待机屏幕找到要删除的应用程序图标,长按该图标,会在屏幕上方显示“垃圾箱”的图标，把要删除的应用图标拖入到“垃圾箱”即可卸载该程序。</p>
									<div style="text-align: center;">
										<img data-pinit="registered" src="images/5_021.jpg"
											alt="nubia FAQ">
									</div>
									<p>说明：手机中的系统文件程序是不允许卸载的。</p>
									<p class="ask">Q7.能否卸载手机预装的应用软件？</p>
									<p class="answer">A：手机内预装的部分应用程序是可以卸载的，长按该图标,
										在屏幕上方会显示“垃圾箱”的图标，把要删除的应用图标拖入到“垃圾箱”即可卸载该程序，但手机恢复出厂设置后程序会自动恢复。</p>
								</div>
							</div>
						</div>
					</div>
					<div id="z9faq053" class="s-con-nest tab-pane">
						<div class="services-p">
							<div class="question-container">
								<p class="ask">Q1.手机是否支持按电源键挂断电话?</p>
								<p class="answer">A：支持。在待机屏幕选择“设置→其它→辅助功能”，滑动开启【按电源按钮结束通话】即可。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/1_038.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q2.无法拨打或接听电话，如何处理？</p>
								<p class="answer">A：（1）请确认手机信号处于正常状态下，如果手机无信号或者信号较弱，请到信号较强的地方再进行测试；</p>
								<p class="answer">（2）确认是否开启了【飞行模式】，请在通知栏下拉菜单中关闭【飞行模式】；</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/2_032.jpg"
										alt="nubia FAQ">
								</div>
								<p class="answer">（3）确保SIM/UIM卡处于正常状态，将此SIM/UIM卡放到其他手机中进行测试，确认SIM/UIM卡是否有问题；</p>
								<p class="answer">（4）确认手机网络模式设置是否正确，在待机屏幕选择“设置→更多→移动网络→网络模式”（双卡情况下，进“设置→双卡设置→卡信息，点击无法通信的那张卡），请查看“首选网络类型”否默认为通用即全网模式，或设置为SIM/UIM卡对应的网络模式；
								</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_026.jpg"
										alt="nubia FAQ">
								</div>
								<p class="answer">（5）如果用户做了其它设置，可以建议用户恢复出厂设置，如果仍不正常请联系维修网点处理。提示：恢复出厂设置后会清除手机设置及保存在手机里的信息，包括账户、短信、联系人、通话记录等，请您提前备份个人数据等，请您提前备份用户数据。</p>
								<p class="ask">Q3. 插双卡使用时，如何设置默认通讯卡？</p>
								<p class="answer">A：（1）在待机屏幕选择“设置→双卡设置”，进入【设置默认通讯卡】进行设置；</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/4_022.jpg"
										alt="nubia FAQ">
								</div>
								<p class="answer">（2）在待机屏幕选择“联系人→菜单键/更多”进入【设置默认通讯卡】进行设置。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/5_017.jpg"
										alt="nubia FAQ">
								</div>
							</div>
						</div>
					</div>
					<div id="z9faq054" class="s-con-nest tab-pane">
						<div class="services-p">
							<div class="question-container">
								<p class="ask">Q1.短信息最多可以编辑多少个字符？</p>
								<p class="answer">A：手机支持长短信功能，短信内容输入上限为2000个字符，无法再添加文字。</p>
								<p class="ask">Q2. 如何关闭彩信自动接收？</p>
								<p class="answer">A：在待机屏幕选择“信息→菜单键/更多→设置”，然后在彩信设置区域滑动关闭【自动取回】即可。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/1_016.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q3.无法收发彩信如何处理？</p>
								<p class="answer">A：（1）请确认手机信号处于正常状态下，如果手机无信号或者信号较弱，请到信号较强的地方再进行测试；</p>
								<p class="answer">（2）请确认手机SIM/UIM卡的彩信功能正常；</p>
								<p class="answer">（3）重置APN：请进入“设置→更多→移动网络→接入点名称(APN)”（双卡时进入“设置→双卡设置→电话卡1/电话卡2→接入点名称（APN）），点击【重置为默认设置】；
								</p>
								<p class="answer">（4）如果还有问题请联系进行维修网点检测。</p>
								<p class="answer">备注：</p>
								<p class="answer">彩信收发主要涉及到如下几点：</p>
								<p class="answer">（1）确认是否能收到彩信通知，如果不能收到彩信通知，则先咨询运营商，是否开通了相关服务；</p>
								<p class="answer">（2）确认用户的卡套餐是否开通了数据业务；</p>
								<p class="answer">（3）确认已经打开数据业务功能。在待机屏幕选择“系统设置→更多→移动网络”，打开“启用数据网络”，对于电信用户，还要将“接入点名称（APN)”切换至“ctwap”；
								</p>
								<p class="answer">（4）检查此时手机是否能正常上网，网络信号是否良好。如果不能正常上网，则无法接受彩信，先排查网络设置；</p>
								<p class="answer">（5）进入信息模块的“设置”，打开“自动取回”；</p>
								<p class="answer">（6）检查彩信的单个会话是否超过50条；</p>
								<p class="answer">（7）如果用户更改了彩信参数相关设置，可以恢复出厂设置，再按上述步骤逐条检查，再尝试收发彩信。</p>
								<p class="ask">Q4. 如何将SIM/UIM卡内的短信复制到手机中？</p>
								<p class="answer">A：在待机屏幕选择“信息→菜单键/更多→设置→管理电话卡中的信息”，长按要复制的短信并点击【复制到手机内存】即可。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/2_036.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q5.如何设置信息存储容量限制？</p>
								<p class="answer">A：在待机屏幕选择“信息→菜单键/更多→设置”，点击【短信限制】或【彩信限制】即可设置每个会话的最大信息数量。如开启【删除旧信息】，当信息达到设置的数量上限时旧信息会自动被删除。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_027.jpg"
										alt="nubia FAQ">
								</div>
							</div>
						</div>
					</div>

					<div id="z9faq055" class="s-con-nest tab-pane">
						<div class="services-p">
							<div class="question-container">
								<p class="ask">Q1.哪些情况会大量耗费手机上网数据流量？</p>
								<p class="answer">A：（1）智能手机会有很多联网应用，尤其Android手机支持多任务运行，有些程序关闭后实际还在后台运行，比如微博等；</p>
								<p class="answer">（2）在线地图也是一个流量杀手。如果事先没有下载过这个城市的离线地图，那么导航软件会提示下载，通常下载一个城市地图能耗费掉几十MB的流量；</p>
								<p class="answer">（3）在线视频、音频软件也是比较耗费流量的应用，不停地上传、下载视频和音频对于流量的耗费非常大。一些在线收音机、在线听歌的软件因为需要随时连接网络，下载资源，也会耗费大量流量；</p>
								<p class="answer">（4）如果您不小心下载了来源不明的软件或是流氓软件，智能手机程序中了病毒或者木马，也可能会自动联网，在后台产生巨大的流量。</p>
								<p class="ask">Q2.如何节省手机上网数据流量？</p>
								<p class="answer">A：建议如下：</p>
								<p class="answer">（1）关闭移动网络数据连接：平时不需要手机联网时应及时关闭数据连接，避免产生不必要流量。选择“设置→更多→移动网络”(单卡时)或者选择“设置→双卡设置→上网设置”(双卡时)，滑动关闭【移动数据】选项，或者直接在通知栏的下拉菜单中点击关闭移动数据；</p>
								<p class="answer">（2）关闭自动同步：如果您在手机添加了Google或其他邮件账户，在您更新了日历、联系人等信息以及一些应用程序的数据时，都会自动同步到您的账户上，反之亦然，这样可能会产生大量的数据流量；通过设置→账户→电子邮件，点击任意邮箱账户，去勾选可以取消邮件同步；</p>
								<p class="answer">（3）禁止浏览器下载图片：上网过程中下载图片非常耗费流量。打开浏览器，选择“菜单键--设置--无图模式”，开启【无图模式】后，可屏蔽网页中的图片，达到节省流量的目的。另外，也可以进入省流模式，将【图片质量】设置为低，或者开启【将电脑网页转为手机版面】。</p>
								<p class="answer">（4）流量监控：在待机屏幕选择“设置→更多→流量控制”，可使用手机内置的流量控制功能。
									您可以方便地查看网络流量、设置移动数据限制、设置警告等，从而有效管理移动数据的使用情况。您也可以再手机上安装使用第三方的流量监控软件，以实时监测流量的使用情况，避免不必要的超流量上网情况发生。</p>
								<p class="ask">Q3.为何手机在打开数据连接时，会有数据流量产生？</p>
								<p class="answer">A：打开数据连接时，手机和网络服务器端会有交互：手机会先发送连接请求给网络服务器端，网络服务器端收到请求后需要认证才能建立数据连接，这个交互过程就会产生流量。但是此过程产生的数据流量不大，只有几KB或者十几KB。另外，手机中的流量统计数据只是一个参考值，具体的数据流量以运营商统计为准。</p>
								<p class="ask">Q4.如何在工具栏显示实时网速？</p>
								<p class="answer">A：在待机屏幕选择“设置→更多→流量控制”，开启【实时网速】即可。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/1_039.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q5.如何设置移动网络接入点？</p>
								<p class="answer">A：（1）在待机屏幕选择“设置→更多→移动网络?接入点名称（APN）”（单卡时）或者在待机屏幕选择“设置→双卡设置→卡信息（卡1或者卡2）→接入点名称（APN）”（双卡时）；</p>
								<p class="answer">（2）选择接入点对应项输入参数点击“确定”；</p>
								<p class="answer">（3）如果需要恢复默认设置，点击【重置为默认设置】；</p>
								<p class="answer">（4）如果需要新建APN，点击
									【新建APN】图标，在“修改接入点”界面输入正确的参数保存即可。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/2_028.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q6.在国外或香港、澳门、台湾等地无法使用数据业务如何处理？</p>
								<p class="answer">A：（1）如果用户使用的是国内运营商的SIM/UIM卡；</p>
								<p class="answer">a.需要确认是否开通了国际漫游业务；</p>
								<p class="answer">b.该运营商是否与国外的运营商网络有协议；</p>
								<p class="answer">c.将该SIM/UIM卡放入其他手机，是否可以使用3G上网？</p>
								<p></p>
								<p class="answer">如果确认以上情况正常，参照其他的机器设置对应的APN，保存并勾选数据漫游选项即可。</p>
								<p class="answer">（2）如果用户使用的是国外当地运营商的SIM/UIM卡。
									参照其他的机器设置或者咨询当地运营商设置对应的APN，保存并勾选数据漫游选项即可。</p>
								<p class="ask">Q7.如何使用自带的流量监控功能查看上网流量？</p>
								<p class="answer">A：（1）在待机屏幕选择“设置→更多→流量控制”；</p>
								<p class="answer">（2）设定流量使用周期；</p>
								<p class="answer">（3）在流量使用周期下方的图表中，拖动白线设置查看流量使用周期。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_030.jpg"
										alt="nubia FAQ">
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="Zfaq22" id="Zfaq2" style="display: none">
				<ul class="s-list-nest nav nav-tabs" id="s-list-nest2">
					<li><a data-toggle="tab" href="#faq051" onClick="change10(1)">>联系人</a>
					</li>
					<li><a data-toggle="tab" href="#faq052" onClick="change10(2)">>软件与应用程序</a>
					</li>
					<li><a data-toggle="tab" href="#faq053" onClick="change10(3)">>通话</a>
					</li>
					<li><a data-toggle="tab" href="#faq054" onClick="change10(4)">>信息</a>
					</li>
				</ul>
				<div class="tab-content">
					<div id="faq051" class="s-con-nest tab-pane1">
						<div class="services-p">
							<div class="question-container">
								<p class="ask">Q1: 如何从电话卡导入联系人？</p>
								<p class="answer">
									A:将联系人从SIM/UIM卡中导入到手机,打开联系人,
									点击“菜单键/更多→联系人高级选项→从电话卡导入联系人”,点击你需要导入的联系人或者点击全部“ <img
										data-pinit="registered" src="images/0.jpg" alt="nubia FAQ">
									”,点击“确定”,在屏幕弹出“确定要导入所选的联系人吗？”选择“确定”。
								</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/1_018.jpg"
										alt="nubia FAQ">
								</div>
								<div style="text-align: center;">
									<br>
								</div>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/2_012.jpg"
										alt="nubia FAQ">
								</div>
								<div style="text-align: center;">
									<br>
								</div>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q2: 如何导出联系人到电话卡？</p>
								<p class="answer">
									A:将联系人从手机导入到SIM/UIM卡中,打开联系人,
									点击“菜单键/更多→联系人高级选项→导出联系人到电话卡”,点击你需要导入的联系人或者点击全部“ <img
										data-pinit="registered" src="images/0.jpg" alt="nubia FAQ">
									”,选择“确定”,在屏幕弹出“确定要导入所选的联系人吗？”选择“确定”。
								</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<div style="text-align: center;">
									<br>
								</div>
								<p class="ask">Q3: 如何给一个联系人设置多个电话号码？</p>
								<p>A：请确定联系人是储存在手机内存中（此功能可能不支持在SIM/UIM卡中存储的联系人）,若要为单一联系人设定多组号码,请打开联系人,点选想要新增详细信息的联系人并编辑该联系人,在编辑界面便可新增电话号码。
								</p>
								<p>说明：在编辑界面也可新增电子邮件、邮寄地址等其他详细信息。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q4: 如何让手机只显示指定类别的联系人？</p>
								<p>A：若要在手机的联系人界面中只显示指定类别联系人，请打开联系人，点击“菜单键/更多→联系人高级选项→显示设置”，在选项菜单键中，根据您的需要，您可以勾选其中的一类或多类联系人，被勾选的联系人类别将会出现在手机的联系人中。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q5: 如何查找联系人？</p>
								<p>A：进入通讯录，所有联系人按字母顺序排列在联系人列表中。</p>
								<p>
									（1）滑动手指上下滚动联系人列表。您也可以沿着右侧的索引 <img data-pinit="registered"
										src="images/0.jpg" alt="nubia FAQ"> 拖动手指,快速滚动列表。
								</p>
								<p>（2）点按联系人名称，查看联系人详细信息；</p>
								<p>
									（3）在联系人详细信息页面您可以点按电话号码拨打电话,点按 <img data-pinit="registered"
										src="images/0.jpg" alt="nubia FAQ"> 按钮发送信息。
								</p>
								<p>您也可以点按屏幕顶部的“查找联系人”,可以按照全拼、首字母、关键字以及电话号码查询,手机将会自动列出所匹配的联系人。
								</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/0.jpg" alt="nubia FAQ">
								</div>
								<p class="ask">Q6: 创建联系人群组？</p>
								<p>A：通过创建联系人群组,可向整个群组发送信息或邮件。</p>
								<p>
									（1）在联系人界面,点按群组 <img data-pinit="registered" src="images/0.jpg"
										alt="nubia FAQ"> 标签。
								</p>
								<p>
									（2）再点按屏幕顶部的 <img data-pinit="registered" src="images/0.jpg"
										alt="nubia FAQ">按钮。
								</p>
								<p>
									（3）选择在哪个账户下创建群组、输入群组名称、设置群组铃声,编辑群组可点按 <img
										data-pinit="registered" src="images/0.jpg" alt="nubia FAQ">添加联系人。
								</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>

								<div style="text-align: center;">
									<br>
								</div>
								<div style="text-align: center;">
									<br>
								</div>
							</div>
						</div>
					</div>
					<div id="faq052" class="s-con-nest tab-pane">
						<div class="services-p">
							<div class="question-container">
								<p class="ask">Q1: 如何将下载至电脑的应用软件安装到手机上？</p>
								<p class="answer">A：如需将应用软件安装到手机,请确定软件的格式为.apk,Android系统只允许在手机上安装.apk软件。将电脑中的APK文件拷贝到手机中,打开手机中的云管理,找到该APK文件并点击安装。你也可以直接使用第三方平台软件安装,比如91助手、豌豆荚、腾讯精灵等。
								</p>
								<p>说明：安装未经谷歌认证的应用程序,需要选择“设置→安全”并勾选【未知来源】。请注意安装使用从未知来源获取的应用程序可能会造成手机损坏,个人数据丢失或泄漏。
								</p>
								<p class="ask">Q2: 如何查看执行中的应用程序并关闭不使用的程序？</p>
								<p class="answer">A：打开任务管理器可以看到正在运行的应用程序列表,选择不使用的应用程序将其关闭即可,您也可以长按“HOME键”或者在下拉菜单中运行“一键清理”清理后台程序。
								</p>
								<p class="ask">Q3: 如何启用应用程序自动更新？</p>
								<p class="answer">A：有的应用程序在启动后,会自动提示更新。一般在应用程序的设置项中也有相关自动更新的选项,用户可以选择是否启用自动更新。
								</p>
								<p class="answer">说明：（1）不是所有的应用程序均会自动提示更新；</p>
								<p class="answer">（2）此功能需要连接网络（WLAN或者数据业务上网）才能正常运作,设置了自动更新可能会消耗更多的电池电量。
								</p>
								<p class="ask">Q4: 如何查看手机的版本信息？</p>
								<p class="answer">A：请按如下操作查看手机相关信息：在待机屏幕选择“设置→关于手机”查看有关信息。</p>
								<p class="ask">Q5: 如何将手机恢复出厂设置？</p>
								<p class="answer">A：在待机屏幕选择“设置→其他→恢复出厂设置→重置手机”。恢复过程大概3分钟，完成后系统会自动重启。如果您的手机停留开机界面上很久没有反应，请耐心等待，第一次开机时间比较长。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<div class="question-container">
									<p class="answer">说明：（1）恢复出厂设置后的第一次开机时间会比较长,请耐心等待；</p>
									<p class="answer">（2）恢复出厂设置后会清除手机设置及保存在手机里的信息,请您提前备份用户数据。</p>
									<p class="ask">Q6:如何卸载手机上的应用程序？</p>
									<p class="answer">A:卸载手机上的应用程序有两种方法：</p>
									<p class="answer">(1)在待机屏幕选择
										“设置→应用程序”,在应用程序列表中找到要删除的应用程序,点击卸载,或者使用第三方工具软件卸载。</p>
									<div style="text-align: center;">
										<img data-pinit="registered" src="images/3_019.jpg"
											alt="nubia FAQ">
									</div>
									(2)在待机屏幕找到要删除的应用程序图标,长按该图标,会在屏幕上方显示“垃圾箱”的图标，把要删除的应用图标拖入到“垃圾箱”即可卸载该程序。
									<br>
									<p>说明：手机中的系统文件程序是不能卸载的。</p>
									<div style="text-align: center;">
										<img data-pinit="registered" src="images/3_019.jpg"
											alt="nubia FAQ">
									</div>
									<div style="text-align: center;">
										<img data-pinit="registered" src="images/3_019.jpg"
											alt="nubia FAQ">
									</div>
									<p class="ask">Q7: 如何查看执行中的应用程序并关闭不使用的程序？</p>
									<p class="answer">A：打开“应用程序”可以看到正在运行的应用程序列表，选择不使用的应用程序将其关闭，您也可以长按HOME键或在下拉菜单中运行“一键清除”关闭后台运行的程序。</p>
									<p class="ask">Q8: 能否卸载手机内置的应用软件？</p>
									<p class="answer">A：手机内预装的部分应用程序是可以卸载的，长按该图标,会在屏幕上方显示“垃圾箱”的图标，把要删除的应用图标拖入到“垃圾箱”即可卸载该程序，但手机恢复出厂设置后程序会自动恢复。</p>
								</div>
							</div>
						</div>
					</div>
					<div id="faq053" class="s-con-nest tab-pane">
						<div class="services-p">
							<div class="question-container">
								<p class="ask">Q1: 手机是否支持按电源键挂断电话?</p>
								<p class="answer">A：支持。在待机屏幕选择“设置→其他→辅助功能”中开启“按电源按钮结束通话”。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q2: 无法拨打或者接听电话,如何处理？</p>
								<p class="answer">A:（1）请确认手机信号处于正常状态下,如果手机无信号或者信号较弱,请到信号较强的地方再进行测试；
								</p>
								<p class="answer">
									（2）确认是否开启了【飞行模式】,请在开机状态长按电源键,进入【手机选项】设置菜单,将【飞行模式】关闭；</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<p class="answer">（3）确保SIM/UIM卡处于正常状态,将此SIM/UIM卡放到其他手机中进行测试,确认SIM/UIM卡是否有问题；</p>
								<p class="answer">（4）确认手机网络模式设置是否正确,在待机屏幕选择“设置→更多→移动网络→网络模式”,请选择全网模式或者SIM/UIM卡对应的网络模式；
								</p>
								<p class="answer">（5）如果用户做了其它设置,可以建议用户恢复出厂设置,如果仍不正常请联系维修网点处理。
								</p>
								提示：恢复出厂设置后会清除手机设置及保存在手机里的信息,请您提前备份用户数据。
							</div>
						</div>
					</div>
					<div id="faq054" class="s-con-nest tab-pane">
						<div class="services-p">
							<div class="question-container">
								<p class="ask">Q1: 手机如何转发短信？</p>
								<p class="answer">A：请按住需要转发的短信2秒钟,然后会出现一个新菜单,在菜单中选择转发即可。</p>
								<p class="ask">Q2: 短信息最多可以编辑多少个字符？</p>
								<p class="answer">A：手机支持长短信功能,编辑字数没有上限。</p>
								<p class="ask">Q3: 如何关闭彩信自动接收？</p>
								<p class="answer">A：若要将彩信设置为手动下载,请进入信息,点击“菜单键→设置”,然后在彩信设置区域关闭【自动取回】即可。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q4:无法收发彩信如何处理?</p>
								<p class="answer">A:
									（1）请确认手机信号处于正常状态下,如果手机无信号或者信号较弱,请到信号较强的地方再进行测试；</p>
								<p>
									（2）检查手机的内存空间,确认手机是否有足够的空间接收信息,如果空间不足,请将手机的空间清理一下； <br>
								</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<p>（3）如果还有问题请联系进行维修网点检测。</p>
								<p class="ask">Q5: 如何将SIM/UIM卡内的短信复制到手机中？</p>
								<p class="answer">A:进入短信,
									点击“菜单键→设置→管理电话卡中的信息”,长按要复制的短信并点击【复制到手机内存】即可。</p>
								<div style="text-align: center;">
									<img data-pinit="registered" src="images/3_019.jpg"
										alt="nubia FAQ">
								</div>
								<p class="ask">Q6: 如何将手机内的短信复制到SIM/UIM卡中？</p>
								<p>A:进入短信, 打开一条信息会话, 长按要复制的短信并点击复制到SIM/UIM卡即可。</p>
								<div>
									<p>说明：如果信息内容超过70字,可能无法复制。</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div id="policy0007" class="s-con-nest-tab-pane">
			<div class="services-p">
				<div class="question-container">
					<p class="ask">努比亚用户共分为4个等级：</p>
					<p class="answer">金牌用户：满8000牛豆</p>
					<p class="answer">银牌用户：满3000牛豆</p>
					<p class="answer">铜牌用户：满1000牛豆</p>
					<p class="answer">普通用户：1000牛豆以下</p>
					<p class="answer">用户等级越高，享受到的会员权益越大。</p>
					<br>
					<p class="ask">会员权益：</p>
					<p class="answer">金牌用户全场订单免运费；</p>
					<p class="answer">银牌用户订单满39元免运费，不满39元收取运费10元；</p>
					<p class="answer">银牌以下用户订单满59元免运费，不满59元收取运费10元；</p>
					<br>
					<p class="ask">用户等级的升降：</p>
					<p class="answer">用户等级高低取决于用户帐户中的可用牛豆数量，当牛豆数量满足相应等级要求时系统自动提高用户等级，当牛豆数量低于相应等级要求时系统自动降低用户等级。</p>
				</div>
			</div>
		</div>


		<div id="policy0008" class="s-con-nest-tab-pane">
			<div class="services-p">
				<div class="question-container">
					<p class="ask">什么是牛豆？</p>
					<p class="answer">牛豆是努比亚用户参与努比亚相关活动时获得的活动奖励，牛豆仅可在努比亚授权平台上使用，如用户帐号暂停使用，则努比亚将有权取消该用户帐号内牛豆相关使用权益。</p>
					<p class="ask">牛豆有效期说明：</p>
					<p class="answer">每一笔牛豆自获得之日起有效期1年，过期未使用的牛豆将作废处理。先获得的牛豆将先被使用。</p>
					<p class="ask">如何获得牛豆：</p>
					<p class="answer">一、 购物：普通订单完成后，系统将参考订单消费情况和订单金额奖励一定数量的牛豆。</p>
					<p class="answer">1. 普通订单是指：无特殊声明的日常销售订单，且必须是购买实物产品订单。</p>
					<p class="answer">2. 订单金额是指：用户实际以现金或银行卡方式支付的金额。</p>
					<p class="answer">3. 订单完成是指：订单显示的签收日期后20天内未办理退货手续。</p>
					<p class="answer">4.
						签收日期是指：以快递公司反馈给系统的签收日期为准。注：转寄件、货到付款件的签收日期可能会与实际日期有差异。</p>
					<p class="answer">5.
						普通订单奖励标准：订单金额1元奖励1个牛豆。例如订单金额是1499元则奖励1499个牛豆。</p>
					<p class="answer">二、 参加活动：参加努比亚官网主办的活动将有机会获得一定数量的牛豆。</p>
					<br>
					<p class="ask">如何使用牛豆：</p>
					<p class="answer">一、
						在努比亚官网消费结算时选择“使用牛豆支付”，输入牛豆数量，即可减免相应订单商品金额*。</p>
					<p class="answer">1.
						*订单商品金额是指：每2个牛豆可相应减免1分人民币商品金额，不可减免运费。牛豆支付不得超过每笔订单商品金额的50%。</p>
					<p class="answer">2. 订单取消后所使用的牛豆将退回重新入帐。</p>
					<p class="answer">3. 订单整单退货退款后所使用的牛豆将退回重新入帐。</p>
					<p class="answer">二、 可以使用牛豆参加努比亚官网主办的活动。</p>
					<br>
					<p class="ask">哪些情况会被扣减牛豆：</p>
					<p class="answer">1. 用户利用系统漏洞非法获得的牛豆，努比亚官网核实后将清零帐号所有牛豆。</p>
					<p class="answer">2. 黄牛用户订单，努比亚官网核实后将扣除订单奖励的相应牛豆。</p>
					<p class="answer">3. 用户多次恶意下单并无理由拒收商品，努比亚官网核实后将每单扣除1000个牛豆。</p>
					<p class="answer">4. 如果用户账户中牛豆个数不足，则记录扣除数量，在用户获得牛豆时再直接抵扣。</p>
					<br>
					<p class="answer">注：牛豆规则努比亚制定并依据国家相关法律法规及规章制度予以解释和修改，规则以网站公布为准。</p>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
