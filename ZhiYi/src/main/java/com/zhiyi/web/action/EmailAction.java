package com.zhiyi.web.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.entity.Users;
import com.zhiyi.service.EmailService;
import com.zhiyi.service.UsersService;
import com.zhiyi.util.StaticData;

@Controller("emailAction")
public class EmailAction implements ModelDriven<Users>,SessionAware{
	private Users users;
	private int intType;
	@Autowired
	private EmailService emailService;
	@Autowired
	private UsersService usersService;
	private Map<String, Object> session;
	
	public int getIntType() {
		return intType;
	}
	//检查邮箱是否可用
	public String CheckEmail(){
		System.out.println(users.getEmail());
		if(usersService.CheckEamil(users.getEmail())>0){
			intType=1;
		}else{
			intType=0;
		}
		return "IntType";
	}
	//修改密码时发送验证码
	public String SendYZM(){
		System.out.println(users.getEmail());
		if(emailService.sendYZM(users.getEmail())>0){
			session.put("email", users.getEmail());
			intType=1;
		}else{
			intType=0;
		}
		return "IntType";
	}
	//检查验证码是否正确
	public String CheckPwd(){
		String yzm=ServletActionContext.getRequest().getParameter("code");
		System.out.println(yzm+"=="+StaticData.UPWD_YZM);
		if(yzm.equals(StaticData.UPWD_YZM)){
			intType=1;
		}else{
			intType=0;
		}
		return "IntType";
	}
	
	public String updateByEmail(){
		System.out.println(users.getEmail());
		System.out.println(users);
		if(usersService.updatepwdByEmail(users)>0){
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
