package com.zhiyi.web.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.GoodsInfo;
import com.zhiyi.service.GoodsService;
import com.zhiyi.util.UploadUtil;
@Controller("goodsInfoAction")
public class GoodsInfoAction implements ModelDriven<GoodsInfo>{
	@Autowired
	private GoodsService goodsService;
	private JsonObject<GoodsInfo> jsonObject;
	private UploadUtil uploadUtil;
	private GoodsInfo goodsInfo;
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

	public JsonObject<GoodsInfo> getJsonObject() {
		return jsonObject;
	}
	
	//根据id查询对应的商品详细信息
	public String findGoodsInfoByIid(){
		jsonObject=goodsService.findGoodsInfoByIid(goodsInfo.getIid());
		return "success";
	}
	
	//分页查询商品详细信息
	public String getPageGoodsInfoInfo(){
		jsonObject =goodsService.getPageGoodsInfoInfo(page, rows);
		return "success";
	}
	
	//添加商品详细信息
	public String addgoodsInfo(){
		goodsInfo.setGipath(uploadUtil.upload());
		jsonObject=goodsService.addGoodsInfoInfo(goodsInfo);
		return "success";
	}
	
	//删除商品详细信息
	public String delgoodsInfo(){
		String iids=ServletActionContext.getRequest().getParameter("iids");
		jsonObject=goodsService.delgoodsInfoInfo(iids);
		return "success";
	}
	
	//修改商品详细信息
	public String updateGoodsInfo(){
		goodsInfo.setGipath(uploadUtil.upload());
		jsonObject=goodsService.updateGoodsInfoInfo(goodsInfo);
		return "success";
	}
	
	@Override
	public GoodsInfo getModel() {
		this.goodsInfo=new GoodsInfo();
		return goodsInfo;
	}


}
