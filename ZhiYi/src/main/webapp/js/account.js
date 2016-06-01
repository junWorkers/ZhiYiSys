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
 
var InterValObj; //timer变量，控制时间
var count = 5; //间隔函数，1秒执行
var curCount;//当前剩余秒数

function sendMessage() {
	curCount = count;
	//设置button效果，开始计时
	$("#btnSendCode").attr("disabled", "true");
	$("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
	InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
}
//timer处理函数
function SetRemainTime() {
	if (curCount == 0) {                
		window.clearInterval(InterValObj);//停止计时器
		$("#btnSendCode").removeAttr("disabled");//启用按钮
		$("#btnSendCode").val("重新发送验证码");
	}
	else {
		curCount--;
		$("#btnSendCode").val("请在" + curCount + "秒内输入验证码");
	}
}



function changeVilidateCode(){
	var email = $("#email").val();
	var countdown=60;
	if(email==''){
		alert("请先输入合格的邮箱...");
	}else{
		/*$.post("usersServlet?d="+new Date(),{op:"changeVilidateCode",email:email},function(data){
			if(parseInt($.trim(data))==0){
				alert("验证码获取失败，请重新获取...");
			}else{
				alert("验证码发送成功，注意查收...");
			}
		});
		*/
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
