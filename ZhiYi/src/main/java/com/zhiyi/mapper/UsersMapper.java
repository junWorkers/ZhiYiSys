package com.zhiyi.mapper;

import java.util.List;
import java.util.Map;

import com.zhiyi.entity.Users;

public interface UsersMapper {

	int getTotal();

	List<Users> find(Map<String, Object> params);

	int addUsers(Users users);

	Users login(Users users);


	int delUsers(String aids);

	List<Users> findusersByUsid(int usid);

	Users checkUserN(String uname);

	int RegistUsers(Users users);

	int updateUsersInfo(Users users);
}
