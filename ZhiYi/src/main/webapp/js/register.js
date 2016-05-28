// JavaScript Document

//设置滚动的标题栏
{
	var str='用户注册——指术官方网站　';
	function run(){		
		str=str.substring(1,str.length)+str.substring(0,1);
		document.title=str;         //在标题栏中显示
		window.status=str;         //在状态栏中显示   IE浏览器
	}
	//定时器
	window.setInterval('run()','500');     //每隔0.2秒调用run()方法一次
}

//邮箱验证
function checkEmail(){
	var reg=/^\w+@\w+\.(com)|(cn)$/;
	var email=document.getElementById('email').value;
	if(email==''){
		document.getElementById('email_error_tag').innerHTML="&nbsp;&nbsp;请输入邮箱地址";
		document.getElementById('email_error_tag').style.color='red';
		return false;
	}else if(!reg.test(email)){
		document.getElementById('email_error_tag').innerHTML='&nbsp;&nbsp;邮箱地址格式错误';
		document.getElementById('email_error_tag').style.color='red';
		return false;
	}else{
		document.getElementById('email_error_tag').innerHTML='&nbsp;&nbsp;邮箱格式符合';
		document.getElementById('email_error_tag').style.color='green';
		return true;
	}
}
//密码设置
function checkpwd(){
	var reg=/(?!^[0-9]+$)(?!^[A-z]+$)(?!^[^A-z0-9]+$)^.{6,16}$/;
	var pwd=document.getElementById('newPassword').value;
	if(pwd==''){
		document.getElementById('pwd_error_tag').innerHTML='&nbsp;&nbsp;请输入新密码';
		document.getElementById('pwd_error_tag').style.color='red';
		return false;
	}else if(!reg.test(pwd)){
		var reg1=/^\d*$/
		var reg2=/^[A-z]*$/
		if(pwd.length<6||pwd.length>16){
			document.getElementById('pwd_error_tag').innerHTML='&nbsp;&nbsp;密码长度为6-16位';
		}else if(reg2.test(pwd)){
			document.getElementById('pwd_error_tag').innerHTML='&nbsp;&nbsp;密码不能全为字母';			
		}else if(reg1.test(pwd)){
			document.getElementById('pwd_error_tag').innerHTML='&nbsp;&nbsp;密码不能全为数字';			
		}else{
			document.getElementById('pwd_error_tag').innerHTML='&nbsp;&nbsp;密码格式不正确';
		}
		document.getElementById('pwd_error_tag').style.color='red';
		return false;
	}else{
		document.getElementById('pwd_error_tag').innerHTML='&nbsp;&nbsp;密码格式符合';
		document.getElementById('pwd_error_tag').style.color='green';
		return true;
	}
}
//确认密码
function checkrpwd(){
	var pwd=document.getElementById('newPassword').value;
	var rpwd=document.getElementById('repeatNewPassword').value;
	if(rpwd==''){
		document.getElementById('rpwd_error_tag').innerHTML='&nbsp;&nbsp;请输入确认密码';
		document.getElementById('rpwd_error_tag').style.color='red';
		return false;
	}else if(pwd!=rpwd){
		document.getElementById('rpwd_error_tag').innerHTML='&nbsp;&nbsp;密码前后不一致';
		document.getElementById('rpwd_error_tag').style.color='red';
		return false;
	}else{
		document.getElementById('rpwd_error_tag').innerHTML='&nbsp;&nbsp;密码前后一致';
		document.getElementById('rpwd_error_tag').style.color='green';
		return true;
	}
}
//用户名校验
function checkName(){	
	var uname=$("#name").val();
	var flag;
	if(uname!=null && uname!=""){
		$.post("users_checkUserName.action",{uname:uname},function(data){
			if(data==null){
				document.getElementById('name_error_tag').innerHTML='&nbsp;&nbsp;此用户名可用';
				document.getElementById('name_error_tag').style.color='green';
				flag=true;
			}else{
				document.getElementById('name_error_tag').innerHTML='&nbsp;&nbsp;用户名已被占用，请重新输入';
				document.getElementById('name_error_tag').style.color='red';
				flag=false;
			}
		},"json");
	}else{
		document.getElementById('name_error_tag').innerHTML='&nbsp;&nbsp;用户名不能为空，请重新输入';
		document.getElementById('name_error_tag').style.color='red';
		flag=false;
	}
	return flag;
}
//重新获取验证码
function changeCode(){
	$("#mobile_captchaImg").attr("src","valiCodeImg.jsp?t="+new Date());
}

//验证码校验
function checkYzm(){
	var yzm=$("#mobile_captcha").val();
	var flag2;
	if(yzm!=null && yzm!=""){
		$.post("users_yanzheng.action",{yzm:yzm},function(data){
			data=parseInt($.trim(data));
			if(data==1){
				document.getElementById('mobile_captcha_succ_tag').innerHTML='&nbsp;&nbsp;验证码正确';
				document.getElementById('mobile_captcha_succ_tag').style.color='green';
				flag2=true;
			}else{
				document.getElementById('mobile_captcha_succ_tag').innerHTML='&nbsp;&nbsp;验证码错误，请重新输入';
				document.getElementById('mobile_captcha_succ_tag').style.color='red';
				flag2=false;
			}
		},"json");
	}else{
		document.getElementById('mobile_captcha_succ_tag').innerHTML='&nbsp;&nbsp;验证码不能为空，请重新输入';
		document.getElementById('mobile_captcha_succ_tag').style.color='red';
		flag2= false;
	}
	return flag2;
}
//校验各个验证
function check(){
	if(checkEmail()==true&&checkpwd()==true&&checkrpwd()==true){
		return true;
	}else{
		return false;
	}
}
//确认注册
function registerUserInfo(){
	var uname=$("#name").val();
	var email=$("#email").val();
	var pwd=$("#newPassword").val();
	var checkname=$("#name_error_tag").html();
	var checkyzm=$("#mobile_captcha_succ_tag").html();
	console.info(checkEmail());
	console.info(checkpwd());
	console.info(checkrpwd());
	if(document.getElementById("agreement").checked){
			if(check()==true && checkname=="&nbsp;&nbsp;此用户名可用" && checkyzm=="&nbsp;&nbsp;验证码正确"){
				$.post("users_register.action",{email:email,pwd:pwd,uname:uname},function(data){
					data=parseInt($.trim(data));
					if(data==1){
						alert("注册成功");
						$("#name").val('');
						$("#email").val('');
						$("#mobile_captcha").val('');
						$("#newPassword").val('');
						$("#repeatNewPassword").val('');
						window.location.href = "/ZhiYi/login.jsp";
					}else{
						alert("注册失败");
					}
				});
			}else{
				alert("信息校验失败，请检查信息填写是否完整");
			}
	}else{
		alert("您必须同意协议才能注册...");
	}
}

