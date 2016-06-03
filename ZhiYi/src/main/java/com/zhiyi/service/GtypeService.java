package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Gtype;

public interface GtypeService {

	JsonObject<Gtype> getPageTypeInfo(String page, String rows);

	int getTotal();

	List<Gtype> find(String page, String rows);

	JsonObject<Gtype> addGtypeInfo(Gtype gtype);

	JsonObject<Gtype> delGtypeInfo(String tids);

	JsonObject<Gtype> findGtypeByTid(int tid);

	JsonObject<Gtype> updateGtypeInfo(Gtype gtype);

	JsonObject<Gtype> getAllGoodsType();

	List<Gtype> findTypes();

}
