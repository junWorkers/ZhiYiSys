<%@ page  contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<base href="/ZhiYi/">
<meta content="charset=utf-8">
<title>指艺后台登陆</title>
<link rel="stylesheet" href="css/style.css">

<style type="text/css">
body {
	background-image: url(images/three.jpg);
	background-position: 0px 0px;
}

.form-div {
	margin-top: 110px;
}

#code {
	width: 135px;
}

#top {
	color: #039;
	font-size: 25px;
	text-align: center;
}

#myresult {
	color: red;
	font-size: 20px;
	text-align: center;
}
</style>
</head>
<body
	style="background-position: 33.30000000000004px 33.30000000000004px;">
	<div id="Layer1"
		style="position: absolute; width: 100%; height: 100%; z-index: -1">
	</div>
	<br>
	<div class="form-div">
		<form action="" method="post" id="login-form">
			<label style="color: red">${sessionScope.errorMsg }</label>
			<c:remove var="errorMsg" scope="session" />
			<table>
				<tbody>
					<tr>
						<td colspan="2"><p id="top">指艺后台登陆</p></td>
					</tr>
					<!-- 清除session中的数据 -->
					<tr>
						<td>用户名</td>
						<td><input name="aname" type="text" id="uid" value="qyb"
							easyform="length:2-6;char-chinese;real-time;" message="输入用户名"
							easytip="disappear:lost-focus;theme:blue;"></td>
					</tr>
					<tr>
						<td>密码</td>
						<td><input name="pwd" type="password" id="psw1" value="yl"
							easyform="length:6-16;" message="密码必须为6—16位"
							easytip="disappear:lost-focus;theme:blue;"></td>
					</tr>
					<tr>
						<td>验证码</td>
						<td><input name="code" type="text" id="code"
							onblur="checkzccodes()"> <img src="valiCodeImg.jsp"
							width="90" height="35" id="imgss" /> <a
							href="javascript:showCodeAgain()">看不清</a></td>
					</tr>
					<tr>
						<td id="myresult" colspan="2"></td>
					</tr>
				</tbody>
			</table>

			<div class="buttons">
				<input value="登录" type="button" onclick="managerLogin()"
					style="margin-right: 20px; margin-top: 20px;"> <input
					value="重置" type="reset"
					style="margin-right: 45px; margin-top: 20px;">
			</div>
			<br class="clear">
		</form>
	</div>


	<script type="text/javascript" src="js/jquery-1.11.3.js"></script>
	<script type="text/javascript" src="js/easyform.js"></script>
	<script type="text/javascript" src="js/autoBackgroundScroll.js"></script>
	<script>
		function showCodeAgain() {
			$("#imgss").attr("src", "valiCodeImg.jsp?t=" + new Date());
		}

		//验证码验证
		function checkzccodes() {
			var code = $.trim($("#code").val());

			$.post("backjson/admin_checkzccode.action?d=" + new Date(), {
				code : code
			}, function(data) {
				if (data.result > 0) {
					return true;
				} else {
					alert("验证码错误,请重新输入...");
					$("#Code").val('');
					return false;
				}
			});
		}
		function managerLogin() {
			var aname = $.trim($("#uid").val());
			var pwd = $.trim($("#psw1").val());
			var code = $.trim($("#code").val());
			if (aname == '') {
				alert("登录名称不能为空...");
			} else if (pwd == '') {
				alert("密码不能为空...");
			} else if (code == '') {
				alert("请输入验证码...");
			} else if (aname != '' && pwd != '' && code != null) {
				$.post("backjson/admin_managerLogin.action?d=" + new Date(), {
					aname : aname,
					pwd : pwd
				}, function(data) {
					if (data.result > 0) {
						window.location.href = "back/index.jsp";
					} else {
						alert("用户名或密码错误或账号不可用...");
					}
				});
			}
		}
	</script>

	<script type="text/javascript">
		$(document).ready(function() {
			$(window).keydown(function(event) {
				if (event.keyCode == 13) {
					persubmit();
				}
			});

			/* $('#login-form').easyform();
			$('#uid').focus();
			var Sys = {};
			var ua = navigator.userAgent.toLowerCase();
			if (window.ActiveXObject){
			    Sys.ie = ua.match(/msie ([\d.]+)/)[1];
			    if (Sys.ie<=8){
			        alert('你目前的IE版本为'+Sys.ie+'版本太低，请升级！');
			       // location.href="http://windows.microsoft.com/zh-CN/internet-explorer/downloads/ie";
			    }
			} */

			$('body').autoBackgroundScroll({
				speed : 0.2,
				direction1 : 'bottom',
				direction2 : 'right',
				imageWidth : 2000,
				imageHeight : 2000
			});
		});
	</script>


	<div id="easytip-div-mainuid"
		style="text-align: left; display: none; position: absolute;">
		<div class="easytip-text"
			style="text-align: left; padding: 10px; min-width: 120px;"></div>
		<div class="easytip-arrow"
			style="padding: 0px; margin: 0px; width: 0px; height: 0px; position: absolute; border: 10px solid;"></div>
	</div>
	<div id="easytip-div-mainpsw1"
		style="text-align: left; display: none; position: absolute;">
		<div class="easytip-text"
			style="text-align: left; padding: 10px; min-width: 120px;"></div>
		<div class="easytip-arrow"
			style="padding: 0px; margin: 0px; width: 0px; height: 0px; position: absolute; border: 10px solid;"></div>
	</div>
	<div id="easytip-div-maincode"
		style="text-align: left; display: none; position: absolute;">
		<div class="easytip-text"
			style="text-align: left; padding: 10px; min-width: 120px;"></div>
		<div class="easytip-arrow"
			style="padding: 0px; margin: 0px; width: 0px; height: 0px; position: absolute; border: 10px solid;"></div>
	</div>
	<div id="easytip-div-main"
		style="text-align: left; display: none; position: absolute;">
		<div class="easytip-text"
			style="text-align: left; padding: 10px; min-width: 120px;"></div>
		<div class="easytip-arrow"
			style="padding: 0px; margin: 0px; width: 0px; height: 0px; position: absolute; border: 10px solid;"></div>
	</div>


</body>
</html>