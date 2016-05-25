	var myTime;
	var count =2;
	function shows(){ 
				for(var j=1;j<=4;j++){
					if(count==j){
						document.getElementById('b'+j).style.display='block';
						document.getElementById('a'+j).setAttribute('class','active'); 	
						//document.getElementById('d'+j).setAttribute('class','current');
					} else{
						document.getElementById('b'+j).style.display='none';
						document.getElementById('a'+j).setAttribute('class','current'); 	
						//document.getElementById('d'+j).setAttribute('class',''); 	 	 
					}
				}
				count++;		
				if(count>4){
					count=1;
				}
				myTime=window.setTimeout('shows()',2000);
	}

window.onload=function(){
	  shows();        //调用
	  var sp =document.getElementById('bannerCtrl').getElementsByTagName('li');
	  for(var i=0;i<sp.length;i++){
		  //给每一个span添加鼠标悬浮事件
		  sp[i].onmouseover=function(){
			  //清除定时器
			  window.clearTimeout(myTime); 
			  var  count1 =this.innerHTML; //特别注意，此时span中不能嵌套其他标签
			  for(var j=1;j<=4;j++){
				   if(count1 ==j){
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
			  myTime=window.setTimeout('shows()',1000);
		  }
		  
	  }
	  
}