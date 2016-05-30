package com.zhiyi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyi.entity.Ad;
import com.zhiyi.service.AdService;

@Controller("adAction")
public class AdAction implements SessionAware {
	@Autowired
	private AdService adService;
	private List<Ad> pics;
	private Map<String, Object> session;

	public List<Ad> getPics() {
		return pics;
	}
	public void setPics(List<Ad> pics) {
		this.pics=pics;
	}
	public String findpic(){
		pics=adService.shoufindpic();
		session.put("pics",pics);
		return "findpic";
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
}