package com.zhiyi.web.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyi.service.EmailService;

@Controller("emailAction")
public class EmailAction implements SessionAware{
	private String email;
	private Map<String, Object> session;
	private int intType;
	@Autowired
	private EmailService emailService;
	
	public int getIntType() {
		return intType;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	
	//修改密码时发送验证码
	public String UpdatePwd(){
		if(emailService.sendYZM(email)>0){
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
