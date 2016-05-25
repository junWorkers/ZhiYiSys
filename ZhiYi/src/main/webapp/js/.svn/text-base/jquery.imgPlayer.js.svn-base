// JavaScript Document
/*
功能：Jquery图片滚动播放插件jquery.jquery.imgPlayer.js
版本：1.0
用法示例：要修改的参数就传递，否则可以不写
$("#imgScroll").imgPlayer({
	btn : '', //按钮列表的li的jQuery选择器
	img : '', //图片列表的ul的jQuery选择器
	width : 710, //每次移动的宽度
	nowNum : 0 , //当前显示的图片，一般不要修改
	allNums : 4 , //总共有多少图片
	delay : 3000  //自动滚动的时间间隔
});
*/
$.fn.imgPlayer = function(options) {
	var pt;
	var defaults = {
		btn : '', //按钮列表的li
		img : '', //图片列表的ul
		width : 710, //每次移动的宽度
		nowNum : 0 , //当前显示的图片，一般不要修改
		allNums : 4 , //总共有多少图片
		delay : 3000  //自动滚动的时间间隔
	};
	
	var opts = $.extend(defaults, options);
	
	//调用图片播放器插件
	$(defaults.btn).hover(
		function(){
			show($(this).index());
			window.clearInterval(pt);
		}, function(){
			pt = window.setInterval(function(){
					show(defaults.nowNum);
				},
					defaults.delay
			);
		}
	).trigger('mouseleave');
	
	
	function show(num){
		defaults.nowNum = num ;
		$(defaults.btn).eq(defaults.nowNum).attr("class","hover").siblings().attr("class","");
		$(defaults.img).stop(true,false).animate(
			{marginLeft:-(defaults.width*defaults.nowNum)+"px"},
			1000,
			function(){
				defaults.nowNum++;
				if(defaults.nowNum == defaults.allNums){
					defaults.nowNum = 0;
				}
			}
		);
	}	
}