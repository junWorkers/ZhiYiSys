package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Admin;

public interface AdminService {

	int getTotal();

	List<Admin> find(String page, String rows);

	int addAdmin(Admin admin);
	
	int delAdminInfo(String aid);

	int updateAdminInfo(Admin admin);

	int checkzccode(String code);

	Admin login(Admin admin);

	JsonObject<Admin> getPageAdminInfo(String page, String rows);

}
