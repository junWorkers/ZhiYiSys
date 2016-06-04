// JavaScript Document

//设置滚动的标题栏
var flag=false;
var flag2=false;
var countdown=60; 
function settime(obj) { 
	if(flag){
		$.post("email_SendYZM.action",{email:email},function(data){
		},"json");
		retime(obj);
	}else{
		document.getElementById('email_error_tag').innerHTML='&nbsp;&nbsp;此邮箱错误或未被注册';
		document.getElementById('email_error_tag').style.color='red';
	}
}
function retime(obj){
	if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="发送验证码"; 
        countdown = 60; 
        return;
    } else { 
        obj.setAttribute("disabled", true); 
        obj.value=countdown +"秒后重新发送"; 
        countdown--; 
    } 
	setTimeout(function() { retime(obj) } ,1000) 
}
//邮箱验证
function checkEmail(){
	var reg=/^\w+@\w+\.(com)|(cn)$/;
	var email=document.getElementById('email').value;
	if(email==''){
		document.getElementById('email_error_tag').innerHTML="&nbsp;&nbsp;请输入邮箱地址";
		document.getElementById('email_error_tag').style.color='red';
		$("#email").val('');
	}else if(!reg.test(email)){
		document.getElementById('email_error_tag').innerHTML='&nbsp;&nbsp;邮箱地址格式错误';
		document.getElementById('email_error_tag').style.color='red';
	}else{
		$.post("email_CheckEmail.action",{email:email},function(data){
			var data=$.trim(data);
			console.info(data);
			if(data==1){
				document.getElementById('email_error_tag').innerHTML='&nbsp;&nbsp;邮箱正确';
				document.getElementById('email_error_tag').style.color='green';
				flag=true;
			}else{
				document.getElementById('email_error_tag').innerHTML='&nbsp;&nbsp;此邮箱未被注册';
				document.getElementById('email_error_tag').style.color='red';
			}
		},"json");
	}
}

//验证码
function checkcaptcha(){
	var captcha=document.getElementById('captcha').value;
	if(captcha==''){
		document.getElementById('captcha_error_tag').innerHTML='&nbsp;&nbsp;验证码不能为空';
		document.getElementById('captcha_error_tag').style.color='red';
	}else{
		var code = $("#captcha").val();
		$.post("email_CheckPwd.action",{code:code},function(data){
			if(parseInt($.trim(data))==1){
				$("#captcha_error_tag").html("验证码正确...").css("color", "#0F0");
				flag2=true;
			}else{
				$("#captcha_error_tag").html("验证码错误...").css("color", "#F00");
				$("#captcha").val('');
				return false;
			}
		},"json");
	}
}
//跳转到更改密码页面
function next(){
	    var email = $("#email").val();
	    var captcha=$("#captcha").val();
	  console.info(flag);
	  console.info(flag2);
//	    if(email !=null && captcha !=null){
//	    	location.href = 'front/update1.jsp';
//	    }
}
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
 






