// JavaScript Document

//设置滚动的标题栏
{
	var str='找回密码——指艺官方网站　';
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
		$("#email").val('');
		return false;
	}else if(!reg.test(email)){
		document.getElementById('email_error_tag').innerHTML='&nbsp;&nbsp;邮箱地址格式错误';
		document.getElementById('email_error_tag').style.color='red';
		$("#email").val('');
		return false;
	}else{
		$.post("usersServlet?d="+new Date(),{op:"checkEmail",email:email},function(data){
			if(parseInt($.trim(data))==1){
				document.getElementById('email_error_tag').innerHTML='&nbsp;&nbsp;邮箱格式符合';
				document.getElementById('email_error_tag').style.color='green';
				return true;
			}else{
				document.getElementById('email_error_tag').innerHTML='&nbsp;&nbsp;此邮箱未被注册';
				document.getElementById('email_error_tag').style.color='red';
				$("#email").val('');
				return false;
			}
		});
	}
}

function changeVilidateCode(){
	var email = $("#email").val();
	
	if(email==''){
		alert("请先输入合格的邮箱...");
	}else{
		$.post("usersServlet?d="+new Date(),{op:"changeVilidateCode",email:email},function(data){
			if(parseInt($.trim(data))==0){
				alert("验证码获取失败，请重新获取...");
			}else{
				alert("验证码发送成功，注意查收...");
			}
		});
	}
}

//验证码
function checkcaptcha(){
	//document.getElementById('verification').style.display='block';
	var captcha=document.getElementById('captcha').value;
	if(captcha==''){
		document.getElementById('captcha_error_tag').innerHTML='&nbsp;&nbsp;验证码不能为空';
		document.getElementById('captcha_error_tag').style.color='red';
		return false;
	}else{
		var code = $("#captcha").val();
		$.post("usersServlet?d="+new Date(),{op:"checkzccode",code:code},function(data){
			if(parseInt($.trim(data))==1){
				$("#captcha_error_tag").html("验证码正确...").css("color", "#0F0");
				return true;
			}else{
				$("#captcha_error_tag").html("验证码错误...").css("color", "#F00");
				$("#captcha").val('');
				return false;
			}
		});
	}
}
//跳转到更改密码页面
function next(){
	    var email = $("#email").val();
	    var captcha=$("#captcha").val();
	  
	    if(email !=null && captcha !=null){
	    	location.href = 'front/update1.jsp';
	    }
}
