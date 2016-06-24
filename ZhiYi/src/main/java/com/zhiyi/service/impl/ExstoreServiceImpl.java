package com.zhiyi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Exstore;
import com.zhiyi.mapper.ExstoreMapper;
import com.zhiyi.service.ExstoreService;

@Service("exstoreService")
public class ExstoreServiceImpl implements ExstoreService {
	@Autowired
	private ExstoreMapper exstoreMapper;
	
	@Override
	public JsonObject<Exstore> getPageExstoreInfo(String page, String rows) {
		JsonObject<Exstore> jsonObject = new JsonObject<Exstore>();
		jsonObject.setTotal(getTotal());
		jsonObject.setRows(find(page, rows));
		return jsonObject;
	}

	@Override
	public int getTotal() {
		return exstoreMapper.getTotal();
	}

	@Override
	public List<Exstore> find(String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return exstoreMapper.find(params);
	}

	@Override
	public JsonObject<Exstore> addExstoreInfo(Exstore exstore) {
		JsonObject<Exstore> jsonObject = new JsonObject<Exstore>();
		int result = exstoreMapper.addExstoreInfo(exstore);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}

	@Override
	public JsonObject<Exstore> delExstoreInfo(String eids) {
		JsonObject<Exstore> jsonObject = new JsonObject<Exstore>();
		int result = 0;
		if (eids.indexOf(",") > 0) {
			String[] eidss = eids.split(",");
			for (int i = 0; i < eidss.length; i++) {
				result = exstoreMapper.delExstoreInfo(eidss[i]);
			}
		} else {
			result = exstoreMapper.delExstoreInfo(eids);
		}

		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}

	@Override
	public JsonObject<Exstore> updateExstoreInfo(Exstore exstore) {
		JsonObject<Exstore> jsonObject = new JsonObject<Exstore>();
		int result = exstoreMapper.updateExstoreInfo(exstore);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}

	@Override
	public List<Exstore> findStore() {
		return exstoreMapper.findStore();
	}

	@Override
	public Exstore findsoreByid(int eid) {
		return exstoreMapper.findStoreById(eid);
	}

}
