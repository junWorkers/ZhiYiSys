package com.zhiyi.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyi.entity.Gtype;

public interface GtypeMapper {

	int getTotal();

	List<Gtype> find(Map<String, Object> params);

	int addGtype(Gtype gtype);

	int delGtype(String tid);

	List<Gtype> findGtypeByTid(int tid);

	int updateGtypeInfo(Gtype gtype);

}
