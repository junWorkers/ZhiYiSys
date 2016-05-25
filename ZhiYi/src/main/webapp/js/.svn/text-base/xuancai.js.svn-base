// JavaScript Document
function check1(){
	document.getElementById("fa-click").style.display="block";
}

function check2(){
	document.getElementById("fa-click").style.display="none";
}

function mouseover(){
	document.getElementById("video").play();
}



function gundong(){
  add1();
  add2();
  add3();
 }
   
function add1(){
	var num1 = $("#add1").html();
	if(num1<2.2){
		num1=num1*10;
		num1=(num1+1)/10;
		$("#add1").html(num1);
		var id1=setTimeout('add1()',60);
	}else if(num1>3.5){
		window.clearTimeout(id1);	
	}
}

function add2(){
	var num2 = $("#add2").html();
	if(num2<3.5){
		num2=num2*10;
		num2=(num2+1)/10;
		$("#add2").html(num2);
		var id2=setTimeout('add2()',30);
	}else if(num2>3.5){
		window.clearTimeout(id2);	
	}
}

function add3(){
	var num3 = $("#add3").html();
	if(num3<2.2){
		num3=num3*10;
		num3=(num3+1)/10;
		$("#add3").html(num3);
		var id3=setTimeout('add3()',80);
	}else if(num3>3.5){
		window.clearTimeout(id3);	
	}
}

function yidong(){
	var obj = document.getElementById("p1");
	var x = obj.offsetLeft;
	var y = obj.offsetTop;
	console.info(x);
		console.info(y);
	if(x<5 && y<7891){
		x=x+1;
		y=y+1;
		obj.style.left=x;
		obj.style.top=y;
	}
	var time1=setTimeout('yidong()',1000);
}