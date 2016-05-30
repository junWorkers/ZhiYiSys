package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Ad;

public interface AdService {
	List<Ad> shoufindpic(); //首页大图

	JsonObject<Ad> getPageAdInfo(String page, String rows);

	int getTotal();

	JsonObject<Ad> getPageAll(String page, String rows);
}
