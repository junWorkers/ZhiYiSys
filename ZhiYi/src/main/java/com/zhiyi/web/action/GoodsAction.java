package com.zhiyi.web.action;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Goods;
import com.zhiyi.entity.GoodsPar;
import com.zhiyi.service.GoodsService;
import com.zhiyi.util.UploadUtil;
@Controller("goodsAction")
public class GoodsAction implements ModelDriven<Goods>,SessionAware{
	@Autowired
	private GoodsService goodsService;
	private JsonObject<Goods> jsonObject;
	private UploadUtil uploadUtil;
	private Goods goods;
	private Goods fgoods;
	
	public Goods getFgoods() {
		return fgoods;
	}

	public void setFgoods(Goods fgoods) {
		this.fgoods = fgoods;
	}

	private List<Goods> youceGoods;
	private  String page;
	private String rows;
	private Map<String, Object> session;

	public List<Goods> getYouceGoods() {
		return youceGoods;
	}

	public void setYouceGoods(List<Goods> youceGoods) {
		this.youceGoods = youceGoods;
	}

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
		jsonObject=goodsService.addGoodsInfo(goods);
		return "success";
	}

	//删除商城商品信息
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
	
	//查询所有商品名称
	public String getAllGoods(){
		jsonObject=goodsService.getAllGoods();
		return "success";
	}
	
	public String findContent(){
		youceGoods=goodsService.findContent();
		session.put("Allgoods", youceGoods);
		return "findcontent";
	}
	
	public String sgbid(){
		int gid=goods.getGid();
		Goods goodContents=goodsService.findContentsss(gid);
		session.put("goodsname", goodContents);
		List<Goods> goods=goodsService.showGoodsById(gid);
		session.put("goodsa",goods);
		return "sgbid";
	}
	public String findjuti(){
		List<GoodsPar> goodspar=goodsService.findGoodsPars(goods.getGid());
		System.out.println(goodspar);
		session.put("goodParssss", goodspar);
		return "findjuti";
	}
	
	public String showGoodsGpid(){
		int gid=Integer.parseInt(ServletActionContext.getRequest().getParameter("gid"));
		String color=ServletActionContext.getRequest().getParameter("color");
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("gid",gid);
		map.put("color",color);
		fgoods=goodsService.findContent5(map);
		session.put("gpid",fgoods);
		System.out.println("fgoods"+fgoods);
		return "showGoodsGpid";
	}
	@Override
	public Goods getModel() {
		this.goods=new Goods();
		return goods;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
}
