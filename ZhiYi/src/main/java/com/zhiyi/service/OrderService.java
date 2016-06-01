package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Order;

public interface OrderService {

	JsonObject<Order> getPageOrderInfo(String page, String rows);
	
	List<Order> find(String page, String rows);
	
	int getTotal();

	JsonObject<Order> findGoodsInfoByInfo(String gid, String kdate,
			String jdate, String page, String rows);
	
	List<Order> find(String gid, String kdate, String jdate,
			String page, String rows);
}
