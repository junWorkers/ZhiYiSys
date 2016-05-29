package com.zhiyi.web.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Goods;
import com.zhiyi.service.GoodsService;
import com.zhiyi.util.UploadUtil;
@Controller("goodsAction")
public class GoodsAction implements ModelDriven<Goods>{
	@Autowired
	private GoodsService goodsService;
	private JsonObject<Goods> jsonObject;
	private UploadUtil uploadUtil;
	private Goods goods;
	private  String page;
	private String rows;

	public UploadUtil getUploadUtil() {
		return uploadUtil;
	}

	public void setUploadUtil(UploadUtil uploadUtil) {
		this.uploadUtil = uploadUtil;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
	}

	public JsonObject<Goods> getJsonObject() {
		return jsonObject;
	}

	//分页查询商城商品信息
	public String getPageGoodsInfo(){
		jsonObject =goodsService.getPageGoodsInfo(page, rows);
		return "success";
	}

	//根据id查询对应的商城商品信息
	public String findGoodsByGid(){
		jsonObject=goodsService.findGoodsByGid(goods.getGid());
		return "success";
	}

	//添加商城商品信息
	public String addgoods(){
		goods.setGpath(uploadUtil.upload());
		System.out.println(goods);
		jsonObject=goodsService.addGoodsInfo(goods);
		return "success";
	}

	//删除商城序列信息
	public String delgoods(){
		String gids=ServletActionContext.getRequest().getParameter("gids");
		jsonObject=goodsService.delGoodsInfo(gids);
		return "success";
	}

	//修改
	public String updateGoods(){
		goods.setGpath(uploadUtil.upload());
		jsonObject=goodsService.updateGoodsInfo(goods);
		return "success";
	}
	
	
	//分页查询商品详细信息
	public String getPageGoodsInfoInfo(){
		jsonObject =goodsService.getPageGoodsInfoInfo(page, rows);
		return "success";
	}
	
	//查询所有商品名称
	public String getAllGoods(){
		jsonObject=goodsService.getAllGoods();
		return "success";
	}
	
	@Override
	public Goods getModel() {
		this.goods=new Goods();
		return goods;
	}


}
