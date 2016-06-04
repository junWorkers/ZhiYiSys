package com.zhiyi.service;

import java.util.List;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Users;

public interface UsersService {

	int getTotal();

	List<Users> find(String page, String rows);

	JsonObject<Users> getPageUsersInfo(String page, String rows);

	JsonObject<Users> addUsers(Users users);

	JsonObject<Users> delUsersInfo(String aids);

	JsonObject<Users> findusersByUsid(int usid);

	Users checkUserN(String pname);

	Users login(Users users);

	int RegistUsers(Users users);

	int CheckEamil(String email);

	JsonObject<Users> updateUsersInfo(Users users);

	int updatepwdByEmail(Users users);

}
