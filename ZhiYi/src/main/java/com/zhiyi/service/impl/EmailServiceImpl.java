package com.zhiyi.service.impl;

import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.zhiyi.service.EmailService;
import com.zhiyi.util.StaticData;
@Service("emailService")
public class EmailServiceImpl implements EmailService{
	@Autowired
	private JavaMailSender javaMailSender;
	@Override
	public int sendYZM(String email) {
		SimpleMailMessage  ssm=new SimpleMailMessage ();
		String yzm=random();
		StaticData.UPWD_YZM=yzm;
		
		ssm.setFrom("18274759330@163.com");//发送者
		ssm.setTo(email);//接收者
		ssm.setSubject("修改密码验证码...");//主题
		ssm.setText(yzm);
		
		try {
			javaMailSender.send(ssm);
			System.out.println(StaticData.UPWD_YZM);
			return 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return 0;
	}
	//随机生成验证码
  	public String random(){
  		Random rd=new Random();
  		StringBuffer sbf=new StringBuffer();
  		int count=0;
  		int flag=0;
  		while(count<=4){
  			flag=rd.nextInt(2);
  			if(flag==0){
  				sbf.append(rd.nextInt(10));
  			}else{
  				sbf.append((char)(rd.nextInt(26)+97));
  			}
  			count++;
  		}
  		return sbf.toString();
  	}
}
