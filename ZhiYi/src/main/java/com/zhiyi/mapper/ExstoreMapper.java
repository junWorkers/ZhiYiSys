package com.zhiyi.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyi.entity.Exstore;

public interface ExstoreMapper {

	int getTotal();

	List<Exstore> find(Map<String, Object> params);

	int addExstoreInfo(Exstore exstore);

	int delExstoreInfo(String eid);

	int updateExstoreInfo(Exstore exstore);


	
}
