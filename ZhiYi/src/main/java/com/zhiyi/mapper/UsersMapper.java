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

	int RegistUsers(Users users);

	List<Users> findusersByUsid(int usid);

	Users checkUserN(String uname);

	Users CheckEamil(String email);



	int updateUsersInfo(Users users);

	int updatepwdByEmail(Users users);
}
