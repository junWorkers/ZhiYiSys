package com.zhiyi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Goods;
import com.zhiyi.entity.GoodsInfo;
import com.zhiyi.entity.GoodsPar;
import com.zhiyi.mapper.GoodsMapper;
import com.zhiyi.service.GoodsService;

@Service("goodsService")
public class GoodsServiceImpl implements GoodsService {
	@Autowired
	private GoodsMapper goodsMapper;
	
	@Override
	public JsonObject<Goods> getPageGoodsInfo(String page, String rows) {
		JsonObject<Goods> jsonObject = new JsonObject<Goods>();
		jsonObject.setTotal(getTotal());
		jsonObject.setRows(find(page, rows));
		return jsonObject;
	}

	@Override
	public int getTotal() {
		return goodsMapper.getTotal();
	}
	
	@Override
	public int getGoodsInfoTotal(){
		return goodsMapper.getGoodsInfoTotal();
	}
	
	@Override
	public int getGoodsParTotal(){
		return goodsMapper.getGoodsParTotal();
	}
	
	@Override
	public List<Goods> find(String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return goodsMapper.find(params);
	}
	
	@Override
	public List<GoodsInfo> findGoodsInfo(String page, String rows){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return goodsMapper.findGoodsInfo(params);
	}
	
	@Override
	public List<GoodsPar> findGoodsPar(String page, String rows){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return goodsMapper.findGoodsPar(params);
	}
	
	@Override
	public JsonObject<Goods> addGoodsInfo(Goods goods) {
		JsonObject<Goods> jsonObject = new JsonObject<Goods>();
		int result = goodsMapper.addGoodsInfo(goods);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsInfo> addGoodsInfoInfo(GoodsInfo goods) {
		JsonObject<GoodsInfo> jsonObject = new JsonObject<GoodsInfo>();
		int result = goodsMapper.addGoodsInfoInfo(goods);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsPar> addgoodsParInfo(GoodsPar goodsPar) {
		JsonObject<GoodsPar> jsonObject = new JsonObject<GoodsPar>();
		int result = goodsMapper.addgoodsParInfo(goodsPar);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	
	@Override
	public JsonObject<Goods> delGoodsInfo(String gids) {
		JsonObject<Goods> jsonObject = new JsonObject<Goods>();
		int result = 0;
		if (gids.indexOf(",") > 0) {
			String[] gidss= gids.split(",");
			for (int i = 0; i < gidss.length; i++) {
				result = goodsMapper.delGoodsInfo(gidss[i]);
			}
		} else {
			result = goodsMapper.delGoodsInfo(gids);
		}

		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsInfo> delgoodsInfoInfo(String iids) {
		JsonObject<GoodsInfo> jsonObject = new JsonObject<GoodsInfo>();
		int result = 0;
		if (iids.indexOf(",") > 0) {
			String[] iidss= iids.split(",");
			for (int i = 0; i < iidss.length; i++) {
				result = goodsMapper.delGoodsInfoInfo(iidss[i]);
			}
		} else {
			result = goodsMapper.delGoodsInfoInfo(iids);
		}

		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsPar> delgoodsParInfo(String gpids) {
		JsonObject<GoodsPar> jsonObject = new JsonObject<GoodsPar>();
		int result = 0;
		if (gpids.indexOf(",") > 0) {
			String[] gpidss= gpids.split(",");
			for (int i = 0; i < gpidss.length; i++) {
				result = goodsMapper.delgoodsParInfo(gpidss[i]);
			}
		} else {
			result = goodsMapper.delgoodsParInfo(gpids);
		}

		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	
	@Override
	public JsonObject<Goods> updateGoodsInfo(Goods goods) {
		JsonObject<Goods> jsonObject = new JsonObject<Goods>();
		int result = goodsMapper.updateGoodsInfo(goods);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsInfo> updateGoodsInfoInfo(GoodsInfo goodsInfo) {
		JsonObject<GoodsInfo> jsonObject = new JsonObject<GoodsInfo>();
		int result = goodsMapper.updateGoodsInfoInfo(goodsInfo);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsPar> updateGoodsParInfo(GoodsPar goodsPar) {
		JsonObject<GoodsPar> jsonObject = new JsonObject<GoodsPar>();
		int result = goodsMapper.updateGoodsParInfo(goodsPar);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}
	
	@Override
	public JsonObject<Goods> findGoodsByGid(int gid) {
		JsonObject<Goods> jsonObject = new JsonObject<Goods>();
		jsonObject.setRows(goodsMapper.findGoodsByGid(gid));
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsInfo> findGoodsInfoByIid(int iid) {
		JsonObject<GoodsInfo> jsonObject = new JsonObject<GoodsInfo>();
		jsonObject.setRows(goodsMapper.findGoodsInfoByIid(iid));
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsPar> findGoodsParByGpid(int gpid) {
		JsonObject<GoodsPar> jsonObject = new JsonObject<GoodsPar>();
		jsonObject.setRows(goodsMapper.findGoodsParByGpid(gpid));
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsInfo> getPageGoodsInfoInfo(String page, String rows) {
		JsonObject<GoodsInfo> jsonObject = new JsonObject<GoodsInfo>();
		jsonObject.setTotal(getGoodsInfoTotal());
		jsonObject.setRows(findGoodsInfo(page, rows));
		return jsonObject;
	}
	
	@Override
	public JsonObject<GoodsPar> getPageGoodsParInfo(String page, String rows) {
		JsonObject<GoodsPar> jsonObject = new JsonObject<GoodsPar>();
		jsonObject.setTotal(getGoodsParTotal());
		jsonObject.setRows(findGoodsPar(page, rows));
		return jsonObject;
	}
	@Override
	public JsonObject<Goods> getAllGoods() {
		JsonObject<Goods> jsonObject = new JsonObject<Goods>();
		jsonObject.setRows(goodsMapper.getAllGoods());
		return jsonObject;
	}
}
