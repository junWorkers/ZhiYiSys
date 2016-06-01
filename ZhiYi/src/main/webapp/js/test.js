var countdown=60; 
function settime(obj) { 
    if (countdown == 0) { 
        obj.removeAttribute("disabled");    
        obj.value="免费获取验证码"; 
        countdown = 60; 
        return;
    } else { 
        obj.setAttribute("disabled", true); 
        obj.value="重新发送(" + countdown + ")"; 
        countdown--; 
    } 
setTimeout(function() { 
    settime(obj) }
    ,1000) 
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