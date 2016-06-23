// JavaScript Document

//设置滚动的标题栏
{
	var str='指艺手机——无边框的智能手机，你值得拥有　';
	function run(){		
		str=str.substring(1,str.length)+str.substring(0,1);
		document.title=str;         //在标题栏中显示
		window.status=str;         //在状态栏中显示   IE浏览器
	}
	//定时器
	window.setInterval('run()','500');     //每隔0.2秒调用run()方法一次
}


$(function(){
	var gname=window.localStorage.getItem('gname');
	var src=window.localStorage.getItem('src');
	var color=window.localStorage.getItem('color');
	var gid=window.localStorage.getItem('gid');
	$("#img").attr("src",src);
	$("#miaoshu").html(gname+color);
	var taocan=$("#taocan").html();
	
	var phoneprice=$("#phoneprice").html();
	console.info(phoneprice);
	$("#allprice").html(phoneprice);
	window.localStorage.setItem('phoneprice',phoneprice);
	var gpid=$("#gpid").text();
	window.localStorage.setItem('gpid',gpid);

});

function buy(){
	var src=window.localStorage.getItem('src');
	var gname=window.localStorage.getItem('gname');
	alert(gname);
	var color=window.localStorage.getItem('color');
	var phoneprice=JSON.parse(window.localStorage.getItem('phoneprice'));
	var isSave;
	var goods=window.localStorage.getItem('goods');
	console.info(goods);
	goods=JSON.parse(goods);
	if(goods!=null&&goods!="undefined"){
			var objs=goods.good;
			for(var i=0;i<objs.length;i++){
				isSave=false;
				if(objs[i].name==gname && objs[i].color==color){
					objs[i].num+=1;
					isSave=true;
					break;	
				}	
			}
			
			if(!isSave){
				objs[objs.length]={src:src,name:gname,color:color,price:phoneprice,num:1};
			}
	}else{
		var goods={good:[{src:src,name:gname,color:color,price:phoneprice,num:1}]}
	}
	goods=JSON.stringify(goods);
	window.localStorage.setItem('goods',goods);

}

