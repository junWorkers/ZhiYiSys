package com.zhiyi.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyi.entity.Ad;

public interface AdMapper {
	List<Ad> showfndpic(); //首页大广告图

	int getTotal();

	List<Ad> find(Map<String, Object> params);

	List<Ad> finds(Map<String, Object> params);
}
