package com.zhiyi.service;

import java.util.List;


import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Exstore;

public interface ExstoreService {
	
	int getTotal();

	List<Exstore> find(String page, String rows);
	
	JsonObject<Exstore> getPageExstoreInfo(String page, String rows);

	JsonObject<Exstore> addExstoreInfo(Exstore exstore);

	JsonObject<Exstore> delExstoreInfo(String eids);

	JsonObject<Exstore> updateExstoreInfo(Exstore exstore);

	List<Exstore> findStore();

	Exstore findsoreByid(int eid);


}
