// JavaScript Document
function change(num){
	var a=document.getElementById('policy07').getElementsByTagName('ul')[0].getElementsByTagName('li');
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('policy08'+i)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className=''
			str.style.display='none';
		}
	}
}

function change1(num){
	var a=document.getElementsByClassName('m')
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('policy0'+i)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='img_active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='img'
			str.style.display='none';
		}
	}
}

function change2(num){
	var a=document.getElementsByClassName('m')
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('policy00'+i)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='img_active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='img'
			str.style.display='none';
		}
	}
}

function change3(num){
	var a=document.getElementsByClassName('m')
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('policy000'+i)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='img_active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='img'
			str.style.display='none';
		}
	}
}

function change4(num){
	var a=document.getElementById('policy0001').getElementsByTagName('ul')[0].getElementsByTagName('li');
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('faq00'+i)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className=''
			str.style.display='none';
		}
	}
}

function change5(num){
	var a=document.getElementById('policy0002').getElementsByTagName('ul')[0].getElementsByTagName('li');
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('faq02'+i)
		console.info(str)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className=''
			str.style.display='none';
		}
	}
}

function change6(num){
	var a=document.getElementById('policy0003').getElementsByTagName('ul')[0].getElementsByTagName('li');
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('faq03'+i)
		console.info(str)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className=''
			str.style.display='none';
		}
	}
}

function change7(num){
	var a=document.getElementById('policy0005').getElementsByTagName('ul')[0].getElementsByTagName('li');
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('faq060'+i)
		console.info(str)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className=''
			str.style.display='none';
		}
	}
}

function change8(num){
	var a=document.getElementById('tab-nav').getElementsByTagName('li');
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('Zfaq'+i)
		console.info(str)
		if(i==num){
			var b=a[i-1];
			b.className='on'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.className=''
			str.style.display='none';
		}
	}
}
function change9(num){
	var a=document.getElementById('s-list-nest1').getElementsByTagName('li');
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('z9faq05'+i)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className=''
			str.style.display='none';
		}
	}
}

function change10(num){
	var a=document.getElementById('s-list-nest2').getElementsByTagName('li');
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('faq05'+i)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className=''
			str.style.display='none';
		}
	}
}

function change11(num){
	var a=document.getElementsByClassName('m')
	console.info(a);
	console.info(num);
	console.info(a.length);
	for(var i=1;i<=a.length;i++){
		var str=document.getElementById('cons'+i)
		if(i==num){
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='img_active'
			str.style.display='block';
		}else{
			var b=a[i-1];
			b.getElementsByTagName('a')[0].className='img'
			str.style.display='none';
		}
	}
}

$(function(){
	var usidss=$("#usidss").val(); 
	$.ajax({
		type:"POST",
		url:"order_showOrderInfo.action",
		dataType:'JSON',
		data:{usid:usidss},
		success : function(data) {
			var strs='';
			for ( var i = 0; i < data.length; i++) {
				var item = data[i];
				strs+="<tr><td>"+item.osid+"</td><td><div>"+item.rname+"</div></td><td><div>"+item.gname+"</div></td>" +
						"<td><div>"+item.money+"</div></td><td><div>"+(item.xdate).substring(0,11)+"</div></td><td><div><a onClick='drop("+i+")'>删除</a></div></td></tr>";
			}
			document.getElementById("tbody").innerHTML=strs;
		}
	});
});

function drop(d){
	var tr=$("#tbody tr");
	for(var i=0;i<tr.length;i++){
		if(i==d){
			var osid=document.getElementById('tbody').getElementsByTagName('tr')[i].getElementsByTagName('td')[0].innerHTML;
			var s=confirm("您确定删除此订单吗？");
			if(s==true){
				$.post("order_delOrders",{osid:osid},function(data){
					if(data==1){   //删除成功
						console.info("删除成功");
						window.location.href="front/person.jsp";
					}else{
						console.info("删除失败");
					}
				},"json");
				
				$.post("orderServlet",{op:"delOrderInfo",osid:osid},function(data){
					if(data==1){   //删除成功
						console.info("删除成功");
						
					}else{
						console.info("删除失败");
					}
				});
			}
		}
	}	
}



