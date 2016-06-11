<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!doctype html>
<html>
<head>
<base href="<%=basePath%>">
<meta charset="utf-8">
<title>指艺首页——指尖的艺术，你值得拥有</title>
<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
<script type="text/javascript" src="js/index.js"></script>
<script type="text/javascript" src="js/xiaoshou.js"></script>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<link href="css/shouhou.css" rel="stylesheet" type="text/css" />
<link rel="short icon" href="images/logomin.jpg" />
<!--小图标-->
<style>
#services ul li a.pic2 .pic {
	background-position: -136px -136px;
}

#services ul li .pp4 {
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

			<li><a data-toggle="tab" class="pic2"> <span class="pic"></span>
					<p class="pp4">售后服务</p>
			</a></li>

			<li><a href="front/wangdian.jsp" class="pic3"> <span
					class="pic"></span>
					<p>售后网点</p>
			</a></li>

			<li><a href="front/help.jsp" class="pic4"> <span class="pic"></span>
					<p>帮助中心</p>
			</a></li>


		</ul>
	</div>

	<div id="services-con">
		<ul>
			<li class="m"><a data-toggle="tab"
				href="front/shouhou.jsp#policy01" class="img" onClick="change1('1')">
					<span class="img1"></span><span class="content">服务承偌</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/shouhou.jsp#policy02" class="img" onClick="change1('2')">
					<span class="img1"></span><span class="content">退货服务</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/shouhou.jsp#policy03" class="img" onClick="change1('3')">
					<span class="img1"></span><span class="content">换货服务</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/shouhou.jsp#policy04" class="img" onClick="change1('4')">
					<span class="img1"></span><span class="content">维修服务</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/shouhou.jsp#policy05" class="img" onClick="change1('5')">
					<span class="img1"></span><span class="content">上门服务</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/shouhou.jsp#policy06" class="img" onClick="change1('6')">
					<span class="img1"></span><span class="content">第三方服务</span>
			</a></li>

			<li><a href="front/accident.jsp" class="img"> <span
					class="img1"></span><span class="content">意外宝</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/shouhou.jsp#policy07" class="img" onClick="change1('7')">
					<span class="img1"></span><span class="content">非价格查询</span>
			</a></li>

			<li><a href="" class="img"> <span class="img1"></span><span
					class="content">预约维修</span>
			</a></li>
		</ul>
	</div>

	<div id="services-content">
		<div id="policy01" class="s-r-con-tab-pane_active">
			<p class="services-p">努比亚产品会依据不低于《消费者权益保护法》、《中华人民共和国产品质量法》及《移动电话机商品修理更换退费责任规定》的要求提供售后服务,服务内容如下：</p>
			<div class="services-h1">一、整机保修政策</div>
			<p class="services-p">
				1、自您购买努比亚产品的签收之日起7日内,在包装、配件和发票齐全,手机外观无损且无人为损坏,同时出现《移动电话机商品性能故障表》所列性能故障的情况下,依据您的选择可进行退货、免费换货或维修。
				<br> 对于官网和体验店销售的产品,在手机外观无损且无人为损坏、包装、配件和发票等齐全的情况下, 支持7天无理由退货。 <br>
				2、自您购买努比亚产品的签收之日起8日-15日内,主机在外观无破损、无进水、无人为损坏,同时出现《移动电话机商品性能故障表》所列性能故障,依据您的选择,可免费进行换货或者维修。换货后的手机仍可享受正常退货服务,但无法享受无理由退货服务。
				<br>
				3、自您购买努比亚产品的签收之日起12个月内,主机在外观无破损、无进水、无人为损坏,同时出现《移动电话机商品性能故障表》所列性能故障,您可免费进行维修。
				<br> 4、主机附带的标配附件的保修期,以您购买主机的签收之日起计： <br>
				充电器、数据线、耳机和内置电池：您可享受12个月的保修服务； <br>
			</p>
			<div class="services-h1">二、独立配件保修政策</div>
			<p class="services-p">您单独购买的独立包装配件,如在保修期内出现《移动电话机商品性能故障表》所列性能故障,可免费更换同品牌同型号同规格的产品,各产品的保修期承诺如下：</p>
			<p class="p1">保修期（签收之日起计算）</p>
			<table class="table">
				<thead align="left">
					<tr>
						<th width="15%">产品名称</th>
						<th width="15%;">退货</th>
						<th width="10%">换货</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>蓝牙找寻器</td>
						<td>7天</td>
						<td>3个月</td>
					</tr>
					<tr>
						<td>蓝牙伴侣</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>无线硬盘</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>无线分享器</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>nubia充电宝</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>MHL高清适配器</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>原装OTG数据线</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>nubia定制充电器</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>森海塞尔MM50入耳式耳机</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>AERIAL 7 SUMO耳机</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>智能标签</td>
						<td>7天</td>
						<td>1个月</td>
					</tr>
					<tr>
						<td>保护膜</td>
						<td>7天(未拆包装，不影响二次销售)</td>
						<td></td>
					</tr>
					<tr>
						<td>自拍杆</td>
						<td>7天</td>
						<td>12个月</td>
					</tr>
					<tr>
						<td>皮套</td>
						<td>7天</td>
						<td></td>
					</tr>
					<tr>
						<td>T恤</td>
						<td>7天（标牌完整，无穿着和水洗痕迹，不影响二次销售）</td>
						<td>15天（有质量问题，标牌完整，无穿着和水洗痕迹，不影响二次销售）</td>
					</tr>
					<tr>
						<td>明信片</td>
						<td>7天（未拆包装，不影响二次销售）</td>
						<td></td>
					</tr>
				</tbody>
			</table>
			<div class="services-h1">三、随机赠品保修政策</div>
			<p class="services-p">
				1) 您购买产品时的随机赠品享受正常的换货及维修服务,但不享受退货服务； <br> 2)
				您购买的产品需要退货时,需要将随机赠品一并退回。赠品如果丢失、损坏、外观损伤或贴膜类赠品已拆包装,您所购买的产品将无法享受正常退货服务；
			</p>
			<div class="services-h1">四、非保修政策</div>
			<p class="services-p">
				以下情况之一属于非保修,您将不能享受免费退换货及保修服务,您可以选择付费维修： <br> 1) 超过三包有效期限； <br>
				2) 三包凭证上的内容与商品实物标示不符或者涂改的； <br> 3)
				未经授权的维修、私拆、误用、碰撞、进液、改动；或不当安装软件系统所造成的商品质量问题,或撕毁、涂改产品标贴、防伪标记、机器序列号（IMEI）；
				<br> 4) 未按产品使用书要求使用、维护、保养而造成损坏的； <br> 5) 因人为原因导致手机及其配件的损坏；
				<br> 6) 由于水灾、火灾、雷击等不可抗力造成的损坏； <br> 7)
				使用非nubia原厂配件,导致手机故障或事故的；
			</p>
		</div>

		<div id="policy02" class="s-r-con-tab-pane">
			<div class="services-h1">一、 您可以选择以下方式：</div>
			<p class="services-p">
				拨打努比亚全国客服热线400-700-6600提出退货申请； <br> 直接前往努比亚体验店办理退货。
			</p>
			<div class="services-h1">二、 如果您拨打努比亚客服热线：</div>
			<p class="services-p">
				努比亚客服人员与您进行退货质量及相关信息确认； <br>
				在您确认需要办理退货后,根据您购买的具体情况及所在城市区域,努比亚提供“邮寄”和“上门”两种服务方式供您选择； <br>
				如果您选择邮寄方式,请您注意： <br> 1）7天内，如果由于您个人喜好等原因导致的退货,物流费用由您个人承担； <br>
				2）如果由于产品的原因导致的退货,物流费用由努比亚承担； <br> 3）请您一周内将货品寄到努比亚指定地点； <br>
				4）邮寄时,请您注意： <br> a、顺丰可以覆盖的区域,建议您选择顺丰进行邮寄,并选择 “运费到付”； <br>
				b、顺丰无法覆盖的区域,请您选择其他快递公司进行邮寄,并请您先行垫付运费,我们会在退款时将运费一并退还给您。 <br>
				如果您选择上门方式,我们会安排物流公司及时与您联系,上门为您办理退货。如果由于您个人喜好等原因导致的退货,您需要承担部分上门费用；如果由于产品原因导致的退货,上门费用由努比亚承担；
				<br>
				我们收到物流公司退回的货品验证无误后,我们会及时为您办理退款。如遇节假日或国家法定假日,退款时间会有所延长,请您理解； <br>
				当您与努比亚因退货标准的具体细节产生异议时,可能导致双方需要更多的时间进行沟通,会影响到退货流程的及时性。 <br>
			</p>
		</div>
		<div id="policy03" class="s-r-con-tab-pane">
			<div class="services-h1">一、您可以选择以下方式：</div>
			<p class="services-p">
				拨打努比亚全国客服热线400-700-6600提出换货申请； <br> 前往任一努比亚授权客户服务中心进行更换； <br>
				前往任一努比亚体验店进行更换。
			</p>
			<div class="services-h1">二、如果您拨打努比亚客服热线：</div>
			<p class="services-p">
				努比亚客服人员会与您进行换货质量及相关信息确认； <br>
				在您确认需要办理换货后,根据您购买的具体情况及所在城市区域,努比亚提供“邮寄”和“上门”两种服务方式供您选择； <br>
				如果您选择邮寄方式,请您注意： <br> 1）请您一周内将货品寄到努比亚指定地点； <br> 2）邮寄时,请您注意：
				<br> a、顺丰可以覆盖的区域,建议您选择顺丰进行邮寄,并选择 “运费到付”； <br>
				b、顺丰无法覆盖的区域,请您选择其他快递公司进行邮寄,并请您先行垫付运费,我们会将运费退还给您。 <br>
				如果您选择上门方式,我们会安排物流公司及时与您联系,上门为您办理换货,上门费用由努比亚公司承担； <br>
				当您与努比亚因换货标准的具体细节产生异议时,可能导致双方需要更多的时间进行沟通,会影响到换货流程的及时性。
			</p>
		</div>
		<div id="policy04" class="s-r-con-tab-pane">
			<div class="services-h1">一、您可以选择以下方式：</div>
			<p class="services-p">
				拨打努比亚全国客服热线400-700-6600提出维修申请； <br> 前往任一努比亚授权客户服务中心进行维修。
			</p>
			<div class="services-h1">二、如果您拨打努比亚客服热线：</div>
			<p class="services-p">
				努比亚客服人员会与您进行维修质量及相关信息确认； <br>
				如果您的产品属于保修范围,根据您购买的具体情况及所在城市区域,努比亚提供“邮寄”和“上门”两种服务方式供您选择； <br>
				如果您选择邮寄方式： <br> 1）请您一周内将货品寄到努比亚指定地点； <br> 2）邮寄时,请您注意： <br>
				a、顺丰可以覆盖的区域,建议您选择顺丰进行邮寄,并选择 “运费到付”； <br>
				b、顺丰无法覆盖的区域,请您选择其他快递公司进行邮寄,并请您先行垫付运费,我们会将运费退还给您； <br>
				c、符合保修条件的，从签收返厂机到维修后寄出，在1天（24小时）内完成。 <br>
				如果您选择上门方式,我们会安排维修人员及时与您联系,上门进行维修,上门费用由努比亚承担；如果由于各种原因,无法现场维修,我们会为您提供一台备用机暂时使用；
				<br> 如果您的产品不属于保修范围,您可以自行前往努比亚在各城市的授权客户服务中心进行付费维修； <br>
				当您与努比亚因维修标准的具体细节产生异议时,可能导致双方需要更多的时间进行沟通,会影响到维修流程的及时性。
			</p>
		</div>
		<div id="policy05" class="s-r-con-tab-pane">
			<div class="services-h1">一、 上门区域</div>
			<p class="services-p">对于努比亚官网和体验店销售的产品,在符合保修范围的情况下,我们提供部分城市重点区域的上门服务,具体请您拨打努比亚全国客服热线400-700-6600咨询。
			</p>
			<div class="services-h1">二、 上门时间</div>
			<p class="services-p">
				退货：接收到您的退货申请后,我们一般会在1个工作日左右安排人员和您联系上门； <br>
				换货：接收到您的换货申请后,我们一般会在3个工作日左右安排人员和您联系上门； <br>
				维修：接收到您的维修申请后,我们一般会在1个工作日左右安排人员和您联系上门。 <br>
				说明：如果您的上门地址交通不太便利、逢节假日以及国家法定假日或其他不可控因素,我们的上门时间会有所延长,给您带来的不便请您理解。
			</p>
			<div class="services-h1">三、 注意事项：</div>
			<p class="services-p">
				请您自行进行个人资料备份,并自行将主机内的个人资料删除,努比亚会确保您个人资料的信息安全。</p>
		</div>
		<div id="policy06" class="s-r-con-tab-pane">
			<p class="services-p">
				第三方电商平台销售的nubia产品,退换货和保修售后服务政策以第三方电商平台为准,同时售后退换货服务由第三方电商平台负责受理。 <br>
				京东：销售活动、退换货和保修售后服务政策请您登录京东网查询,您也可以拨打京东服务热线400-610-3600咨询。 <br /> <br />
				<br /> 易迅：销售活动、退换货和保修售后服务政策请您登录易迅网查询,您也可以拨打易迅服务热线400-828-1878咨询。 <br>
			</p>
		</div>
		<div id="policy07" class="s-r-con-tab-pane">
			<ul class='s-list-nest nav nav-tabs'>
				<li class="a"><a data-toggle="tab" href="#policy081"
					onClick="change('1')">Z5</a></li>
				<li class="a"><a data-toggle="tab" href="#policy082"
					onClick="change('2')">Z5 mini</a></li>
				<li class="a"><a data-toggle="tab" href="#policy083"
					onClick="change('3')">Z5S</a></li>
				<li class="a"><a data-toggle="tab" href="#policy084"
					onClick="change('4')">Z5S mini</a></li>
			</ul>
			<div class="tab-content_fbjgcx">
				<div id="policy081" class="s-con-nest-tab-pane_active">
					<div class="question-container">
						<p class="model">Z5(NX501)非保价格表</p>
						<table width="800" border="1" class="table">
							<tbody>
								<tr class="tr_bg">
									<th width="80px">序号</th>
									<th width="200px">物料名称</th>
									<th>维修物料价格</th>
									<th width="70px">维修级别</th>
									<th>人工费标准</th>
									<th>报价合计（用户价+人工费），未包含运保费</th>
								</tr>
								<tr>
									<td>1</td>
									<td>SIM卡塞</td>
									<td>41</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>2</td>
									<td>取卡器</td>
									<td>11</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>3</td>
									<td>白色充电器</td>
									<td>59</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>4</td>
									<td>白色USB数据线</td>
									<td>49</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>5</td>
									<td>前壳组件</td>
									<td>980</td>
									<td>一级</td>
									<td>50</td>
									<td>1030</td>
								</tr>
								<tr>
									<td>6</td>
									<td>后壳组件</td>
									<td>218</td>
									<td>一级</td>
									<td>50</td>
									<td>268</td>
								</tr>
								<tr>
									<td>7</td>
									<td>电池</td>
									<td>75</td>
									<td>一级</td>
									<td>50</td>
									<td>125</td>
								</tr>
								<tr>
									<td>8</td>
									<td>音量键</td>
									<td>22</td>
									<td>一级</td>
									<td>50</td>
									<td>72</td>
								</tr>
								<tr>
									<td>9</td>
									<td>电源键</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>10</td>
									<td>电源键FPC</td>
									<td>4</td>
									<td>一级</td>
									<td>50</td>
									<td>54</td>
								</tr>
								<tr>
									<td>11</td>
									<td>音量键FPC</td>
									<td>6</td>
									<td>一级</td>
									<td>50</td>
									<td>56</td>
								</tr>
								<tr>
									<td>12</td>
									<td>LCD转接FPC</td>
									<td>17</td>
									<td>一级</td>
									<td>50</td>
									<td>67</td>
								</tr>
								<tr>
									<td>13</td>
									<td>同轴线缆</td>
									<td>8</td>
									<td>一级</td>
									<td>50</td>
									<td>58</td>
								</tr>
								<tr>
									<td>14</td>
									<td>听筒</td>
									<td>15</td>
									<td>一级</td>
									<td>50</td>
									<td>65</td>
								</tr>
								<tr>
									<td>15</td>
									<td>喇叭</td>
									<td>20</td>
									<td>一级</td>
									<td>50</td>
									<td>70</td>
								</tr>
								<tr>
									<td>16</td>
									<td>马达</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>17</td>
									<td>后置摄像头</td>
									<td>253</td>
									<td>一级</td>
									<td>50</td>
									<td>303</td>
								</tr>
								<tr>
									<td>18</td>
									<td>前置摄像头</td>
									<td>54</td>
									<td>一级</td>
									<td>50</td>
									<td>104</td>
								</tr>
								<tr>
									<td>19</td>
									<td>小板</td>
									<td>59</td>
									<td>一级</td>
									<td>50</td>
									<td>109</td>
								</tr>
								<tr>
									<td>20</td>
									<td>32G主板</td>
									<td>1882</td>
									<td>一级</td>
									<td>50</td>
									<td>1932</td>
								</tr>
								<tr>
									<td>21</td>
									<td>16G主板</td>
									<td>1580</td>
									<td>一级</td>
									<td>50</td>
									<td>1630</td>
								</tr>
							</tbody>
						</table>
						<br> <br>
						<p class="services-p">
							说明：<br /> 1、 返厂维修费用：维修物料费用+人工费+邮寄价保费；<br /> 2、
							维修物料费用：若一次维修更换多种物料，物料费用按上表单价和数量累加计算，更换的不良物料用户有权保留；<br /> 3、
							人工费：软件升级50元，一级维修50元，二级维修100元，三级维修150元；零级物料用户直接购买，不再收取人工费；人工费按照最高维修级别计算一次；<br />
							4、 邮寄价保费：若用户自行返厂，邮寄价保费由用户承担，若我司付费，每单程按30元以内/单核收。<br /> 5、
							以上查询结果为备件参考价。无法查询的备件价格，请拨打服务热线400-700-6600咨询。
						</p>
					</div>
				</div>
				<div id="policy082" class="s-con-nest-tab-pane">
					<div class="question-container">
						<p class="model">Z5 mini(NX401/NX402)非保价格表</p>
						<table width="800" border="1" class="table">
							<tbody>
								<tr class="tr_bg">
									<th width="80px">序号</th>
									<th width="200px">物料名称</th>
									<th>维修物料价格</th>
									<th width="70px">维修级别</th>
									<th>人工费标准</th>
									<th>报价合计（用户价+人工费），未包含运保费</th>
								</tr>
								<tr>
									<td>1</td>
									<td>白色电池盖(无nubia标示)</td>
									<td>79</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>2</td>
									<td>白色充电器</td>
									<td>59</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>3</td>
									<td>白色USB数据线</td>
									<td>49</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>4</td>
									<td>电池盖</td>
									<td>99</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>5</td>
									<td>锖色前壳组件</td>
									<td>640</td>
									<td>一级</td>
									<td>50</td>
									<td>690</td>
								</tr>
								<tr>
									<td>6</td>
									<td>后壳组件</td>
									<td>71</td>
									<td>一级</td>
									<td>50</td>
									<td>121</td>
								</tr>
								<tr>
									<td>7</td>
									<td>电池</td>
									<td>75</td>
									<td>一级</td>
									<td>50</td>
									<td>125</td>
								</tr>
								<tr>
									<td>8</td>
									<td>后置摄像头</td>
									<td>238</td>
									<td>一级</td>
									<td>50</td>
									<td>288</td>
								</tr>
								<tr>
									<td>9</td>
									<td>前置摄像头</td>
									<td>62</td>
									<td>一级</td>
									<td>50</td>
									<td>112</td>
								</tr>
								<tr>
									<td>10</td>
									<td>听筒</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>11</td>
									<td>双色音量键</td>
									<td>10</td>
									<td>一级</td>
									<td>50</td>
									<td>60</td>
								</tr>
								<tr>
									<td>12</td>
									<td>双色电源键</td>
									<td>10</td>
									<td>一级</td>
									<td>50</td>
									<td>60</td>
								</tr>
								<tr>
									<td>13</td>
									<td>银色USB装饰件</td>
									<td>16</td>
									<td>一级</td>
									<td>50</td>
									<td>66</td>
								</tr>
								<tr>
									<td>14</td>
									<td>听筒转接FPC</td>
									<td>36</td>
									<td>一级</td>
									<td>50</td>
									<td>86</td>
								</tr>
								<tr>
									<td>15</td>
									<td>双色拍照键</td>
									<td>15</td>
									<td>一级</td>
									<td>50</td>
									<td>65</td>
								</tr>
								<tr>
									<td>16</td>
									<td>16G主板</td>
									<td>1488</td>
									<td>一级</td>
									<td>50</td>
									<td>1538</td>
								</tr>
							</tbody>
						</table>
						<br> <br>
						<p class="services-p">
							说明：<br /> 1、 返厂维修费用：维修物料费用+人工费+邮寄价保费；<br /> 2、
							维修物料费用：若一次维修更换多种物料，物料费用按上表单价和数量累加计算，更换的不良物料用户有权保留；<br /> 3、
							人工费：软件升级50元，一级维修50元，二级维修100元，三级维修150元；零级物料用户直接购买，不再收取人工费；人工费按照最高维修级别计算一次；<br />
							4、 邮寄价保费：若用户自行返厂，邮寄价保费由用户承担，若我司付费，每单程按30元以内/单核收。<br /> 5、
							以上查询结果为备件参考价。无法查询的备件价格，请拨打服务热线400-700-6600咨询。
						</p>
					</div>
				</div>
				<div id="policy083" class="s-con-nest-tab-pane">
					<div class="question-container">
						<p class="model">Z5S(NX503A)非保价格表</p>
						<table width="800" border="1" class="table">
							<tbody>
								<tr class="tr_bg">
									<th width="80px">序号</th>
									<th width="200px">物料名称</th>
									<th>维修物料价格</th>
									<th width="70px">维修级别</th>
									<th>人工费标准</th>
									<th>报价合计（用户价+人工费），未包含运保费</th>
								</tr>
								<tr>
									<td>1</td>
									<td>黑色SIM卡塞</td>
									<td>30</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>2</td>
									<td>取卡器</td>
									<td>11</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>3</td>
									<td>USB数据线</td>
									<td>25</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>4</td>
									<td>充电器</td>
									<td>59</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>5</td>
									<td>前壳组件</td>
									<td>820</td>
									<td>一级</td>
									<td>50</td>
									<td>870</td>
								</tr>
								<tr>
									<td>6</td>
									<td>后壳组件</td>
									<td>85</td>
									<td>一级</td>
									<td>50</td>
									<td>135</td>
								</tr>
								<tr>
									<td>7</td>
									<td>白色音量键</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>8</td>
									<td>白色电源键</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>9</td>
									<td>白色拍照键</td>
									<td>22</td>
									<td>一级</td>
									<td>50</td>
									<td>72</td>
								</tr>
								<tr>
									<td>10</td>
									<td>听筒</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>11</td>
									<td>马达</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>12</td>
									<td>喇叭</td>
									<td>22</td>
									<td>一级</td>
									<td>50</td>
									<td>72</td>
								</tr>
								<tr>
									<td>13</td>
									<td>后置摄像头</td>
									<td>238</td>
									<td>一级</td>
									<td>50</td>
									<td>288</td>
								</tr>
								<tr>
									<td>14</td>
									<td>前置摄像头</td>
									<td>62</td>
									<td>一级</td>
									<td>50</td>
									<td>112</td>
								</tr>
								<tr>
									<td>15</td>
									<td>音量键FPC</td>
									<td>6</td>
									<td>一级</td>
									<td>50</td>
									<td>56</td>
								</tr>
								<tr>
									<td>16</td>
									<td>LCD连接器FPC</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>17</td>
									<td>开机键FPC</td>
									<td>16</td>
									<td>一级</td>
									<td>50</td>
									<td>66</td>
								</tr>
								<tr>
									<td>18</td>
									<td>小板</td>
									<td>82</td>
									<td>一级</td>
									<td>50</td>
									<td>132</td>
								</tr>
								<tr>
									<td>19</td>
									<td>同轴线缆</td>
									<td>8</td>
									<td>一级</td>
									<td>50</td>
									<td>58</td>
								</tr>
								<tr>
									<td>20</td>
									<td>电池</td>
									<td>75</td>
									<td>一级</td>
									<td>50</td>
									<td>125</td>
								</tr>
								<tr>
									<td>21</td>
									<td>光感接口小板</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>22</td>
									<td>16G主板</td>
									<td>995</td>
									<td>一级</td>
									<td>50</td>
									<td>1045</td>
								</tr>
								<tr>
									<td>23</td>
									<td>32G主板</td>
									<td>1250</td>
									<td>一级</td>
									<td>50</td>
									<td>1300</td>
								</tr>
							</tbody>
						</table>
						<br> <br>
						<p class="services-p">
							说明：<br /> 1、 返厂维修费用：维修物料费用+人工费+邮寄价保费；<br /> 2、
							维修物料费用：若一次维修更换多种物料，物料费用按上表单价和数量累加计算，更换的不良物料用户有权保留；<br /> 3、
							人工费：软件升级50元，一级维修50元，二级维修100元，三级维修150元；零级物料用户直接购买，不再收取人工费；人工费按照最高维修级别计算一次；<br />
							4、 邮寄价保费：若用户自行返厂，邮寄价保费由用户承担，若我司付费，每单程按30元以内/单核收。<br /> 5、
							以上查询结果为备件参考价。无法查询的备件价格，请拨打服务热线400-700-6600咨询。<br />
						</p>
					</div>

				</div>
				<div id="policy084" class="s-con-nest-tab-pane">
					<div class="question-container">
						<p class="model">Z5S mini(NX403A)非保价格表</p>
						<table width="800" border="1" class="table">
							<tbody>
								<tr class="tr_bg">
									<th width="80px">序号</th>
									<th width="200px">物料名称</th>
									<th>维修物料价格</th>
									<th width="70px">维修级别</th>
									<th>人工费标准</th>
									<th>报价合计（用户价+人工费），未包含运保费</th>
								</tr>
								<tr>
									<td>1</td>
									<td>电池盖</td>
									<td>69</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
								<tr>
									<td>3</td>
									<td>数据线</td>
									<td>25</td>
									<td></td>
									<td></td>
									<td></td>
								</tr>
								<tr>
									<td>4</td>
									<td>前壳组件</td>
									<td>580</td>
									<td>一级</td>
									<td>50</td>
									<td>630</td>
								</tr>
								<tr>
									<td>5</td>
									<td>音量键</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>6</td>
									<td>电源键</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>7</td>
									<td>听筒</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>8</td>
									<td>前置摄像头</td>
									<td>62</td>
									<td>一级</td>
									<td>50</td>
									<td>112</td>
								</tr>
								<tr>
									<td>9</td>
									<td>后置摄像头</td>
									<td>238</td>
									<td>一级</td>
									<td>50</td>
									<td>288</td>
								</tr>
								<tr>
									<td>10</td>
									<td>马达</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>11</td>
									<td>电池</td>
									<td>75</td>
									<td>一级</td>
									<td>50</td>
									<td>125</td>
								</tr>
								<tr>
									<td>12</td>
									<td>上支架</td>
									<td>50</td>
									<td>一级</td>
									<td>50</td>
									<td>100</td>
								</tr>
								<tr>
									<td>13</td>
									<td>下支架</td>
									<td>50</td>
									<td>一级</td>
									<td>50</td>
									<td>100</td>
								</tr>
								<tr>
									<td>14</td>
									<td>支架钢片</td>
									<td>22</td>
									<td>一级</td>
									<td>50</td>
									<td>72</td>
								</tr>
								<tr>
									<td>15</td>
									<td>红外FPC</td>
									<td>18</td>
									<td>一级</td>
									<td>50</td>
									<td>68</td>
								</tr>
								<tr>
									<td>16</td>
									<td>喇叭转接FPC</td>
									<td>10</td>
									<td>一级</td>
									<td>50</td>
									<td>60</td>
								</tr>
								<tr>
									<td>17</td>
									<td>音量键FPC</td>
									<td>10</td>
									<td>一级</td>
									<td>50</td>
									<td>60</td>
								</tr>
								<tr>
									<td>18</td>
									<td>16G主板</td>
									<td>990</td>
									<td>一级</td>
									<td>50</td>
									<td>1040</td>
								</tr>
							</tbody>
						</table>
						<br> <br>
						<p class="services-p">
							说明：<br /> 1、 返厂维修费用：维修物料费用+人工费+邮寄价保费；<br /> 2、
							维修物料费用：若一次维修更换多种物料，物料费用按上表单价和数量累加计算，更换的不良物料用户有权保留；<br /> 3、
							人工费：软件升级50元，一级维修50元，二级维修100元，三级维修150元；零级物料用户直接购买，不再收取人工费；人工费按照最高维修级别计算一次；<br />
							4、 邮寄价保费：若用户自行返厂，邮寄价保费由用户承担，若我司付费，每单程按30元以内/单核收。<br /> 5、
							以上查询结果为备件参考价。无法查询的备件价格，请拨打服务热线400-700-6600咨询。<br />
						</p>
					</div>

				</div>
			</div>
		</div>


	</div>
</body>
</html>