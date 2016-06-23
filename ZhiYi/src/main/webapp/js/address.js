$(function(){
	
	//demo04
	$("#city_4").citySelect({
    	
	}); 
	
	
	$.ajax({
		type:"POST",
		url:"receiveServlet?d="+new Date(),
		data:{op:'findAddressInfo'},
		dataType:'JSON',
		success : function(data) {
			var str='';
			
			for ( var i = 0; i < data.rows.length; i++) {
				
				var item = data.rows[i];
				str+="<tr><td>"+item.rname+"</td><td>"+(item.address+item.xaddress)+"</td>" +
						"<td>"+item.phone+"</td>" +
								"<td><a flag='535017' class='remove' onClick='dels("+i+")'>删除</a></td>" +
										"<td style='display:none;' id='rid'>"+item.rid+"</td</tr>";
				document.getElementById("tbodys").innerHTML=str;
			}

		}
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


function newAddr(){
	var newAddress=document.getElementById('newAddress');
	if(newAddress.style.display=="none"){
		newAddress.style.display="";
	}else{
		newAddress.style.display="none";
	}
}


function addAddress(){
	var usid=$("#usid").text();
	console.info(usid);
	var rname=$("#consignee").val();  //收件人
	var prov=$(".prov").val();
	var citys=$(".citys").val();
	var dist=$(".dist").val();
	
	var address=prov+citys+dist;
	
	var xaddress=$("#address").val();

	var zip=$("#zipcode").val();	//邮编
	var phone=$("#phone").val();	//手机
	var rtime=$("#time option:selected").text();	//配送时间

	if(checkConsignee()==true && checkAddress()==true && checkZipcode()==true && checkMobile()==true){
		$.post("receiveServlet?t="+new Date(),{op:"addAddressInfo",usid:usid,rname:rname,address:address,xaddress:xaddress,zip:zip,phone:phone,rtime:rtime},function(data){
			data=parseInt($.trim(data));
			if(data==1){
				console.info("地址添加成功");
				window.location.href="front/person.jsp#cons2";
			}else{
				console.info("地址添加失败");
			}
		});
	}
}




function dels(d){
	var trs=$("#tbodys tr");
	for(var i=0;i<trs.length;i++){
		if(i==d){
			var rid=document.getElementById('tbodys').getElementsByTagName('tr')[i].getElementsByTagName('td')[4].innerHTML;
			var c=confirm("您确定删除此地址吗？");
			if(c==true){
				$.post("receiveServlet",{op:"delAddressInfo",rid:rid},function(data){
					if(data==1){   //删除成功
						console.info("删除成功");
						window.location.href="front/person.jsp";
					}else{
						console.info("删除失败");
					}
				});
			}else{
				window.location.href="front/person.jsp";
			}
		}
	}		
}








