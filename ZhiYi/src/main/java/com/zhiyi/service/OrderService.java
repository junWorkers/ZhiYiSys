package com.zhiyi.service;

import java.util.List;
import java.util.Map;

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

	JsonObject<Order> getPageUserInfo(String page, String rows);
	
	List<Order> find1(String page, String rows);
	
	int getTotal1();

	JsonObject<Order> findUserInfoByInfo(String uname, String gid,
			String kdate, String jdate, String page, String rows);
	
	List<Order> find1(String uname, String gid, String kdate,
			String jdate, String page, String rows);

	int addOrders(Order order);

	int finds(Order order);

	int addOrderInfoss(Map<String, Object> map);

	List<Order> findOrderInfo(int i);
}
