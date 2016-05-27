package com.zhiyi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Admin;
import com.zhiyi.entity.Gtype;
import com.zhiyi.mapper.AdminMapper;
import com.zhiyi.mapper.GtypeMapper;
import com.zhiyi.service.GtypeService;
@Service("gtypeService")
public class GtypeServiceImpl implements GtypeService {
	@Autowired
	private GtypeMapper gtypeMapper;

	@Override
	public int getTotal() {
		return gtypeMapper.getTotal();
	}

	@Override
	public List<Gtype> find(String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return gtypeMapper.find(params);
	}
	
	@Override
	public JsonObject<Gtype> getPageTypeInfo(String page, String rows) {
		JsonObject<Gtype> jsonObject = new JsonObject<Gtype>();
		jsonObject.setTotal(getTotal());
		jsonObject.setRows(find(page, rows));
		return jsonObject;
	}

	@Override
	public JsonObject<Gtype> addGtypeInfo(Gtype gtype) {
		JsonObject<Gtype> jsonObject = new JsonObject<Gtype>();
		int result = gtypeMapper.addGtype(gtype);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
}
