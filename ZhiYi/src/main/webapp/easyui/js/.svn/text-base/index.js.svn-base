$(function(){
		$('#index_content').tabs('add',{
			title:'指艺智能手机',
			selected:true,
			closable:false,
			href:"zhiyi.html"
			
		});
		
		$('#menu-tree').tree({
			onClick:function(node){
				var obj=$('#index_content');
				if(node.id=="admin_manager"){  //说明是管理员信息管理
					//
					if(obj.tabs("exists","管理员信息管理")){  //
						obj.tabs("select","管理员信息管理");
					}else{
						obj.tabs('add',{
							title:"管理员信息管理",
							closable:true,
							fit:true,
							href:'admin.html'
						});
					}
				}else if(node.id=="users_manager"){
					if(obj.tabs("exists","会员信息管理")){  //
						obj.tabs("select","会员信息管理");
					}else{
						obj.tabs('add',{
							title:"会员信息管理",
							closable:true,
							fit:true,
							href:'users.html'
						});
					}
				}else if(node.id=="gtype_manager"){
					if(obj.tabs("exists","商城序列管理")){  //
						obj.tabs("select","商城序列管理");
					}else{
						obj.tabs('add',{
							title:"商城序列管理",
							closable:true,
							fit:true,
							href:'gtype.html'
						});
					}
				}else if(node.id=="goods_manager"){
					if(obj.tabs("exists","商品信息管理")){  //
						obj.tabs("select","商品信息管理");
					}else{
						obj.tabs('add',{
							title:"商品信息管理",
							closable:true,
							fit:true,
							href:'goods.html'
						});
					}
				}else if(node.id=="goodsInfo_manager"){
					if(obj.tabs("exists","商品详细信息管理")){  //
						obj.tabs("select","商品详细信息管理");
					}else{
						obj.tabs('add',{
							title:"商品详细信息管理",
							closable:true,
							fit:true,
							href:'goodsInfo.html'
						});
					}
				}else if(node.id=="goodsPar_manager"){
					if(obj.tabs("exists","商品参数管理")){  //
						obj.tabs("select","商品参数管理");
					}else{
						obj.tabs('add',{
							title:"商品参数管理",
							closable:true,
							fit:true,
							href:'goodsPar.html'
						});
					}
				}else if(node.id=="ad_manager"){
					if(obj.tabs("exists","广告位管理")){  //
						obj.tabs("select","广告位管理");
					}else{
						obj.tabs('add',{
							title:"广告位管理",
							closable:true,
							fit:true,
							href:'ad.html'
						});
					}
				}else if(node.id=="ordershow_manager"){
					if(obj.tabs("exists","销售信息浏览")){  //
						obj.tabs("select","销售信息浏览");
					}else{
						obj.tabs('add',{
							title:"销售信息浏览",
							closable:true,
							fit:true,
							href:'ordershow.html'
						});
					}
				}else if(node.id=="admessage_manager"){
					if(obj.tabs("exists","广告信息管理")){  //
						obj.tabs("select","广告信息管理");
					}else{
						obj.tabs('add',{
							title:"广告信息管理",
							closable:true,
							fit:true,
							href:'admessage.html'
						});
					}
				}else if(node.id=="update_adminpwd"){
					if(obj.tabs("exists","修改密码")){  //
						obj.tabs("select","修改密码");
					}else{
						obj.tabs('add',{
							title:"修改密码",
							closable:true,
							fit:true,
							href:'pwd_update.html'
						});
					}
				}
			}
		});
});
