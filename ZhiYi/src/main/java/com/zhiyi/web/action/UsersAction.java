package com.zhiyi.web.action;


import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Users;
import com.zhiyi.service.UsersService;
import com.zhiyi.util.UploadUtil;
@Controller("usersAction")
public class UsersAction implements ModelDriven<Users>,SessionAware{
	@Autowired
	private UsersService usersService;
	private JsonObject<Users> jsonObject;
	private UploadUtil uploadUtil;
	private Users users;
	private  String page;
	private String rows;
	private Users usersType;
	private int intType;
	private Map<String, Object> session;
	
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
	public JsonObject<Users> getJsonObject() {
		return jsonObject;
	}
	public Users getUsersType() {
		return usersType;
	}
	public int getIntType() {
		return intType;
	}


	//注册时用户名的校验
	public String checkUserName(){
		usersType=usersService.checkUserN(users.getUname());
		return "UsersType";
	}
	//注册时验证码的校验
	public String yanzheng(){
		String yzm=ServletActionContext.getRequest().getParameter("yzm");
		String yzms =(String) session.get("rand");
		if(yzms.equals(yzm.trim())){
			intType=1;
		}else{
			intType=0;
		}
		return "IntType";
	}
	//注册
	public String register(){
		if(usersService.RegistUsers(users)>0){
			intType=1;
		}else{
			intType=0;
		}
		return "IntType";
	}

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
	//删除会员信息
	public String delUsersInfo(){
		String aids=ServletActionContext.getRequest().getParameter("usids");
		jsonObject=usersService.delUsersInfo(aids);
		return "success";
	}
	public String findusersByUsid(){
		jsonObject=usersService.findusersByUsid(users.getUsid());
		return "success";

	}
		
	//修改会员信息
	public String updateUsersInfo(){
		users.setPic(uploadUtil.upload());
		jsonObject=usersService.updateUsersInfo(users);
		return "success";
	}

	public String login(){
		users=usersService.login(users);
		if(users==null){
			session.put("errorMsg","登录失败，用户名或密码错误");
			return "fail";
		}
		session.put("users", users);
		return "login";
	}

	public String updateUsers(){
		if(usersService.updatepwd(users)>0){
			intType=1;
		}else{
			intType=0;
		}
		return "IntType";
	}
	@Override
	public Users getModel() {
		this.users =new Users();
		return users;
	}
	
	

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
}
