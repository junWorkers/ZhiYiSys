package com.zhiyi.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.opensymphony.xwork2.ActionContext;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Admin;
import com.zhiyi.mapper.AdminMapper;
import com.zhiyi.service.AdminService;

@Service("adminService")
public class AdminServiceImpl implements AdminService {
	@Autowired
	private AdminMapper adminMapper;

	@Override
	public int getTotal() {
		return adminMapper.getTotal();
	}

	@Override
	public List<Admin> find(String page, String rows) {
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("min", (Integer.parseInt(page) - 1) * Integer.parseInt(rows));
		params.put("max", Integer.parseInt(page) * Integer.parseInt(rows));
		return adminMapper.find(params);
	}

	@Override
	public int addAdmin(Admin admin) {
		int result = adminMapper.addAdmin(admin);
		if (result > 0) {
			return 1;
		} else {
			return 0;
		}
	}

	@Override
	public int delAdminInfo(String aids) {
		int result = 0;
		if (aids.indexOf(",") > 0) {
			String aidss[] = aids.split(",");
			for (int i = 0; i < aidss.length; i++) {
				result = adminMapper.delAdmin(aidss[i]);
			}
		} else {
			result = adminMapper.delAdmin(aids);
		}

		if (result > 0) {
			return 1;
		} else {
			return 0;
		}
	}

	@Override
	public int updateAdminInfo(Admin admin) {
		int result = adminMapper.updateAdmin(admin);
		if (result > 0) {
			return 1;
		} else {
			return 0;
		}
	}

	@Override
	public int checkzccode(String code) {
		String codes = (String) ActionContext.getContext().getSession()
				.get("rand");
		if (codes.equals(code.trim())) {
			return 1;
		} else {
			return 0;
		}
	}

	@Override
	public Admin login(Admin admin) {
		return adminMapper.findAdmin(admin);
	}

	@Override
	public JsonObject<Admin> getPageAdminInfo(String page, String rows) {
		JsonObject<Admin> jsonObject = new JsonObject<Admin>();
		jsonObject.setTotal(getTotal());
		jsonObject.setRows(find(page, rows));
		return jsonObject;
	}
}
