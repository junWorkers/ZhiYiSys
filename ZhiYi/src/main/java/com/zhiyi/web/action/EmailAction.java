package com.zhiyi.web.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyi.service.EmailService;
import com.zhiyi.service.UsersService;
import com.zhiyi.util.StaticData;

@Controller("emailAction")
public class EmailAction implements SessionAware{
	private String email;
	private Map<String, Object> session;
	private int intType;
	@Autowired
	private EmailService emailService;
	@Autowired
	private UsersService usersService;
	
	public int getIntType() {
		return intType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	//检查邮箱是否可用
	public String CheckEmail(){
		if(usersService.CheckEamil(email)>0){
			intType=1;
		}else{
			intType=0;
		}
		return "IntType";
	}
	//修改密码时发送验证码
	public String SendYZM(){
		if(emailService.sendYZM(email)>0){
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
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
	
	
}
