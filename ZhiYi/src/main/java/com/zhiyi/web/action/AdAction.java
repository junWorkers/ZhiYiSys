package com.zhiyi.web.action;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.zhiyi.entity.Ad;
import com.zhiyi.service.AdService;

@Controller("adAction")
public class AdAction {
	@Autowired
	private AdService adService;
	private List<Ad> pics;
	
	public List<Ad> getPics() {
		return pics;
	}
	public void setPics(List<Ad> pics) {
		this.pics = pics;
	}


	public String findpic(){
		pics=adService.shoufindpic();
		return "findpic";
	}
}
