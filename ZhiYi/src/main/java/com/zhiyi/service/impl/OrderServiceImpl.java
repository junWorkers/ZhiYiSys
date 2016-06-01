package com.zhiyi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Order;
import com.zhiyi.mapper.OrderMapper;
import com.zhiyi.service.OrderService;
@Service("orderService")
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;

	
	@Override
	public JsonObject<Order> getPageOrderInfo(String page, String rows) {
		JsonObject<Order> jsonObject = new JsonObject<Order>();
		jsonObject.setTotal(getTotal());
		jsonObject.setRows(find(page, rows));
		return jsonObject;
	}

	@Override
	public List<Order> find(String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return orderMapper.find(params);
	}

	@Override
	public int getTotal() {
		return orderMapper.getTotal();
	}

	@Override
	public JsonObject<Order> findGoodsInfoByInfo(String gid, String kdate,String jdate, String page, String rows) {
		JsonObject<Order> jsonObject = new JsonObject<Order>();
		jsonObject.setTotal(getTotal());
		jsonObject.setRows(find(gid,kdate,jdate,page, rows));
		return jsonObject;
	}

	@Override
	public List<Order> find(String gid, String kdate, String jdate,
			String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		if(gid!=null && !"".equals(gid)){
			params.put("gid", gid);
		}
		if(kdate!=null && !"".equals(kdate)){
			params.put("kdate", kdate);
		}
		if(jdate!=null && !"".equals(jdate)){
			params.put("jdate", jdate);
		}
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return orderMapper.find1(params);
	}

}
