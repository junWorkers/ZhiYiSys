package com.zhiyi.web.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.GoodsPar;
import com.zhiyi.service.GoodsService;
import com.zhiyi.util.UploadUtil;
@Controller("goodsParAction")
public class GoodsParAction implements ModelDriven<GoodsPar>{
	@Autowired
	private GoodsService goodsService;
	private JsonObject<GoodsPar> jsonObject;
	private UploadUtil uploadUtil;
	private GoodsPar goodsPar;
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

	public JsonObject<GoodsPar> getJsonObject() {
		return jsonObject;
	}
	
	//根据id查询对应的商品参数信息
	public String findGoodsParByGpid(){
		jsonObject=goodsService.findGoodsParByGpid(goodsPar.getGpid());
		return "success";
	}
	
	//分页查询商品参数信息
	public String getPageGoodsParInfo(){
		jsonObject =goodsService.getPageGoodsParInfo(page, rows);
		return "success";
	}
	
	//添加商品参数信息
	public String addgoodsPar(){
		goodsPar.setGppath(uploadUtil.upload());
		jsonObject=goodsService.addgoodsParInfo(goodsPar);
		return "success";
	}
	
	
	//删除商品参数信息
	public String delgoodsParInfo(){
		String gpids=ServletActionContext.getRequest().getParameter("gpids");
		jsonObject=goodsService.delgoodsParInfo(gpids);
		return "success";
	}
	
	
	//修改商品参数信息
	public String updateGoodsParInfo(){
		System.out.println(uploadUtil);
		goodsPar.setGppath(uploadUtil.upload());
		jsonObject=goodsService.updateGoodsParInfo(goodsPar);
		return "success";
	}
	
	@Override
	public GoodsPar getModel() {
		this.goodsPar=new GoodsPar();
		return goodsPar;
	}


}
