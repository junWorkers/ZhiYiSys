package com.zhiyi.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyi.entity.Order;

public interface OrderMapper {

	int getTotal();

	List<Order> find(Map<String, Object> params);

	List<Order> find1(Map<String, Object> params);

	int getTotal1();

	List<Order> finds(Map<String, Object> params);

	List<Order> finds1(Map<String, Object> params);

	int addOrders(Order order);

	int findzzz(Order order);

	int addOrdersInfo(Map<String, Object> map);

	List<Order> findOrderInfo(int i);

}
