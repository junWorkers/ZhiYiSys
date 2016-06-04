package com.zhiyi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Users;
import com.zhiyi.mapper.UsersMapper;
import com.zhiyi.service.UsersService;

@Service("usersService")
public class UsersServiceImpl implements UsersService {
	@Autowired
	private UsersMapper usersMapper;
	
	@Override
	public int getTotal() {
		return usersMapper.getTotal();
	}

	@Override
	public List<Users> find(String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return usersMapper.find(params);
	}

	@Override
	public JsonObject<Users> getPageUsersInfo(String page, String rows) {
		JsonObject<Users> jsonObject = new JsonObject<Users>();
		jsonObject.setTotal(getTotal());
		jsonObject.setRows(find(page, rows));
		return jsonObject;
	}

	@Override
	public JsonObject<Users> addUsers(Users users) {
		JsonObject<Users> jsonObject = new JsonObject<Users>();
		int result =usersMapper.addUsers(users);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}



	@Override
	public JsonObject<Users> delUsersInfo(String aids) {
		JsonObject<Users> jsonObject = new JsonObject<Users>();
		int result = 0;
		if (aids.indexOf(",") > 0) {
			String aidss[] = aids.split(",");
			for (int i = 0; i < aidss.length; i++) {
				result = usersMapper.delUsers(aidss[i]);
			}
		} else {
			result = usersMapper.delUsers(aids);
		}

		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	
	}

	@Override
	public JsonObject<Users> findusersByUsid(int usid) {
		JsonObject<Users> jsonObject = new JsonObject<Users>();
		jsonObject.setRows(usersMapper.findusersByUsid(usid));
		return jsonObject;
	}
	@Override
	public Users checkUserN(String uname) {
		return usersMapper.checkUserN(uname);
	}
	@Override
	public Users login(Users users) {
		return usersMapper.login(users);
	}

	@Override
	public int RegistUsers(Users users) {
		return usersMapper.RegistUsers(users);
	}

	@Override
	public int CheckEamil(String email) {
		if(usersMapper.CheckEamil(email)!=null){
			return 1;
		}
		return 0;
	}
	@Override
	public JsonObject<Users> updateUsersInfo(Users users) {
		JsonObject<Users> jsonObject = new JsonObject<Users>();
		int result = usersMapper.updateUsersInfo(users);
		if (result > 0) {
			jsonObject.setResult(1);
		} else {
			jsonObject.setResult(0);
		}
		return jsonObject;
	}

}
