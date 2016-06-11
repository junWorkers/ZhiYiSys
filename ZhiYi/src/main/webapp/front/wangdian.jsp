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
#services ul li a.pic3 .pic {
	background-position: -408px -136px;
}

#services ul li .pp1 {
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

			<li><a href="data-toggle=" tab"" class="pic3"> <span
					class="pic"></span>
					<p class="pp1">售后网点</p>
			</a></li>

			<li><a href="front/help.jsp" class="pic4"> <span class="pic"></span>
					<p>帮助中心</p>
			</a></li>


		</ul>
	</div>

	<div id="services-con">
		<ul>
			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy001" class="img"
				onClick="change2('1')"> <span class="img1"></span><span
					class="content">安徽</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy002" class="img"
				onClick="change2('2')"> <span class="img1"></span><span
					class="content">北京</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy003" class="img"
				onClick="change2('3')"> <span class="img1"></span><span
					class="content">福建</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy004" class="img"
				onClick="change2('4')"> <span class="img1"></span><span
					class="content">甘肃</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy005" class="img"
				onClick="change2('5')"> <span class="img1"></span><span
					class="content">海南</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy006" class="img"
				onClick="change2('6')"> <span class="img1"></span><span
					class="content">广东</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy007" class="img"
				onClick="change2('7')"> <span class="img1"></span><span
					class="content">广西</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy008" class="img"
				onClick="change2('8')"> <span class="img1"></span><span
					class="content">河南</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy009" class="img"
				onClick="change2('9')"> <span class="img1"></span><span
					class="content">贵州</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0010" class="img"
				onClick="change2('10')"> <span class="img1"></span><span
					class="content">河北</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0011" class="img"
				onClick="change2('11')"> <span class="img1"></span><span
					class="content">黑龙江</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0012" class="img"
				onClick="change2('12')"> <span class="img1"></span><span
					class="content">湖北</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0013" class="img"
				onClick="change2('13')"> <span class="img1"></span><span
					class="content">湖南</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0014" class="img"
				onClick="change2('14')"> <span class="img1"></span><span
					class="content">吉林</span>
			</a></li>


			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0015" class="img"
				onClick="change2('15')"> <span class="img1"></span><span
					class="content">江苏</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0016" class="img"
				onClick="change2('16')"> <span class="img1"></span><span
					class="content">江西</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jspfront/wangdian.jsp#policy0017" class="img"
				onClick="change2('17')"> <span class="img1"></span><span
					class="content">辽宁</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0018" class="img"
				onClick="change2('18')"> <span class="img1"></span><span
					class="content">内蒙古</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0019" class="img"
				onClick="change2('19')"> <span class="img1"></span><span
					class="content">宁夏</span>
			</a></li>

			<li class="m"><a data-toggle="tab"
				href="front/wangdian.jsp#policy0020" class="img"
				onClick="change2('20')"> <span class="img1"></span><span
					class="content">青海</span>
			</a></li>



		</ul>
	</div>

	<div id="services-content">

		<div id="policy001" class="tab-pane_active">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">安徽 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									合肥市 <span class="repair">1小时快修</span>
								</dt>
								<dd>合肥长江通信技术服务有限责任公司</dd>
								<dd>电话：0551-62641104、0551-62641393</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：合肥市徽州大道193号（南门小学往南50米,省农委二楼）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									合肥市 <span class="repair">1小时快修</span>
								</dt>
								<dd>合肥文鑫通讯器材有限公司</dd>
								<dd>电话：0551-62861361</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：包河区屯溪路388号顶峰公寓商业门面C栋102</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>蚌埠市</dt>
								<dd>蚌埠市长城通信科技有限责任公司</dd>
								<dd>电话：0552-3198885</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：蚌埠市蚌山区中山街81号4G智能手机旗舰店进店上二楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>滁州市</dt>
								<dd>滁州瑞华通讯科技有限公司</dd>
								<dd>电话：0550-3022633</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：安徽省滁州市琅琊区天长西路51号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>淮南市</dt>
								<dd>淮南市宇捷通讯科贸有限公司</dd>
								<dd>电话：0554-5678198</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：淮南市田家庵区朝阳中路139号宇捷通讯二楼售后部</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>马鞍山市</dt>
								<dd>马鞍山市优诺通讯器材维修有限公司</dd>
								<dd>电话：0555-2360558</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：安徽省马鞍山市花雨路中央花园1栋103</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>芜湖市</dt>
								<dd>芜湖市中茂源信息技术有限公司</dd>
								<dd>电话：0553-3811330</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：芜湖市青山街锦天花苑15幢2号门面</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy002" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">北京 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									北京市 <span class="repair">1小时快修</span>
								</dt>
								<dd>北京网劲数码通讯器材维修中心</dd>
								<dd>电话：010-63969827</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：北京市海淀区复兴路甲14号（地铁公主坟站C出口）华鹰大夏A座328室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									北京市 <span class="repair">1小时快修</span>
								</dt>
								<dd>北京声动天下科技有限公司</dd>
								<dd>电话：010-57892851、 010-51665880</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：北京市朝阳区朝阳路东八里庄莱锦创业园A109A(乐语通讯内）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									北京市 <span class="repair">1小时快修</span>
								</dt>
								<dd>北京中福宏景科技中心</dd>
								<dd>电话：010-56075022、010-52290561</dd>
								<dd>营业时间：周一-周日 9:30--18:00</dd>
								<dd>地址：北京市海淀区中关村大街32号（地铁海淀黄庄站C出口）新中发电子市场5楼5015</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									北京市 <span class="repair">1小时快修</span>
								</dt>
								<dd>北京华瑞时代通讯设备有限公司</dd>
								<dd>电话：010-85623108</dd>
								<dd>营业时间：周一-周日 9:30--18:30</dd>
								<dd>地址：北京市朝阳区朝阳门外大街99号（地铁6号线东大桥A口出向西步行300米，地铁2号线朝阳门A口出向东步行500米
									）百脑汇旗舰店3层（3F08)</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>北京市</dt>
								<dd>北京中福宏景科技中心（方庄）</dd>
								<dd>电话：010-56186256、010-57539668</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：北京市丰台区方庄南路2号亚胜铂第公馆B座1807（南三环方庄桥东南角）</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy003" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">福建 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									福州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>福州中昊通信技术有限公司</dd>
								<dd>电话：0591-87889013</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：福州市鼓楼区五一中路57号闽东大厦一楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									福州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>福州融睿通讯器材有限公司</dd>
								<dd>电话：0591-83322212</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：福州市鼓楼区八一七北路冠亚广场7幢223店面(公交乌山路口站)</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>龙岩市</dt>
								<dd>龙岩市万通电讯科技有限公司</dd>
								<dd>电话：0597-2285665</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：福建省龙岩市人民医院8号楼一层4~5号店</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>宁德市</dt>
								<dd>宁德市明锐通信技术有限公司</dd>
								<dd>电话：0593-2898058</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：福建省宁德市莱茵大厦一层119号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>莆田市</dt>
								<dd>莆田市荔城区好好记通信器材维修中心</dd>
								<dd>电话：0594-2298231</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：福建省莆田市荔城区东梅路（西社小区）140-142号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									泉州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>福建泉州市华远电讯有限公司</dd>
								<dd>电话：0595-22165951</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：福建省泉州市鲤城区九一路223号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									厦门市 <span class="repair">1小时快修</span>
								</dt>
								<dd>厦门市思明区易斯维科通讯器材经营部</dd>
								<dd>电话：0592-2290599、0592-2290885</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：福建省厦门市思明区湖滨南路263-265号2A</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>漳州市</dt>
								<dd>漳州新锐电子有限公司</dd>
								<dd>电话：0596-2055289</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：漳州市芗城区南昌路小商品城西栋12号</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy004" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">甘肃 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									兰州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>兰州新叶格通讯科技有限公司</dd>
								<dd>电话：0931-8866426</dd>
								<dd>营业时间：周一-周日 9:30-18:00</dd>
								<dd>地址：兰州市城关区武都路69号（交警大厦对面）</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy005" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">海南 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									海口市 <span class="repair">1小时快修</span>
								</dt>
								<dd>海南宏邦通信工程有限公司海口分公司</dd>
								<dd>电话：0898-66660099</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：海南省海口市西沙路13号华洋楼第5、6、7号铺面（万华站牌后面）</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy006" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">广东 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									广州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>广东广信通信服务有限公司</dd>
								<dd>电话：020-83801596</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：广州市越秀区较场西路19号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									广州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>广东骏和通信设备连锁销售有限公司</dd>
								<dd>电话：020-84883911</dd>
								<dd>营业时间：9:30-18:30</dd>
								<dd>地址：广州市番禺区市桥桥东路2号利安大厦(二层)</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									广州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>广州泽盈通信器材有限公司</dd>
								<dd>电话：020-83836969</dd>
								<dd>营业时间：9:00-18:30</dd>
								<dd>地址：广州市陵园西路17号广联礼堂大堂内右侧203室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									广州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>广州仟享信息科技有限公司</dd>
								<dd>电话：020-29079011、020-29079018</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：广州市天河区石牌西路8号展望数码广场1910（总统大酒店斜对面）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>潮州市</dt>
								<dd>潮州市荣通科技有限公司</dd>
								<dd>电话：0768-2270888</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：潮州市枫春路枫春电信营业厅隔壁</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									东莞市 <span class="repair">1小时快修</span>
								</dt>
								<dd>广东海德信息科技有限公司</dd>
								<dd>电话：0769-83061791</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：东莞市东城区东城中路恒泰大厦首层8号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>东莞市</dt>
								<dd>广东海德信息科技有限公司（虎门）</dd>
								<dd>电话：0769-89879029</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：东莞市虎门镇银龙路大莹东方国际8楼8013A号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									佛山市 <span class="repair">1小时快修</span>
								</dt>
								<dd>佛山市顺德区森源通讯有限公司</dd>
								<dd>电话：0757-23234567</dd>
								<dd>营业时间：8:30-17:30</dd>
								<dd>地址：广东省佛山市顺德区大良文秀路仁寿里6-10座附凤街2号铺</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									佛山市 <span class="repair">1小时快修</span>
								</dt>
								<dd>佛山市海德计算机科技有限公司</dd>
								<dd>电话：18125688845、0757-86333952</dd>
								<dd>营业时间：9:30-21:00</dd>
								<dd>地址：佛山市南海区桂澜中路23号（南桂路地铁站B出口）万科广场1楼S3102号（联想3C生活馆内）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									佛山市 <span class="repair">1小时快修</span>
								</dt>
								<dd>佛山市博洋通讯有限公司</dd>
								<dd>电话：0757-83072300</dd>
								<dd>营业时间：9:00-17:30</dd>
								<dd>地址：广东省佛山市禅城区汾江南路32号1区7座P17号(电信大楼斜对面）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>河源市</dt>
								<dd>河源市光联通信科技有限公司</dd>
								<dd>电话：0762-3225955</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：河源市源城区大同路189号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									惠州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>惠州市万星科技有限公司</dd>
								<dd>电话：0752-2108198</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：惠州市惠城区下埔大道14号华商大厦一楼（广百百货斜对面）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									江门市 <span class="repair">1小时快修</span>
								</dt>
								<dd>广东海德信息科技有限公司江门分公司</dd>
								<dd>电话：0750-8455998</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：江门市蓬江区建德街7号5-9卡</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>揭阳市</dt>
								<dd>揭阳市昊瑞鸿业通讯设备有限公司</dd>
								<dd>电话：0663-8660508</dd>
								<dd>营业时间：周一-周日 9:30-18:00</dd>
								<dd>地址：揭阳市榕城区进贤门大道东风广场东侧一座二层</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>茂名市</dt>
								<dd>茂名市通汇电信器材有限公司</dd>
								<dd>电话：0668-2881078、0668-2863698</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：茂名市光华中路82号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>梅州市</dt>
								<dd>梅州市明珠通讯有限公司</dd>
								<dd>电话：0753-2275788</dd>
								<dd>营业时间：周一---周日 9:30-18:00 周六---周日 10:00-18:00</dd>
								<dd>地址：梅州市梅江区嘉应东路28号明珠通讯店</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>清远市</dt>
								<dd>清远市辰锦电子技术服务有限公司</dd>
								<dd>电话：0763-3829555</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：清远市清城区下濠基132号首层</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>汕头市</dt>
								<dd>中通信息服务有限公司第一分公司</dd>
								<dd>电话：0754-88251666、0754-88628228</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：汕头市金平区东厦路88号金东花园电信营业厅</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>汕尾市</dt>
								<dd>汕尾市八方通信有限公司（汕尾店）</dd>
								<dd>电话：0660-3215336</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：汕尾市汕尾大道华信商贸大厦首层7号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>汕尾市</dt>
								<dd>汕尾市八方通信有限公司（海丰店）</dd>
								<dd>电话：0660-6810000</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：广东省海丰县海城镇美食街镇政府斜对面</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>韶关市</dt>
								<dd>武江区明科电讯店</dd>
								<dd>电话：0751-8616868、0751-8638338</dd>
								<dd>营业时间：9:00-17:30</dd>
								<dd>地址：韶关市武江区新华北路128号电信西河营业厅右侧</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									深圳市 <span class="repair">1小时快修</span>
								</dt>
								<dd>深圳市三瑞兴业科技有限公司</dd>
								<dd>电话：0755-88859022</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：深圳市福田区华强北路现代之窗大厦A座4楼附5518室（华强北路与振华路交叉口东南角，地铁蛇口线华强路A出口；公交站“赛博数码广场”）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									深圳市 <span class="repair">1小时快修</span>
								</dt>
								<dd>深圳市三瑞兴业龙华分公司</dd>
								<dd>电话：0755-88861122</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：深圳市龙华新区人民北路美丽AAA大厦北座503</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>深圳市</dt>
								<dd>深圳市三瑞兴业盐田分公司</dd>
								<dd>电话：0755-88860822</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：深圳市盐田区沙头角建工大厦10楼1008室（农业银行10楼，公交站“沙头角海关/三家店”）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									深圳市 <span class="repair">1小时快修</span>
								</dt>
								<dd>深圳市天成吉通讯技术有限公司</dd>
								<dd>电话：0755-27663087</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：深圳市宝安区新安街道25区创业二路华丰商贸城4楼B02（从蓝色透明电梯上，地铁环中线“灵芝站”A出口；公交站“宝安艺术城”）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									深圳市 <span class="repair">1小时快修</span>
								</dt>
								<dd>广东海德信息科技有限公司深圳分公司</dd>
								<dd>电话：0755-86969309</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：深圳市南山区南山大道新绿岛大厦9楼9F-A1（南山大道与桂庙路交叉口西南角；公交站“桂庙路口”）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>阳江市</dt>
								<dd>阳江市江城区赛实通讯器材经营部</dd>
								<dd>电话：0662-8802933、0662-8802718</dd>
								<dd>营业时间：周一-周日 9:00-22:00</dd>
								<dd>地址：阳江市江城区东风一路30号之二第六卡</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>云浮市</dt>
								<dd>云浮市云城区海德计算机维修服务部</dd>
								<dd>电话：0766-8982378</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：云浮市云城区河滨东路248号首层</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>湛江市</dt>
								<dd>湛江市霞山区格拉斯通讯器材有限公司</dd>
								<dd>电话：0759-2399686</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：湛江市霞山区椹川大道南29号骏景花园3号铺（工商银行旁）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>肇庆市</dt>
								<dd>肇庆市端州区海德计算机维修服务部</dd>
								<dd>电话：0758-2775600</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：肇庆市端州区江滨东路59号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>中山市</dt>
								<dd>广东海德信息科技有限公司中山分公司</dd>
								<dd>电话：0760-86732690</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：中山市坦洲镇南坦路262号世纪银星广场A1051号铺</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									中山市 <span class="repair">1小时快修</span>
								</dt>
								<dd>珠海市思博通信设备有限公司中山分公司</dd>
								<dd>电话：0760-88168098</dd>
								<dd>营业时间：9:00-18:00</dd>
								<dd>地址：中山市西区岐沙路1号13卡</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									珠海市 <span class="repair">1小时快修</span>
								</dt>
								<dd>珠海市思博通信设备有限公司</dd>
								<dd>电话：0756-2289800</dd>
								<dd>营业时间：9:30-18:30</dd>
								<dd>地址：珠海市香洲区柠溪路211号柠溪邮局正对面</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>


		<div id="policy007" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">广西 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									南宁市 <span class="repair">1小时快修</span>
								</dt>
								<dd>深圳市天音科技发展有限公司南宁分公司</dd>
								<dd>电话：0771-2622799</dd>
								<dd>营业时间：周一-周日 9:30-17:30</dd>
								<dd>地址：南宁市民族大道16号环球时代大厦17楼1707号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									南宁市 <span class="repair">1小时快修</span>
								</dt>
								<dd>广西南宁酷唯电子科技有限公司</dd>
								<dd>电话：0771-2867855</dd>
								<dd>营业时间：周一-周日 9:30-17:30</dd>
								<dd>地址：南宁市南环路130号5栋（金鑫楼）15楼5号房（5155）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									桂林市 <span class="repair">1小时快修</span>
								</dt>
								<dd>桂林市国浩电子维修有限公司</dd>
								<dd>电话：0773-2806918</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：桂林市秀峰区中山中路置业广场372-1-1号铺面</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>河池市</dt>
								<dd>广西南宁酷唯电子科技有限公司河池市分公司</dd>
								<dd>电话：0778-2200208</dd>
								<dd>营业时间：周一-周日 9:30-17:30</dd>
								<dd>地址：河池市朝阳路26号三楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>柳州市</dt>
								<dd>柳州市文泉通讯器材有限公司</dd>
								<dd>电话：0772-3600958</dd>
								<dd>营业时间：周一-周五 9:00-17:30 周六-周日 9:30-17:30</dd>
								<dd>地址：广西柳州市鱼峰区荣军北路73-32号（文惠桥南驾鹤移动右侧半山正对面）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>玉林市</dt>
								<dd>玉林市海鑫通讯设备销售有限责任公司</dd>
								<dd>电话：0775-2811160</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：广西省玉林市民主中路212号</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>


		<div id="policy008" class="tab-pane active">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">河南 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									郑州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>郑州豫博通讯技术有限公司</dd>
								<dd>电话：0371-55801018 、0371-66297708</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：河南省郑州市二七广场北京华联东门对面东方巨杰商务7楼718室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									郑州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>郑州超凡通讯技术有限公司</dd>
								<dd>电话：0371-53315123、0371-86593660、15803727888</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：河南省郑州市管城区陇海路262号（通讯新天地对面，德豫宾馆一楼）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									郑州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>河南省慈航商贸有限公司</dd>
								<dd>电话：0371-65830322</dd>
								<dd>营业时间：周一-周日 8:40-18:00</dd>
								<dd>地址：河南省郑州市金水区文化路85号A时代广场9楼905</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>安阳市</dt>
								<dd>文峰区华谊通信商行</dd>
								<dd>电话：0372-5915168</dd>
								<dd>营业时间：周一-周日 08:30-18:00</dd>
								<dd>地址：安阳市文峰区北门东1号（中原宾馆向东100米路南）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>开封市</dt>
								<dd>开封市顺河区嘉禾通讯商行</dd>
								<dd>电话：0371-22555511</dd>
								<dd>营业时间：周一-周日 8:00-12:00,1:30-6:00（午休时间不接机器不维修）</dd>
								<dd>地址：开封市顺河区南土街文盛佳源4号付1号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									洛阳市 <span class="repair">1小时快修</span>
								</dt>
								<dd>洛阳市西工区中鑫手机售后服务中心</dd>
								<dd>电话：0379-63188883</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：洛阳市西工区唐宫中路金谷园路口东南角天腾商务中心2楼中厅</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									南阳市 <span class="repair">1小时快修</span>
								</dt>
								<dd>南阳市世纪先锋通讯器材有限公司</dd>
								<dd>电话：0377-63897629、17703776118</dd>
								<dd>营业时间：周一-周日 8:00-18:00(12:00-13:30只接机不维修)</dd>
								<dd>地址：河南省南阳市卧龙区工业路和中州路交叉口（南都宾馆二楼）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									平顶山市 <span class="repair">1小时快修</span>
								</dt>
								<dd>平顶山翔讯商贸有限公司</dd>
								<dd>电话：0375-3391189</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：平顶山市中兴路北段工行大厦201室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									濮阳市 <span class="repair">1小时快修</span>
								</dt>
								<dd>濮阳市灵通科贸有限公司</dd>
								<dd>电话：0393-4428234</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：濮阳市金融街2号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>三门峡市</dt>
								<dd>三门峡市湖滨区鑫福手机销售部</dd>
								<dd>电话：0398-2996880</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：三门峡甘棠路与崤山路交叉口向南50米路东（海联酒店东侧门对面）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>商丘市</dt>
								<dd>商丘市国裕通信器材销售有限公司</dd>
								<dd>电话：0370-2317701 、0370-2319900</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：商丘市梁园区民主路金地广场院内</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									新乡市 <span class="repair">1小时快修</span>
								</dt>
								<dd>新乡市红旗区福恩终端通讯有限公司</dd>
								<dd>电话：0373-3035515</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：新乡市平原路与和平路交叉口南50米路东</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>信阳市</dt>
								<dd>信阳市浉河区桑菲通讯器材有限公司</dd>
								<dd>电话：0376-6206988</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：信阳市东方红大道与北京路交叉口凤凰新世界移动营业厅三楼（和美广场对面）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									许昌市 <span class="repair">1小时快修</span>
								</dt>
								<dd>许昌魏都峰云通讯器材商行</dd>
								<dd>电话：0374-2129977、13137422441</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：河南省许昌市七一路通讯城B46号门面房</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy009" class="tab-pane active">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">贵州 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									贵阳市 <span class="repair">1小时快修</span>
								</dt>
								<dd>贵阳市南明区新华记科技服务部</dd>
								<dd>电话：0851-85840400、 0851-85812799</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：贵阳市南明区中华南路91号万国大厦二楼A-6</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>六盘水市</dt>
								<dd>六盘水市中邮科贸有限公司</dd>
								<dd>电话：0858-8223379</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：贵州省六盘水市水西北路305号（钟山区地税局对面）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>黔南布依族苗族自治州</dt>
								<dd>黔南州亚通通讯经营部</dd>
								<dd>电话：0854-8908888</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：都匀市筑匀大厦电脑城3楼B7-2号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>铜仁市</dt>
								<dd>铜仁市诚信通讯维修中心</dd>
								<dd>电话：0856-5232678</dd>
								<dd>营业时间：周一-周五 9:00-18:00 周六-周日 9:30-18:00</dd>
								<dd>地址：贵州省铜仁市小十字官塘花苑第二天桥二楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>遵义市</dt>
								<dd>成都中邮高迅科技发展有限公司遵义分公司</dd>
								<dd>电话：0851-28453339</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：贵州省遵义市红花岗区大兴路26号</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy0010" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">河北 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									石家庄市 <span class="repair">1小时快修</span>
								</dt>
								<dd>石家庄市桥西区信逸通讯营业部</dd>
								<dd>电话：0311-87682066、15373630053</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：河北省石家庄市东马路18号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>石家庄市</dt>
								<dd>石家庄悦合电子科技有限公司</dd>
								<dd>电话：0311-69016572</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：石家庄市新华区民族路69号，颐高数码广场一层1047</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>保定市</dt>
								<dd>保定市新创翔商贸有限公司（高碑店）</dd>
								<dd>电话：0312-6409189</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：高碑店市迎宾路一中西侧中国电信二楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									保定市 <span class="repair">1小时快修</span>
								</dt>
								<dd>保定市新创翔商贸有限公司</dd>
								<dd>电话：0312-5935309</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：保定市东风西路218号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>沧州市</dt>
								<dd>沧州市佳信通信器材有限公司</dd>
								<dd>电话：0317-2020999、0317-3592646</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：河北省沧州市交通大街欣怡小区5-22号门市</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>承德市</dt>
								<dd>承德启行通讯设备销售有限公司</dd>
								<dd>电话：0314-2072344</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：河北省承德市双桥区文化大厦北塔14层B001室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									邯郸市 <span class="repair">1小时快修</span>
								</dt>
								<dd>邯郸市金朗爱力贸易有限公司</dd>
								<dd>电话：0310-3055988</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：河北省邯郸市陵园路459号华亿大厦二楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>衡水市</dt>
								<dd>衡水希光通信有限公司</dd>
								<dd>电话：0318-7926651</dd>
								<dd>营业时间：周一-周日 8:30-18:00</dd>
								<dd>地址：河北省衡水市新华东路269号大陆世家华府4-12，希光通信广场至尊店二楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									廊坊市 <span class="repair">1小时快修</span>
								</dt>
								<dd>廊坊市亿通电子通信设备有限公司</dd>
								<dd>电话：0316-7168871</dd>
								<dd>营业时间：周一-周日 8:00-18:00（冬季 8:00-17:30）</dd>
								<dd>地址：河北省廊坊市广阳区和平路182号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>秦皇岛市</dt>
								<dd>秦皇岛市远宏商贸有限公司</dd>
								<dd>电话：0335-3059123</dd>
								<dd>营业时间：周一-周日 9:00-12:00,14:00-17:30</dd>
								<dd>地址：河北省秦皇岛市河北大街138号秦新自由港A604</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>唐山市</dt>
								<dd>唐山万向商贸有限公司</dd>
								<dd>电话：0315-2048189</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：河北省唐山市路北区裕丰街11-4号（妇兴地产西侧）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>邢台市</dt>
								<dd>邢台市华业通信设备有限公司</dd>
								<dd>电话：0319-3862189</dd>
								<dd>营业时间：周一-周日 9:00-18:00(夏季:周一-周日 9:00-18:30）</dd>
								<dd>地址：河北省邢台市桥东区中兴东大街155号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>张家口市</dt>
								<dd>石家庄寅午商贸有限公司张家口分公司</dd>
								<dd>电话：0313-5916867</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：河北省张家口市桥东区新华书店底商三星手机体验店</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>


		<div id="policy0011" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">黑龙江 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									哈尔滨市 <span class="repair">1小时快修</span>
								</dt>
								<dd>哈尔滨旭东经贸科技有限公司</dd>
								<dd>电话：0451-55592929</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：黑龙江省哈尔滨市南岗区先锋路402号</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy0012" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">湖北 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									武汉市 <span class="repair">1小时快修</span>
								</dt>
								<dd>合肥天之合通讯技术有限公司（武汉店）</dd>
								<dd>电话：027-87822088</dd>
								<dd>营业时间：周一-周日 9:10-17:50</dd>
								<dd>地址：武汉市武昌区中南路7号中商写字楼A座1904室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									武汉市 <span class="repair">1小时快修</span>
								</dt>
								<dd>武汉鼎竭科技有限公司</dd>
								<dd>电话：027-82795922</dd>
								<dd>营业时间：9:00-17:00</dd>
								<dd>地址：湖北省武汉市江岸区天津路68号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>黄冈市</dt>
								<dd>黄冈市军隆通信设备有限责任公司</dd>
								<dd>电话：0713-6306258</dd>
								<dd>营业时间：周一-周日 8:30-12:00；13:45-18:00</dd>
								<dd>地址：湖北省黄冈市摩尔城C5-112号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>荆州市</dt>
								<dd>沙市区恒锋通讯</dd>
								<dd>电话：0716-8236263</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：湖北省荆州市沙市区江汉南路116号(电信二楼)</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>十堰市</dt>
								<dd>十堰宏旭通讯器材经营部</dd>
								<dd>电话：0719-8656859</dd>
								<dd>营业时间：周一-周日 9:00-12:30；14:30-18:00</dd>
								<dd>地址：湖北省十堰市邮电街宏旭通讯3-9号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>随州市</dt>
								<dd>合肥天之合通讯技术有限公司（随州店）</dd>
								<dd>电话：0722-3230608</dd>
								<dd>营业时间：周一-周日 9:00-18:00</dd>
								<dd>地址：湖北省随州市曾都区解放路1号（艳阳天酒店停车场旁）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>咸宁市</dt>
								<dd>合肥天之合通讯技术有限公司（咸宁店）</dd>
								<dd>电话：0715—8270891</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：湖北省咸宁市温泉路49号（温泉中百仓储斜对面，中国黄金旁）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>襄阳市</dt>
								<dd>襄阳鑫精英通讯商贸有限公司</dd>
								<dd>电话：0710-3211376</dd>
								<dd>营业时间：周一-周日 9:00-12:00；14:00-18:00</dd>
								<dd>地址：襄阳市建华路8号精英电讯</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>宜昌市</dt>
								<dd>宜昌市西陵区胜创科技通讯器材经营部</dd>
								<dd>电话：0717-6448618</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：宜昌市夷陵大道97号云集路电信售后（峡州宾馆正对面）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>潜江市</dt>
								<dd>潜江市海拓商贸有限公司</dd>
								<dd>电话：0728-6238432</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：湖北省潜江市紫光路18号</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy0013" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">湖南 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									长沙市 <span class="repair">1小时快修</span>
								</dt>
								<dd>长沙市雨花区汉一通讯维修部</dd>
								<dd>电话：0731－85561559</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：湖南省长沙市五一西路2号第一大道802室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									长沙市 <span class="repair">1小时快修</span>
								</dt>
								<dd>长沙市桢诚通讯科技有限公司</dd>
								<dd>电话：0731－82033775</dd>
								<dd>营业时间：周一-周日 9:00-12:00；13:45-17:30</dd>
								<dd>地址：长沙市芙蓉中路一段524号金帆大厦702（八一桥北侧老国美电器7楼702室）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>常德市</dt>
								<dd>常德市武陵区华域通讯器材经营部</dd>
								<dd>电话：0736－2603285</dd>
								<dd>营业时间：9:00-17:30</dd>
								<dd>地址：常德市武陵区朗州南路青阳阁社区常松琳公寓2楼常德手机城</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>郴州市</dt>
								<dd>郴州市博远通讯器材维修有限公司</dd>
								<dd>电话：0735-8887272</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：湖南省郴州市人民路东路天翼大厦3楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>衡阳市</dt>
								<dd>衡阳市石鼓区浩瑞电子通讯产品经营部</dd>
								<dd>电话：0734-8202958、 0734-8255566</dd>
								<dd>营业时间：9:30-18:00</dd>
								<dd>地址：湖南省衡阳市石鼓区解放路194号（解放路与莲湖路口交叉路口，小花坛后面5号门店）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>怀化市</dt>
								<dd>怀化恒讯通讯器材有限公司</dd>
								<dd>电话：0745-2108208</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：湖南省怀化市鹤城区新街昌顺手机城内1-4号门面</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>娄底市</dt>
								<dd>娄底市娄星区新润通通讯行</dd>
								<dd>电话：0738-8328287</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：娄底市娄星区清泉街28号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>邵阳市</dt>
								<dd>邵阳市双清区数码港通讯有限公司</dd>
								<dd>电话：0739-5227118</dd>
								<dd>营业时间：周一-周日 9:00-12:00；14:00-17:30</dd>
								<dd>地址：湖南省邵阳市双清区五一南路198号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>湘潭市</dt>
								<dd>湘潭市华兴通讯设备有限公司</dd>
								<dd>电话：0731-55555295</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：湖南省湘潭市雨湖区建设北路1号，麦丰电信营业厅2楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>益阳市</dt>
								<dd>益阳市宇顺通讯设备有限公司</dd>
								<dd>电话：0737-4232312</dd>
								<dd>营业时间：9:00-17:30</dd>
								<dd>地址：益阳市桃花仑西路624号宇顺通讯</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>株洲市</dt>
								<dd>株洲市三明通讯行</dd>
								<dd>电话：0731-22215688</dd>
								<dd>营业时间：周一-周日 9：00-12:00；13：30-17:30</dd>
								<dd>地址：湖南省株洲市建设南路23号三明通讯</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy0014" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">吉林 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									长春市 <span class="repair">1小时快修</span>
								</dt>
								<dd>长春市兴华通信设备有限责任公司</dd>
								<dd>电话：0431-85625000</dd>
								<dd>营业时间：周一-周日 8:30-17:00</dd>
								<dd>地址：吉林省长春市朝阳区义和路570号</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy0015" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">江苏 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>南京市</dt>
								<dd>南京市六合区富帮通信器材经营部</dd>
								<dd>电话：025-57738106</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：江苏省南京市沿江工业开发区新华七村综合楼B1幢</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									南京市 <span class="repair">1小时快修</span>
								</dt>
								<dd>南京莱达科技有限公司</dd>
								<dd>电话：025-83600018</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：南京市鼓楼区中央路2号天翼广场2楼（努比亚服务专区）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									常州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>钟楼区荷花翔旭通信器材维修部</dd>
								<dd>电话：18961161100</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：常州市钟楼区邮电路2-1号（天翼手机售后服务中心）二楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>淮安市</dt>
								<dd>淮安市清河区恒名通讯器材销售中心</dd>
								<dd>电话：0517-83903882</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：淮安市清河区承德北路81-6号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>连云港市</dt>
								<dd>江苏华拓电子有限公司（连云港）</dd>
								<dd>电话：0518-85668999</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：江苏省连云港市新浦区龙河南路1号瑞城嘉园商铺2楼202-2号（电信大楼东侧)</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>南通市</dt>
								<dd>南通市艺华通信设备有限公司</dd>
								<dd>电话：0513-85530789</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：南通市环城南路88号电信大楼二楼东厅</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									苏州市 <span class="repair">1小时快修</span>
								</dt>
								<dd>苏州林润通讯器材有限公司</dd>
								<dd>电话：0512-67873589、0512-65167577、0512-88884268</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：苏州市姑苏区干将东路859号瑞基大厦4楼404室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									无锡市 <span class="repair">1小时快修</span>
								</dt>
								<dd>崇安区八步通讯器材经营部</dd>
								<dd>电话：0510-82747000</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：江苏省无锡市健康路3号（电信通信器材市场一楼69号柜台）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>徐州市</dt>
								<dd>徐州市万信通讯器材有限公司</dd>
								<dd>电话：0516-83700699</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：徐州市淮海东路125号（移动手机城2楼）</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>盐城市</dt>
								<dd>江苏华拓电子有限公司（盐城）</dd>
								<dd>电话：0515-83300999、0515-83300666</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：江苏省盐城市建军中路59号中茵海华5号楼409室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>扬州市</dt>
								<dd>扬州烽信通讯科技有限公司</dd>
								<dd>电话：0514-87877000</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：扬州市四望亭路51号摩尔曼尼大厦533室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>太仓市</dt>
								<dd>太仓博策通讯设备有限公司</dd>
								<dd>电话：0512-53522008</dd>
								<dd>营业时间：周一-周日 9:00-17:00</dd>
								<dd>地址：江苏省太仓市影剧弄8号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>常熟市</dt>
								<dd>常熟市旭年网络技术服务有限公司</dd>
								<dd>电话：0512-52969736</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：江苏省常熟市方塔街24号2楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>昆山市</dt>
								<dd>苏州市万信通讯器材有限责任公司（昆山）</dd>
								<dd>电话：0512-57311232</dd>
								<dd>营业时间：周一-周日 9:00-17:30</dd>
								<dd>地址：昆山市玉山镇南城河岸路8号105-205室（人民路正阳桥南向东200米）二楼</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>


		<div id="policy0016" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">江西 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									南昌市 <span class="repair">1小时快修</span>
								</dt>
								<dd>江西旗锋实业有限公司</dd>
								<dd>电话：0791-86250007</dd>
								<dd>营业时间：周一-周日 9:00-17:30 (节日期间可能会有调整，请先电话咨询)</dd>
								<dd>地址：江西省南昌市八一大道161号长途汽车站公交站后面（原长运行包房旁）ZTE客服中心</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>赣州市</dt>
								<dd>赣州旗航通讯服务有限公司</dd>
								<dd>电话：0797-8208871</dd>
								<dd>营业时间：周一-周日 8:30-18:00 (节日期间可能会有调整，请先电话咨询)</dd>
								<dd>地址：江西省赣州市章贡区环城路18号-9</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>九江市</dt>
								<dd>九江市九天通信技术有限公司</dd>
								<dd>电话：0792-8138855</dd>
								<dd>营业时间：周一-周日 8:30--17:30 (节日期间可能会有调整，请先电话咨询)</dd>
								<dd>地址：江西省九江市浔阳区交通路12号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>上饶市</dt>
								<dd>上饶市旗航科技有限公司</dd>
								<dd>电话：0793-8228777</dd>
								<dd>营业时间：周一-周日 8:30-18:00 (节日期间可能会有调整，请先电话咨询)</dd>
								<dd>地址：江西省上饶市抗建路1号（电信营业厅二楼）</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>

		<div id="policy0017" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">辽宁 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									沈阳市 <span class="repair">1小时快修</span>
								</dt>
								<dd>沈阳金融商贸开发区祥润手机维修中心</dd>
								<dd>电话：024-31568388、024-31307635</dd>
								<dd>营业时间：周一-周日 9:00-17:00</dd>
								<dd>地址：辽宁省沈阳市沈河区小北关街96号</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									大连市 <span class="repair">1小时快修</span>
								</dt>
								<dd>大连峰联通讯器材有限公司</dd>
								<dd>电话：0411-84518000-0</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：大连市沙河口区民政街379号</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>


		<div id="policy0018" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">内蒙古 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									呼和浩特市 <span class="repair">1小时快修</span>
								</dt>
								<dd>呼和浩特市赛罕区世迅手机售后服务部</dd>
								<dd>电话：0471-6914087</dd>
								<dd>营业时间：周一-周日 9:00-12:00,14:30-18:00</dd>
								<dd>地址：内蒙古呼和浩特市新城区人民路邮校北巷东100米路北</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>包头市</dt>
								<dd>包头市乐讯科技服务有限公司</dd>
								<dd>电话：13394723997</dd>
								<dd>营业时间：周一-周日 9:00-12:00,14:30-18:00</dd>
								<dd>地址：内蒙古包头市青山区文化路北京华联西100米中国电信二楼</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>通辽市</dt>
								<dd>通辽市鼎翼通讯设备有限公司</dd>
								<dd>电话：18648523457</dd>
								<dd>营业时间：周一-周日 8:30-17:30</dd>
								<dd>地址：内蒙古省通辽市科尔沁区和平路东方饺子城对过</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>


		<div id="policy0019" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">宁夏 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									银川市 <span class="repair">1小时快修</span>
								</dt>
								<dd>银川市天和普泰商贸有限公司</dd>
								<dd>电话：0951-6081367</dd>
								<dd>营业时间：周一-周日 9:30-18:30</dd>
								<dd>地址：银川市中山南街现代通讯信息港2楼A211室</dd>
							</dl>
						</li>
						<li style="height: 160px">
							<dl>
								<dt>
									银川市 <span class="repair">1小时快修</span>
								</dt>
								<dd>宁夏恒诺伟业科技有限公司</dd>
								<dd>电话：0951-6877777</dd>
								<dd>营业时间：周一-周日 9:00-18:30</dd>
								<dd>地址：宁夏回族自治区银川市中山南街64号</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>



		<div id="policy0020" class="tab-pane">
			<div class="post_hd">
				<div class="post_nav">
					<h3 class="tit">青海 客户服务中心</h3>
					<ul>
						<li style="height: 160px">
							<dl>
								<dt>
									西宁市 <span class="repair">1小时快修</span>
								</dt>
								<dd>西宁兴吉力商贸有限公司</dd>
								<dd>电话：0971-8211111</dd>
								<dd>营业时间：周一-周日 9:30-18:00</dd>
								<dd>地址：青海省西宁市城西区西关大街25号（送变电大厦一楼）</dd>
							</dl>
						</li>
					</ul>
				</div>
			</div>
		</div>


	</div>

</body>
</html>