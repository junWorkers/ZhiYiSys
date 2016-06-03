package com.zhiyi.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyi.entity.Order;

public interface OrderMapper {

	int getTotal();

	List<Order> find(Map<String, Object> params);

	List<Order> find1(Map<String, Object> params);

}
