package com.zhiyi.web.action;

import java.util.List;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Exstore;
import com.zhiyi.service.ExstoreService;
@Controller("exstoreAction")
public class ExstoreAction implements ModelDriven<Exstore>,SessionAware{
	@Autowired
	private ExstoreService exstoreService;
	private JsonObject<Exstore> jsonObject;
	private Exstore exstore;
	private List<Exstore> store;
	private  String page;
	private String rows;
	private Map<String, Object> session;

	public List<Exstore> getStore() {
		return store;
	}

	public void setStore(List<Exstore> store) {
		this.store = store;
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

	public JsonObject<Exstore> getJsonObject() {
		return jsonObject;
	}
	
	//分页查询体验店信息
	public String getPageExstoreInfo(){
		jsonObject = exstoreService.getPageExstoreInfo(page, rows);
		return "success";
	}

	//添加体验店信息
	public String addExstoreInfo(){
		jsonObject=exstoreService.addExstoreInfo(exstore);
		return "success";
	}

	//删除体验店信息
	public String delExstoreInfo(){
		String eids=ServletActionContext.getRequest().getParameter("eids");
		jsonObject=exstoreService.delExstoreInfo(eids);
		return "success";
	}
	
	//修改体验店信息
	public String updateExstoreInfo(){
		jsonObject=exstoreService.updateExstoreInfo(exstore);
		return "success";
	}
	
	
	public String chaxunInfo(){
		store=exstoreService.findStore();
		return "chaxunInfo";
	}
	
	public String chaInfo(){
		exstore=exstoreService.findsoreByid(exstore.getEid());
		session.put("tititi", exstore);
		return "chaInfo";
	}
	@Override
	public Exstore getModel() {
		this.exstore=new Exstore();
		return exstore;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
}
