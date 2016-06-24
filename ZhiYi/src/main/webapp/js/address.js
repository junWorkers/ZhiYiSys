$(function(){
	
	//demo04
	$("#city_4").citySelect({
    	
	}); 
	
	var zz=$("#usidss").val();
	$.ajax({
		type:"POST",
		url:"receive_findAddressInfo.action",
		dataType:'JSON',
		data:{usid:zz},
		success : function(data) {
			var str='';
			
			for ( var i = 0; i < data.length; i++) {
				
				var item = data[i];
				str+="<tr><td>"+item.rname+"</td><td>"+(item.address+item.xaddress)+"</td>" +
						"<td>"+item.phone+"</td>" +
								"<td><a flag='535017' class='remove' onClick='dels("+item.rid+")'>删除</a></td>" +
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







function dels(rid){
	alert(rid)
	var r=confirm("您确定删除此地址吗？");
	if(r==true){
		location.href="receive_delAddressInfos?rid="+rid;
		/*$.post("",{rid:rid}
			
		);*/
	}else{
		window.location.href="front/payment.jsp";
	}
}








