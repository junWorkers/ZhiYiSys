package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Goods;
import com.zhiyi.entity.GoodsInfo;

public interface GoodsService {

	JsonObject<Goods> getPageGoodsInfo(String page, String rows);
	
	int getTotal();

	List<Goods> find(String page, String rows);

	JsonObject<Goods> addGoodsInfo(Goods goods);

	JsonObject<Goods> delGoodsInfo(String gids);

	JsonObject<Goods> updateGoodsInfo(Goods goods);

	JsonObject<Goods> findGoodsByGid(int gid);

	JsonObject<GoodsInfo> getPageGoodsInfoInfo(String page, String rows);

	int getGoodsInfoTotal();

	List<GoodsInfo> findGoodsInfo(String page, String rows);
	
	JsonObject<Goods> getAllGoods();

	JsonObject<GoodsInfo> findGoodsInfoByIid(int iid);

	JsonObject<GoodsInfo> addGoodsInfoInfo(GoodsInfo goodsInfo);
}
