package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Users;

public interface UsersService {

	int getTotal();

	List<Users> find(String page, String rows);

	JsonObject<Users> getPageUsersInfo(String page, String rows);

	JsonObject<Users> addUsers(Users users);

	int checkUserN(String pname);

}
