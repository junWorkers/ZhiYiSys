package com.zhiyi.web.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Users;
import com.zhiyi.service.UsersService;
@Controller("usersAction")
public class UsersAction implements ModelDriven<Users>{
	@Autowired
	private UsersService usersService;
	private JsonObject<Users> jsonObject;
	private Users users;
	private  String page;
	private String rows;

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
	public JsonObject<Users> getJsonObject() {
		return jsonObject;
	}
	

	
//	//登录的验证码验证
//	public String checkzccode(){
//		String code=ServletActionContext.getRequest().getParameter("code");
//		jsonObject.setResult(adminService.checkzccode(code));
//		return "success";
//	}
//	
//	//管理员登录
//	public String managerLogin(){
//		jsonObject.setResult(adminService.login(admin));
//		return "success";
//	}

	//分页查询会员信息
	
	public String getPageUsersInfo(){
		jsonObject = usersService.getPageUsersInfo(page, rows);
		return "success";
	}

	//添加会员信息
	public String addUsersInfo(){
		jsonObject=usersService.addUsers(users);
		return "success";
	}
//
	//删除管理员信息
	public String delUsersInfo(){
		String aids=ServletActionContext.getRequest().getParameter("usids");
		jsonObject=usersService.delUsersInfo(aids);
		return "success";
	}
	public String findusersByUsid(){
		jsonObject=usersService.findusersByUsid(users.getUsid());
		return "success";
		
	}
//	
//	//修改管理员信息
//	public String updateAdminInfo(){
//		LogManager.getLogger().debug(admin);
//		jsonObject.setResult(adminService.updateAdminInfo(admin));
//		return "success";
//	}

	@Override
	public Users getModel() {
		this.users =new Users();
		return users;
	}


	

}
