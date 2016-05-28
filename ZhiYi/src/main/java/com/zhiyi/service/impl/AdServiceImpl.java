package com.zhiyi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zhiyi.entity.Ad;
import com.zhiyi.mapper.AdMapper;
import com.zhiyi.service.AdService;
@Service("adService")
public class AdServiceImpl implements AdService {
	@Autowired
	private AdMapper adMapper;
	@Override
	public List<Ad> shoufindpic() {
		return adMapper.showfndpic();
	}

}
