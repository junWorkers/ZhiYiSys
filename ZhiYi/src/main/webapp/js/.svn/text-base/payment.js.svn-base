$(function(){
	
	//demo04
	$("#city_4").citySelect({
    	
	}); 
	
});

function checkConsignee(){
	var consignee=document.getElementById('consignee').value;
	if(consignee==''){
		document.getElementById('cons').innerHTML='&nbsp;&nbsp;错误：该项是必填项！';
		return false;
	}else{
		document.getElementById('cons').innerHTML='';
		return true;
	}	
}

function checkAddress(){
	var address=document.getElementById('address').value;
	if(address==''){
		document.getElementById('addrs').innerHTML='&nbsp;&nbsp;错误：该项是必填项！';
		return false;
	}else{
		document.getElementById('addrs').innerHTML='';
		return true;
	}	
}

function getAddress(){
	var prov=$(".prov").val();
	var citys=$(".citys").val();
	var dist=$(".dist").val();
	if(dist==null){
		$("#shenshiqu").html(prov+"    "+citys);
		if(citys==null){
			$("#shenshiqu").html(prov);
		}
	}else{
		$("#shenshiqu").html(prov+"    "+citys+"    "+dist);
	}
}

function checkZipcode(){
	var zipcode=document.getElementById('zipcode').value;
	var reg1=/^[1-9][0-9]{5}$/;
	if(zipcode==''){
		document.getElementById('zip').innerHTML='&nbsp;&nbsp;错误：该项是必填项！';
		return false;
	}else if(!reg1.test(zipcode)){
		document.getElementById('zip').innerHTML='&nbsp;&nbsp;邮编格式不正确！';
		return false;	
	}else{
		document.getElementById('zip').innerHTML='';
		return true;
	}	
}


function checkMobile(){
	var phone = document.getElementById("phone").value;
    var reg3 = /^1[3-8]\d{9}$/.test(phone);//带区号的固定电话
    if(phone!=""){
    	if (!reg3) { 
        	document.getElementById('mob').innerHTML='&nbsp;&nbsp;手机号码输入有误！';
            return false;
        }else{
        	document.getElementById('mob').innerHTML='';
        	return true;
        	
        }
    }else{
    	document.getElementById('mob').innerHTML='&nbsp;&nbsp;错误：该项是必填项！';
        return false;
    }
    
}



$(function(){
	var info='';
	var goods=window.localStorage.getItem('goods');
	goods=JSON.parse(goods);
	if(goods!=null){
			var objs=goods.good;
			for(var i=0;i<objs.length;i++){
					info+="<tr><td><div class='pic'><img src='"+objs[i].src+"' style='height:80px;'></div>" +
							"<p class='title'><a href='' target='_blank'>"+objs[i].name+"  "+objs[i].color+"</a></p></td>" +
							"<td>"+objs[i].price+"</td>" +
							"<td id='num'>"+objs[i].num+"</td>" +
							"<td><span class='subTotal'>"+(objs[i].price*objs[i].num)+"</span></td></tr>";
			}
			$("#tbody").html($(info));
	}
	var total=0;    //商品总金额
	var price=0;    //单件商品的价格
	var num=0;    //商品的数量
	//访问表格中的所有行信息
	var myTabletr=document.getElementById('tbody').getElementsByTagName('tr');
	for(var i=0;i<myTabletr.length;i++){
		price=myTabletr[i].getElementsByTagName('td')[1].innerHTML;	
		num=myTabletr[i].getElementsByTagName('td')[2].innerHTML;	
		total+=price*num;
	}
	document.getElementById('productAmount').innerHTML='￥'+total;
});


function addAddress(){
	var usid=$("#usid").text();
	var rname=$("#consignee").val();  //收件人
	var prov=$(".prov").val();
	var citys=$(".citys").val();
	var dist=$(".dist").val();
	
	var address=prov+citys+dist;
	
	var xaddress=$("#address").val();
	console.info(xaddress);
	var zip=$("#zipcode").val();	//邮编
	var phone=$("#phone").val();	//手机
	var rtime=$("#time option:selected").text();	//配送时间
	
	
	if(checkConsignee()==true && checkAddress()==true && checkZipcode()==true && checkMobile()==true){
		$.post("receiveServlet?t="+new Date(),{op:"addAddressInfo",usid:usid,rname:rname,address:address,xaddress:xaddress,zip:zip,phone:phone,rtime:rtime},function(data){
			data=parseInt($.trim(data));
			if(data==1){
				console.info("地址添加成功");
				window.location.href="front/payment.jsp";
			}else{
				console.info("地址添加失败");
			}
		});
	}
}

function others(){
		var newAddress=document.getElementById('newAddress');
		if(newAddress.style.display=="none"){
			newAddress.style.display="";
		}else{
			newAddress.style.display="none";
		}
}


$(function(){
	$.ajax({
		type:"POST",
		url:"receiveServlet?d="+new Date(),
		data:{op:'findAddressInfo'},
		dataType:'JSON',
	
		success : function(data) {
			var str='';
			for ( var i = 0; i < data.rows.length; i++) {
				
				var item = data.rows[i];
				str+="<div class='allAddress'><div regionid='126' class='subHd' flag='535017' id='li_535017'>" +
						"<div class='subHd-div checked'></div><p class='fl'></p><div class='name'>"+item.rname+"</div>" +
						"<div><span class='myAddress'>"+item.address+"</span>"+item.xaddress+"<span class='yb'></span></div><div class='tel'>电话:"+item.phone+"&nbsp;<a style='display:none;'  id='rid'>"+item.rid+"</a></div>" +
						"<p></p><div class='allAddress-btn'><span flag='535017' class='remove' onClick='deletes()'>删除</span></div></div></div>";
				document.getElementById("addr").innerHTML=str;
			}

		}
	});
	
});

function deletes(d){
	var rid=$("#rid").text();
	console.info(rid);
	var r=confirm("您确定删除此地址吗？");
	if(r==true){
		$.post("receiveServlet",{op:"delAddressInfo",rid:rid},function(data){
			if(data==1){   //删除成功
				console.info("删除成功");
				window.location.href="front/payment.jsp";
			}else{
				console.info("删除失败");
			}
		});
	}else{
		window.location.href="front/payment.jsp";
	}
		
}

function tijiao(){
	var usid=$("#usid").text(); 
	var gpid=window.localStorage.getItem('gpid');
	gpid=parseInt(gpid);
	var num=$("#num").text();
	var color=window.localStorage.getItem('color');
	
	$.post("orderServlet?t="+new Date(),{op:"addOrders",usid:usid,gpid:gpid,num:num,color:color},function(data){
		data=parseInt($.trim(data));
		if(data==1){
			window.localStorage.clear();
			console.info("订单添加成功");
		}else{
			console.info("订单添加失败");
		}
	});
	
	var osid=$("#osid").text();
	var onum=parseInt(num);
	
	var price=parseInt(window.localStorage.getItem('phoneprice'));
	var money=price*onum;
	
	if(osid!=null){
		$.post("orderServlet?t="+new Date(),{op:"addOrderInfo",osid:osid,gpid:gpid,onum:onum,price:price,money:money},function(datas){
			datas=parseInt($.trim(datas));
			if(datas==1){
				window.location.href="front/person.jsp";
				window.localStorage.clear();
				console.info("订单添加成功");
			}else{
				console.info("订单添加失败");
			}
		});
	}
}







