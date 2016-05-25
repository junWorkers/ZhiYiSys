

	
 // JavaScript Document
  //显示指艺套餐选择
    function show(){
    	$('#detail').css('display','block');
    }
    function close1(){
    	$('#detail').css('display','none');
    }
    
  
    
    $(function(){
        	showShoppingCart();
    });
    
    
    
    function showShoppingCart(){
    	var info='';
		var goods=window.localStorage.getItem('goods');
		goods=JSON.parse(goods);
		if(goods!=null){
				var objs=goods.good;
				for(var i=0;i<objs.length;i++){
						info+="<tr id='"+i+"'><td><img src='"+objs[i].src+"' style='height:114px;'></td>" +
								"<td class='productname'><a target='_blank'>"+objs[i].name+"  "+objs[i].color+"</a></td>" +
								"<td style='color:#666;'>"+objs[i].price+"</td>" +
								"<td><div class='btn-cnts'><a href='javascript:void(0);' id='cut' style='padding:6px' " +
								"class='table-cut' onclick='reNumber("+i+")'>-" +
								"</a>" +
								"<input id='goods-cnt' class='num cart-cnt' maxlength='2'" +
								"readonly value='"+objs[i].num+"' title='请输入购买量' type='text'>" +
								"<a href='javascript:void(0);' class='table-add' onclick='addNumber("+i+")'>+</a></div></td>" +
								"<td class='sum'><p style='color:red;'><span>￥<a style='color:red;'>"+(objs[i].price*objs[i].num)+"</a></span></p></td>" +
								"<td><a class='cart-close close' onClick='delGoodFromCart("+i+")' title='删除'>&times;</a></td></tr>"
				}
				$("#tbody").html($(info));
				$("#numbers").html(objs.length);
		}
			var xiaoji=0;    //商品总金额
			var price=0;    //单件商品的价格
			var num=0;    //商品的数量
			//访问表格中的所有行信息
			var myTabletr=document.getElementById('tbody').getElementsByTagName('tr');
			for(var i=0;i<myTabletr.length;i++){
				price=myTabletr[i].getElementsByTagName('td')[2].innerHTML;
				num=myTabletr[i].getElementsByTagName('td')[3].getElementsByTagName('input')[0].value;
				xiaoji+=price*num;
			}
			document.getElementById('allprice').innerHTML=xiaoji;
			
    }
    
    
    	
    var gprice=JSON.parse(window.localStorage.getItem('phoneprice'));
    /* 更新购物车商品数量 */
    function addNumber(d) {
       
    	var goods=window.localStorage.getItem('goods');
    	goods=JSON.parse(goods);
    	
    	var objs=goods.good;

		for(var i=0;i<objs.length;i++){
			if(i==d){
				objs[i].num+=1;
				break;	
			}	
		}
		goods=JSON.stringify(goods);
		window.localStorage.setItem('goods',goods);
		var goods=window.localStorage.getItem('goods');
    	goods=JSON.parse(goods);
		showShoppingCart();
    }
    
    function reNumber(d){
    	var goods=window.localStorage.getItem('goods');
    	goods=JSON.parse(goods);
    	
    	var objs=goods.good;

		for(var i=0;i<objs.length;i++){
			if(i==d){
				if(objs[i].num>1){
					objs[i].num-=1;
				}else{
					objs[i].num=1;
				}
			}	
		}
		goods=JSON.stringify(goods);
		window.localStorage.setItem('goods',goods);
		var goods=window.localStorage.getItem('goods');
    	goods=JSON.parse(goods);
		showShoppingCart();
    }
    
    function delGoodFromCart(d){
    	var goods=window.localStorage.getItem('goods');

    	goods=JSON.parse(goods);
    	if(goods!=null){
    		var objs=goods.good;
    		for(var i=0;i<objs.length;i++){
    			if(i==d){
	    			objs.splice(i,1);
	    			goods=JSON.stringify(goods);
	    			window.localStorage.setItem('goods',goods);
	    			showShoppingCart();
	    			return;
    			}
    		}	
    	}
    }
    


        





    



