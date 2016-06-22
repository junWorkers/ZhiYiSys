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
function choose(d){
	for(var i=1;i<4;i++){
		var node='#'+d;
		if(i==d){
			if($(node).css('background-color','#fafafa')){
				$(node).css('background-color','#CCC');
			}else if($(node).css('background-color','#CCC')){
				$(node).css('background-color','#fafafa');
			}
			var src=$("#img"+i).attr("src");
			var color=$("#color"+i).text();
			window.localStorage.setItem('src',src);
			window.localStorage.setItem('color',color);
			var gid=window.localStorage.getItem('gid');
			$.post("goods_showGoodsGpid?t="+new Date(),{gid:gid,color:color},function(data){
				
			},'json');
		}else{
			var nodes='#'+i;
			$(nodes).css('background-color','#fafafa');
		}
		
	}
}

