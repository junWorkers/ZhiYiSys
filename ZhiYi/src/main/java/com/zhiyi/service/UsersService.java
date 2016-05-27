package com.zhiyi.service;

import java.util.List;

import com.zhiyi.entity.Admin;
import com.zhiyi.entity.Users;

public interface UsersService {

	int getTotal();

	List<Users> find(String page, String rows);

}
