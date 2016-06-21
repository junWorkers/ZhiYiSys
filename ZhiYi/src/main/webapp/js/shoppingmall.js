// JavaScript Document

//设置滚动的标题栏
{
	var str='指艺商城——指尖的艺术，你值得拥有　';
	function run(){		
		str=str.substring(1,str.length)+str.substring(0,1);
		document.title=str;         //在标题栏中显示
		window.status=str;         //在状态栏中显示   IE浏览器
	}
	//定时器
	window.setInterval('run()','500');     //每隔0.2秒调用run()方法一次
}

//左侧板块
function showzzz(d){

	for(var i=1;i<6;i++){
		var ul=document.getElementById(d);
		if(i==d){
			if(ul.style.display=='none'){
				ul.style.display='block';
			}
		}else{
			document.getElementById(i).style.display='none';
		}
	}
}
function close(d){
	for(var i=1;i<6;i++){
		var ul=document.getElementById(d);
		if(i==d){
				ul.style.display='none';
		}
	}
}

//图片轮播

	var myTime;
	var count =2;
	function shows(){ 
				for(var j=1;j<=4;j++){
					if(count==j){
						document.getElementById('b'+j).style.display='block';
						document.getElementById('c'+j).style.display='block';
						document.getElementById('a'+j).setAttribute('class','active'); 	
						//document.getElementById('d'+j).setAttribute('class','current');
					} else{
						document.getElementById('b'+j).style.display='none';
						document.getElementById('c'+j).style.display='none';
						document.getElementById('a'+j).setAttribute('class','bx-pager-link');
						//document.getElementById('d'+j).setAttribute('class',''); 	 	 
					}
				}
				count++;		
				if(count>4){
					count=1;
				}
				myTime=window.setTimeout('shows()',2000);
	}
	
	function showpic(){
	
		if(ssss==4 && jun==4){
			lunbo();
		}
	}

	function lunbo(){
		/*var gid=$("#gid").html();
		console.info(gid);
	  	window.localStorage.setItem('gid',gid);
		var gname=$("#gname").html();
		console.info(gname);
		window.localStorage.setItem('gname',gname);*/
		  shows();        //调用
		  var sp =document.getElementById('bx-pager-item').getElementsByTagName('a');
		  for(var i=0;i<sp.length;i++){
			  //给每一个span添加鼠标悬浮事件
			  sp[i].onmouseover=function(){
				  //清除定时器
				  window.clearTimeout(myTime);
				  
				  var  count1 =this.innerHTML; //特别注意，此时span中不能嵌套其他标签
				  for(var j=1;j<=4;j++){
					   if(count1!=j){
						  document.getElementById('b'+j).style.display='none';
							document.getElementById('a'+j).setAttribute('class','bx-pager-link'); 	 
					  }else if(count1 ==j){
						  document.getElementById('b'+j).style.display='block';
							document.getElementById('a'+j).setAttribute('class','active'); 	
					  } 
				  }
				  count1++;		
				  if(count1>=5){
					  count1=1;
				  }
			  }
			  //
			  sp[i].onmouseout=function(){
				  myTime=window.setTimeout('shows()',2000);
			  }
			  
		  }
		  
		  
		  var sp1 =document.getElementById('bx-pager-items').getElementsByTagName('a');
		  for(var i=0;i<sp1.length;i++){
			  //给每一个span添加鼠标悬浮事件
			  sp1[i].onmouseover=function(){
				  //清除定时器
				  window.clearTimeout(myTime);
				  
				  var  count2 =this.innerHTML; //特别注意，此时span中不能嵌套其他标签
				  for(var j=1;j<=4;j++){
					   if(count2!=j){
						  document.getElementById('b'+j).style.display='none';
							document.getElementById('a'+j).setAttribute('class','bx-pager-link'); 	 
					  }else if(count2 ==j){
						  document.getElementById('b'+j).style.display='block';
							document.getElementById('a'+j).setAttribute('class','active'); 	
					  } 
				  }
				  count2++;		
				  if(count2>=5){
					  count2=1;
				  }
			  }
			  //
			  sp[i].onmouseout=function(){
				  myTime=window.setTimeout('shows()',2000);
			  }
			  
		  }
	}
	