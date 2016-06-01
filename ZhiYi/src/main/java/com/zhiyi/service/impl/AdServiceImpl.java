package com.zhiyi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Ad;
import com.zhiyi.entity.Admin;
import com.zhiyi.mapper.AdMapper;
import com.zhiyi.service.AdService;
@Service("adService")
public class AdServiceImpl implements AdService {
	@Autowired
	private AdMapper adMapper;
	@Override
	public List<Ad> shoufindpic() {
		return adMapper.showfndpic();
	}
	@Override
	public JsonObject<Ad> getPageAdInfo(String page, String rows) {
		JsonObject<Ad> jsonObject = new JsonObject<Ad>();
		jsonObject.setTotal(getTotal());
		jsonObject.setRows(find(page, rows));
		return jsonObject;
	}
	private List<Ad> find(String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return adMapper.find(params);
	}
	@Override
	public int getTotal() {
		return adMapper.getTotal();
	}
	@Override
	public JsonObject<Ad> getPageAll(String page, String rows) {
		JsonObject<Ad> jsonObject = new JsonObject<Ad>();
		jsonObject.setTotal(getTotal());
		jsonObject.setRows(finds(page, rows));
		return jsonObject;
	}
	private List<Ad> finds(String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return adMapper.finds(params);
	}
	@Override
	public JsonObject<Ad> delAd(String aids) {
		JsonObject<Ad> jsonObject = new JsonObject<Ad>();
		int result = 0;
		if (aids.indexOf(",") > 0) {
			String[] aidss = aids.split(",");
			for (int i = 0; i < aidss.length; i++) {
				result = adMapper.delAd(aidss[i]);
			}
		} else {
			result = adMapper.delAd(aids);
		}

		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
		
	}
	@Override
	public JsonObject<Ad> addAd(Ad ad) {
		JsonObject<Ad> jsonObject = new JsonObject<Ad>();
		int result = adMapper.addAd(ad);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	@Override
	public JsonObject<Ad> updateAd(Ad ad) {
		JsonObject<Ad> jsonObject = new JsonObject<Ad>();
		int result = adMapper.updateAd(ad);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	@Override
	public JsonObject<Ad> delAdmessage(String aids) {
		JsonObject<Ad> jsonObject = new JsonObject<Ad>();
		int result = 0;
		if (aids.indexOf(",") > 0) {
			String[] aidss = aids.split(",");
			for (int i = 0; i < aidss.length; i++) {
				result = adMapper.delAdmessage(aidss[i]);
			}
		} else {
			result = adMapper.delAdmessage(aids);
		}

		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}

}
