// JavaScript Document
var index=0;   //当前索引值
var total=0;
$(function(){
	total=$('#show_img1 li').length;
	$('#show_small_img1 li img').bind({
		click:function(){
		showPic($(this).parent().parent().index());	
		}
	});
});
function showPic(){
	
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
	$('#show_img1 li').css('display','none');
	$('#show_small_img1 li').attr('class','unselected');	
	$('#show_img1 li').eq(index).css('display','block');
	$('#show_small_img1 li').eq(index).attr('class','selected');//当前显示小图片的边框颜色
}

// JavaScript Document