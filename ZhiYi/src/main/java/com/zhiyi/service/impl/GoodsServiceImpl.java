package com.zhiyi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Goods;
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
	public List<Goods> find(String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return goodsMapper.find(params);
	}
	
	@Override
	public List<Goods> findGoodsInfo(String page, String rows){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return goodsMapper.findGoodsInfo(params);
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
	public JsonObject<Goods> findGoodsByGid(int gid) {
		JsonObject<Goods> jsonObject = new JsonObject<Goods>();
		jsonObject.setRows(goodsMapper.findGoodsByGid(gid));
		return jsonObject;
	}

	@Override
	public JsonObject<Goods> getPageGoodsInfoInfo(String page, String rows) {
		JsonObject<Goods> jsonObject = new JsonObject<Goods>();
		jsonObject.setTotal(getGoodsInfoTotal());
		jsonObject.setRows(findGoodsInfo(page, rows));
		return jsonObject;
	}

}
