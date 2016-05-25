var index=0;   //当前索引值
var total=0;
$(function(){
	total=$('#show_img li').length;
	$('#show_small_img li img').bind({
		click:function(){
			showPic1($(this).parent().parent().index());	
		}
	});
});

function showPic1(){
	console.info('index')
	if(arguments.length>0){
	
		if(arguments[0]<0){
			index=0;
	
		}else if(arguments[0]>total-1){
			index=total-1;
		}else{
			index=arguments[0];	
		}
	}else{
		index=index%total;	
	}
	console.info(index)
	$('#show_img li').css('display','none');
	$('#show_small_img li').attr('class','unselected');	
	$('#show_img li').eq(index).css('display','block');
	$('#show_small_img li').eq(index).attr('class','selected');//当前显示小图片的边框颜色
}// JavaScript Document