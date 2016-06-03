package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Ad;

public interface AdService {
	List<Ad> shoufindpic(); //首页大图

	JsonObject<Ad> getPageAdInfo(String page, String rows);

	int getTotal();
	int getTotals();

	JsonObject<Ad> getPageAll(String page, String rows);

	JsonObject<Ad> delAd(String aid);

	JsonObject<Ad> addAd(Ad ad);

	JsonObject<Ad> updateAd(Ad ad);

	JsonObject<Ad> delAdmessage(String aids);

	JsonObject<Ad> getAllAd();

	JsonObject<Ad> addAdmessageInfo(Ad ad);

	JsonObject<Ad> findadmessageByAmid(int amid);

	JsonObject<Ad> updateAdmessageInfo(Ad ad);
}
