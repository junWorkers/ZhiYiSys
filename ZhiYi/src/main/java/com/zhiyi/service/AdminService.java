package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Admin;

public interface AdminService {

	int getTotal();

	List<Admin> find(String page, String rows);

	JsonObject<Admin> addAdmin(Admin admin);
	
	JsonObject<Admin> delAdminInfo(String aid);

	JsonObject<Admin> updateAdminInfo(Admin admin);

	Admin login(Admin admin);

	JsonObject<Admin> getPageAdminInfo(String page, String rows);

}
