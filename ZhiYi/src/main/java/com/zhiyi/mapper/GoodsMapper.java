package com.zhiyi.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyi.entity.Goods;
import com.zhiyi.entity.GoodsInfo;
import com.zhiyi.entity.GoodsPar;

public interface GoodsMapper {

	int getTotal();

	List<Goods> find(Map<String, Object> params);

	List<Goods> findGoodsByGid(int gid);

	int addGoodsInfo(Goods goods);

	int delGoodsInfo(String gid);

	int updateGoodsInfo(Goods goods);

	int getGoodsInfoTotal();

	List<GoodsInfo> findGoodsInfo(Map<String, Object> params);
	
	List<Goods> getAllGoods();

	List<GoodsInfo> findGoodsInfoByIid(int iid);

	int addGoodsInfoInfo(GoodsInfo goodsInfo);

	int delGoodsInfoInfo(String iid);

	int updateGoodsInfoInfo(GoodsInfo goodsInfo);

	int getGoodsParTotal();

	List<GoodsPar> findGoodsPar(Map<String, Object> params);

	int addgoodsParInfo(GoodsPar goodsPar);

	int delgoodsParInfo(String gpid);

	List<GoodsPar> findGoodsParByGpid(int gpid);

	int updateGoodsParInfo(GoodsPar goodsPar);

	List<Goods> findContent();


	List<Goods> showGoodsByIds(int id);

	Goods findContentss(int gid);

	List<GoodsPar> findGoodsPars(int gid);

	Goods findContent5(Map<String, Object> map);
}
