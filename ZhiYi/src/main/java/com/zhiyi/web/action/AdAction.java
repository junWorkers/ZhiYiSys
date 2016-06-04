package com.zhiyi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Ad;
import com.zhiyi.service.AdService;
import com.zhiyi.util.UploadUtil;

@Controller("adAction")
public class AdAction implements SessionAware,ModelDriven<Ad> {
	@Autowired
	private AdService adService;
	private Ad ad;
	private JsonObject<Ad> jsonObject;
	private UploadUtil uploadUtil;
	private List<Ad> pics;
	private Map<String, Object> session;
	private  String page;
	private String rows;
	
	public UploadUtil getUploadUtil() {
		return uploadUtil;
	}

	public void setUploadUtil(UploadUtil uploadUtil) {
		this.uploadUtil = uploadUtil;
	}
	public List<Ad> getPics() {
		return pics;
	}
	public void setPics(List<Ad> pics) {
		this.pics=pics;
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
	public JsonObject<Ad> getJsonObject() {
		return jsonObject;
	}
	public String findpic(){
		pics=adService.shoufindpic();
		System.out.println(pics);
		session.put("pics",pics);
		return "findpic";
	}
	//分页查询管理员信息
	public String getPageAdInfo(){
		jsonObject = adService.getPageAdInfo(page, rows);
		return "success";
	}
	//分页查询管理员信息
	public String getAllAdMessage(){
		jsonObject = adService.getPageAll(page, rows);
		return "success";
	}
	
	public String getAllAd(){
		jsonObject = adService.getAllAd();
		return "success";
	}
	
	//删除信息广告位
	public String delAd(){
		String aids=ServletActionContext.getRequest().getParameter("aids");
		jsonObject=adService.delAd(aids);
		return "success";
	}
	//添加信息
	public String addAd(){
		jsonObject=adService.addAd(ad);
		return "success";
	}
	//修改信息
	public String updateAd(){
		jsonObject=adService.updateAd(ad);
		return "success";
	}
	
	//删除信息
	public String delAdmessage(){
		String aids=ServletActionContext.getRequest().getParameter("amids");
		jsonObject=adService.delAdmessage(aids);
		return "success";
	}
	
	public String addAdmessageInfo(){
		ad.setMpath(uploadUtil.upload());
		jsonObject=adService.addAdmessageInfo(ad);
		return "success";
	}
	
	public String findadmessageByAmid(){
		jsonObject=adService.findadmessageByAmid(ad.getAmid());
		return "success";
	}
	
	public String updateAdmessageInfo(){
		ad.setMpath(uploadUtil.upload());
		jsonObject=adService.updateAdmessageInfo(ad);
		return "success";
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
	@Override
	public Ad getModel() {
		this.ad=new Ad();
		return ad;
	}
}