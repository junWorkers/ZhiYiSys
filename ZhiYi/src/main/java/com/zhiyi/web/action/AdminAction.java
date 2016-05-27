package com.zhiyi.web.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Admin;
import com.zhiyi.service.AdminService;
@Controller("adminAction")
public class AdminAction implements ModelDriven<Admin>, SessionAware{
	@Autowired
	private AdminService adminService;
	private JsonObject<Admin> jsonObject;
	private Admin admin;
	private  String page;
	private String rows;
	private Map<String, Object> session;

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

	public JsonObject<Admin> getJsonObject() {
		return jsonObject;
	}
	
	//登录的验证码验证
	public String checkzccode(){
		String code=ServletActionContext.getRequest().getParameter("code");
		String codes =(String) session.get("rand");
		jsonObject = new JsonObject<Admin>();
		jsonObject.setResult(codes.equals(code.trim()) ? 1 : 0);
		return "success";
	}
	
	//管理员登录
	public String managerLogin(){
		Admin ad = adminService.login(admin);
		jsonObject = new JsonObject<Admin>();
		if (ad != null && !"".equals(ad)) {
			jsonObject.setResult(1);
			session.put("loginManager", ad);
		}else{
			jsonObject.setResult(0);
		}
		return "success";
	}

	//分页查询管理员信息
	public String getPageAdminInfo(){
		jsonObject = adminService.getPageAdminInfo(page, rows);
		return "success";
	}

	//添加管理员信息
	public String addAdminInfo(){
		jsonObject=adminService.addAdmin(admin);
		return "success";
	}

	//删除管理员信息
	public String delAdminInfo(){
		String aids=ServletActionContext.getRequest().getParameter("aids");
		jsonObject=adminService.delAdminInfo(aids);
		return "success";
	}
	
	//修改管理员信息
	public String updateAdminInfo(){
		jsonObject=adminService.updateAdminInfo(admin);
		return "success";
	}
	
	@Override
	public Admin getModel() {
		this.admin=new Admin();
		return admin;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
