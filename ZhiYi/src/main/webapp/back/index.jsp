<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <meta charset="UTF-8">
	<title>指艺手机后台管理系统</title>
	<link id="easyuiTheme" href="../easyui/themes/metro-blue/easyui.css" rel="stylesheet" type="text/css" />
    <link href="../easyui/themes/icon.css" rel="stylesheet" type="text/css" />
    <link href="../easyui/icons/icon-all.css" rel="stylesheet" type="text/css" />
    <link  href="../easyui/jeasyui-extensions/jeasyui.extensions.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="../css/indexs.css">
	<link rel="stylesheet" href="../compiled/flipclock.css">
	<link rel="short icon" href="../images/logomin.jpg" type="images/x-icon"/>
    
    <script src="../easyui/jquery-1.11.0.js" type="text/javascript"></script>
    <script src="../js/ajaxfileupload.js" type="text/javascript"></script>
    
    <script src="../easyui/jquery-easyui-1.3.5/jquery.easyui.min.js" type="text/javascript"></script>
    <script src="../easyui/jquery-easyui-datagridview/datagrid-detailview.js" type="text/javascript"></script>
    <script src="../easyui/jquery-easyui-1.3.5/locale/easyui-lang-zh_CN.js" type="text/javascript"></script>
   
    <script type="text/javascript" src="../easyui/jquery.cookie.js"></script>
	<script type="text/javascript" src="../js/showpic.js"></script>
	
	
	<script type="text/javascript" src="../ueditor/ueditor.config.js"></script>
	<script type="text/javascript" src="../ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" src="../ueditor/lang/zh-cn/zh-cn.js"></script>
	<script src="../compiled/flipclock.js"></script>
</head>
<style>
	#top_login_right{
	height:30px;
	line-height:30px;
	float:right;
	margin-right:50px;
	margin-top:30px;
	}
	#top_login_right a{
		font-size:25px;
		text-decoration: none;
	}
	#imgs{
		padding-top:18px;
		float:left;
	}
	.word span{
		float:left;
		margin-top:3%;
		margin-left:0%;
		font-size:18px;
		color:#F00;
	}

</style>
   <style type="text/css">
  li{
   
   list-style:none;
   
   }
        .ftitle{  
            font-size:14px;  
            font-weight:bold;  
            padding:5px 0;  
            margin-bottom:10px;  
            border-bottom:1px solid #ccc;  
        }  
        .fitem{  
            margin-bottom:5px;  
        }  
        .fitem label{  
            display:inline-block;  
            width:80px;  
        }  
    </style>
  
	
 <body class="easyui-layout" style="overflow-y: hidden;visibility: hidden;">
	 <div data-options="region:'north',split:false" id="newslogo" style="overflow: hidden; height: 100px;background: #65A1B6;line-height: 20px;color: #fff; font-family: Verdana, 微软雅黑,黑体">
	   <img src="../images/DSC_0030.png" id="imgs" />
	   <div class="word"><span>指艺智能手机后台管理系统，欢迎您！</span></div>
		<div id="top_login_right">
		
    		<span style="float:right;font-size:13px; padding-right:0px;padding-top:0px;height:60px" class="head">
			<table border="0" style="float:right;height: 60px;">
				<tr style="padding-top: 0px;height: 30px;" >
					<td align="right" style="padding-top: 0px;">
					</td>
				</tr>
				<tr style="padding-bottom: 0px;height: 20px;">
					<td align="right">
						<c:if test="${not empty loginManager }">
	    		<tr style="padding-bottom: 0px;height: 20px;">
						
					</tr>
	    			<a href="#"><font color="#FF0000" size="3">欢迎您：<span id="anameNeed">${sessionScope.loginManager.aname }</span></font></a>&nbsp;&nbsp;
    		</c:if>
						<a href="#" class="easyui-menubutton" data-options="menu:'#layout_north_kzmbMenu',iconCls:'icon-gears'">主题设置</a>
						<a id="loginOut" href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-exit',plain:true">退出系统</a>
					</td>
				</tr>
			</table>
		</span>
		</div>
	</div>
	<div data-options="region:'west',split:true" title="导航菜单" style="width:200px;overflow-x:hidden">
		<div style="height:621px;overflow:auto;width:200px;">
			<div id="acc" class="easyui-accordion" data-options="fit:false,border:false" >
						<div title="&nbsp;&nbsp;&nbsp;&nbsp;后台系统管理" data-options="iconCls:'icon-standard-server-add'">
						<ul>
									<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-user',plain:true"  id="admin_manager" href="javascript:void(0)" rel="" onclick="addTab('管理员信息管理','admin.html','icon-standard-user');">管理员信息管理</a></div></li>
									<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-user-female',plain:true"  id="admin_manager" href="javascript:void(0)" rel="" onclick="addTab('会员信息管理','users.html','icon-standard-user-female');">会员信息管理</a></div></li>
									
						</ul>
						</div>
						<div title="&nbsp;&nbsp;&nbsp;&nbsp;商城信息管理" data-options="iconCls:'icon-standard-package'">
						<ul>
									<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-database-gear',plain:true"  id="admin_manager" href="javascript:void(0)" rel="" onclick="addTab('商城序列管理','gtype.html','icon-standard-chart-pie');">商城序列管理</a></div></li>
									<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-note',plain:true"  id="admin_manager" href="javascript:void(0)" rel="" onclick="addTab('商城商品信息管理','goods.html','icon-standard-note');">商城商品信息管理</a></div></li>
						<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-table',plain:true"  id="admin_manager" onclick="addTab('商品详细信息管理','goodsInfo.html','icon-standard-table');">商品详细信息管理</a></div></li>
						<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-transmit',plain:true"  id="admin_manager" onclick="addTab('商品参数管理','goodsPar.html','icon-standard-transmit');">商品参数管理</a></div></li>
						</ul>
						</div>
						<div title="&nbsp;&nbsp;&nbsp;&nbsp;广告信息管理" data-options="iconCls:'icon-standard-world'">
						<ul>
								<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-package-go',plain:true"  id="admin_manager" onclick="addTab('广告位管理','ad.html','icon-standard-package-go');">广告位管理</a></div></li>
								<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-package-green',plain:true"  id="admin_manager" onclick="addTab('广告信息管理','admessage.html','icon-standard-package-green');">广告信息管理</a></div></li>	
						</ul>
						</div>
						<div title="&nbsp;&nbsp;&nbsp;&nbsp;体验店信息管理" data-options="iconCls:'icon-standard-lorry'">
						<ul>
									<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-lorry',plain:true"  id="admin_manager" onclick="addTab('体验店信息管理','exstore.html','icon-standard-application-get');">体验店信息管理</a></div></li>
						</ul>
						</div>
						<div title="&nbsp;&nbsp;&nbsp;&nbsp;销售信息管理" data-options="iconCls:'icon-standard-cart-go'">
						<ul>
									<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-application-get',plain:true"  id="admin_manager" onclick="addTab('销售信息总览','ordershow.html','icon-standard-application-get');">销售信息总览</a></div></li>
									<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-cart-put',plain:true"  id="admin_manager" onclick="addTab('会员购物信息浏览','usershow.html','icon-standard-cart-put');">会员购物信息浏览</a></div></li>
						</ul>
						</div>
						<div title="&nbsp;&nbsp;&nbsp;&nbsp;修改密码" data-options="iconCls:'icon-standard-key'">
						<ul>
								<li><div><a style="display:block;width: 150px;" class="easyui-linkbutton" data-options="iconCls:'icon-standard-key',plain:true"  id="admin_manager" onclick="addTab('修改密码','pwd_update.html','icon-standard-key');">修改密码</a></div></li>	
						</ul>
						</div>
						
			</div>
		</div>
	</div>
	<div data-options="region:'center'" style="background:#000000; overflow-y:hidden;margin-left: 0px;margin-right: 0px; height:100px;" >
		
			<div id="tabs" class="easyui-tabs" data-options="fit:true">
		<div title="" data-options="iconCls:'icon-home'" style="padding-left:1px;padding-right:1px"><iframe scrolling="auto" frameborder="0"  src="zhiyi.html" style="width:100%;height:100%;"></iframe></div>
		
		</div>
		
	</div>
	
	<div data-options="region:'east',split:true,collapsed:true,title:'帮助'" style="width:100px;">
		欢迎扫描二维码<img src="../images/weixin.jpg" width="90px" height="90px" style="padding-top:10px;"/>
	</div>
	<div data-options="region:'south',border:false" style="background: #65A1B6;margin:0px;padding:0px;" id="copyright">
		<p><a href="#">指艺智能手机管理系统</a>&copy;版权所有 400-700-6600</p>
	</div>
	<script type="text/javascript">
	

	$(function() {
		//主题包
		var themes = [
		  			{value:'default',text:'默认',group:'Base'},
		  			{value:'gray',text:'灰',group:'Base'},
		  			{value:'bootstrap',text:'银',group:'Base'},
		  			{value:'black',text:'黑',group:'Base'},
		  			{value:'metro-blue',text:'Metro(蓝)',group:'Metro'},
		  			{value:'metro-gray',text:'Metro(灰)',group:'Metro'},
		  			{value:'metro-green',text:'Metro(绿)',group:'Metro'},
		  			{value:'metro-orange',text:'Metro(橙)',group:'Metro'},
		  			{value:'metro-red',text:'Metro(红)',group:'Metro'},
		  			{value:'jqueryui-cupertino',text:'清泉',group:'UI'},
		  			{value:'jqueryui-dark-hive',text:'黑巢',group:'UI'},
		  			{value:'jqueryui-pepper-grinder',text:'杏黄',group:'UI'},
		  			{value:'jqueryui-sunny',text:'阳光',group:'UI'}
		  		];
		  		$('#themeSelector').combobox({
		  			groupField:'group',
		  			data: themes,
		  			panelHeight:'auto',
		  			onChange:onChangeTheme,
		  			onLoadSuccess:function(){
		  				if($.cookie('easyuiThemeName')){
		  					$(this).combobox('setValue', $.cookie('easyuiThemeName'));
		  				}else{
		  					$(this).combobox('setValue', 'default');
		  				}
		  			}
		  		});
		$('#loginOut').click(function() {
			confirm('系统提示','您确定要退出本次登录吗?',function(){
				location.href = 'login.jsp';
			});
	    });
		setInterval(function() {
			$("#sys_now_date").html(new Date().toLocaleString());
		}, 1000);
		
	
	});
	
	//打开修改主题窗口
	function update_zt() {
		$('#zt').dialog('open');
	}
	   
	   
	//打开tab中的iframe
	function createFrame(url){
		return '<iframe scrolling="auto" marginwidth=0 marginheight=0 frameborder=no src="'+url+'" style="width:99.5%;height:99.2%;padding:2px;"></iframe>';
	}
	//添加新的tab页
	function addTab(subtitle, url,icon) {
			if (!$('#tabs').tabs('exists', subtitle)) {
				$('#tabs').tabs('add', {
					title : subtitle,
					href:url,
					closable : true,
					iconCls:icon,
					tools:[{
				        iconCls:'icon-mini-refresh',
				        handler:function(){
				        	var tab = $('#tabs').tabs('getSelected');
				        	tab.panel('refresh');
				        }
				    }]
				});
			} else {
				$('#tabs').tabs('select', subtitle);
			}
		}
	//添加新的tab页
	function addTabClose(subtitle, url,icon) {
			if ($('#tabs').tabs('exists', subtitle)) {
				$('#tabs').tabs('close', subtitle);
			}
			addTab(subtitle, url,icon);
			
		}

	//窗口取消按钮事件
	function cancel() {
		$('#w').dialog('close');
		$('#zhxx').dialog('close');
		$('#zt').dialog('close');
	}
	window.onload=vi;
	function vi(){
		$("body").css("visibility","visible");
	    	/* $("body").after("<script type='text/javascript'>$(function(){$('body').css('visibility','visible');});<\/script>");
		 */	
	}
</script>
	   <div id="layout_north_kzmbMenu" style="width: 140px; display: none;">
		
		<div data-options="iconCls:'icon-standard-color-wheel'" onclick="javascript:update_zt();">更换主题</div>
	</div>
	<div id="zt" class="easyui-dialog" title="主题风格" style="width:180px;height:100px;padding:10px 20px" closed="true" data-options="modal:true">
		<div class="fitem">
			<input id="themeSelector" class="easyui-combobox" style="width: 120px;"></input>
		</div>
	</div>
  </body>
  
  <script>
	 $(function(){
			$("body").after("<script type='text/javascript'>$(function(){$('body').css('visibility','visible');});<\/script>");
			var $easyuiTheme = $('#easyuiTheme');
			var url = $easyuiTheme.attr('href');
			var href = url.substring(0, url.indexOf('themes')) + 'themes/' + $.cookie('easyuiThemeName') + '/easyui.css';
			$easyuiTheme.attr('href', href);
		});
		function confirm(title,text,callback) {
			$.messager.defaults = {ok:"确定",cancel: "取消"};
     	$.messager.confirm(title, text, function(r) {
         	if (r) {
         		callback();
         	}
     	});
		}
		
		function show(message) {
			$.messager.show({
				title : '消息',
				msg : message,
				timeout : 4000,
				showType : 'show'
			});
		}
		function onChangeTheme(theme){
			var $easyuiTheme = $('#easyuiTheme');
			var url = $easyuiTheme.attr('href');
			var href = url.substring(0, url.indexOf('themes')) + 'themes/' + theme + '/easyui.css';
			$easyuiTheme.attr('href', href);
			$.cookie('easyuiThemeName', theme, {
		        expires : 7
		    });
			$('.tabs-inner span').each(function(i, n) {
	        	var t = $(n).text();
	        	var tab = $('#tabs').tabs('getTab',t);
	        	tab.panel('refresh');
	        });
		}
  function loginOut(){
		if(window.confirm('您确定要注销登录吗？')){
			$.post("../adminServlet?d="+new Date(),{op:"managerOut"},function(data){
				if(parseInt($.trim(data))==1){
					location.href="login.html";
				}
			});
		}
	}
  
  </script>
</html>
