// JavaScript Document

//设置滚动的标题栏
{
	var str='指艺首页——指尖的艺术，你值得拥有　';
	function run(){		
		str=str.substring(1,str.length)+str.substring(0,1);
		document.title=str;         //在标题栏中显示
		window.status=str;         //在状态栏中显示   IE浏览器
	}
	//定时器
	window.setInterval('run()','500');     //每隔0.2秒调用run()方法一次
}

//轮播图片
{
	var myTime;
	var count =2;
	function show(){ 
				for(var i=1;i<=document.getElementById('fa-image').getElementsByTagName('img').length;i++){
					if(count ==i){
						document.getElementById(i).style.display='block';
						document.getElementById('a'+i).style.backgroundColor='#FEB44B'; 	 
					} else{
						document.getElementById(i).style.display='none';
						document.getElementById('a'+i).style.backgroundColor='#EBC9CA';
					}
				}
				count++;		
				if(count>5){
					count=1;
				}
				myTime=window.setTimeout('show()',2000);
	}
	
	window.onload=function(){
		show();        //调用
		
		
		var sp =document.getElementsByTagName('span');
		for(var i=0;i<sp.length;i++){
			//给每一个span添加鼠标悬浮事件
			sp[i].onmouseover=function(){
				//清除定时器
				window.clearTimeout(myTime);
				
				var  count1 =this.innerHTML; //特别注意，此时span中不能嵌套其他标签
				for(var i=1;i<=document.getElementById('fa-image').getElementsByTagName('img').length;i++){
					 if(count1!=i){
						document.getElementById(i).style.display='none';
						document.getElementById('a'+i).style.backgroundColor='#EBC9CA'; 
					}else if(count1 ==i){
						document.getElementById(i).style.display='block';	
						document.getElementById('a'+i).style.backgroundColor='#FEB44B'; 
					} 
				}
				count1++;		
				if(count1>5){
					count1=1;
				}
			}
			//
			sp[i].onmouseout=function(){
				myTime=window.setTimeout('show()',2000);
			}
			
		}
	}
	
	function loginOut(){
		if(window.confirm('您确定要注销登录吗？')){
			$.post("usersServlet?d="+new Date(),{op:"userOut"},function(data){
				if(parseInt($.trim(data))==1){
					var str='<li><a href="register.html">注册</a></li>';
					str+='<li><a href="login.html">登录</a></li>';
					$(".fa-right").html(str);
				}
			});
		}
	}
	
}