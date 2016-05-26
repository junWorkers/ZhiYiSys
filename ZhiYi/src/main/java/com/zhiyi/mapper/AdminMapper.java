package com.zhiyi.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyi.entity.Admin;

public interface AdminMapper {

	int getTotal();

	List<Admin> find(Map<String, Object> params);

	int addAdmin(Admin admin);

	int delAdmin(String aid);

	int updateAdmin(Admin admin);

	Admin findAdmin(Admin admin);

}
