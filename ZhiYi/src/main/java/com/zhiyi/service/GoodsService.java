package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Goods;
import com.zhiyi.entity.GoodsInfo;
import com.zhiyi.entity.GoodsPar;

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

	JsonObject<GoodsInfo> delgoodsInfoInfo(String iids);

	JsonObject<GoodsInfo> updateGoodsInfoInfo(GoodsInfo goodsInfo);

	JsonObject<GoodsPar> getPageGoodsParInfo(String page, String rows);

	int getGoodsParTotal();

	List<GoodsPar> findGoodsPar(String page, String rows);
}
