package com.zhiyi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import com.zhiyi.entity.Receive;
import com.zhiyi.mapper.ReceiveMapper;
import com.zhiyi.service.ReceiveServie;
@Service("receiveServie")
public class ReceiveServiceImpl implements ReceiveServie {
	@Autowired
	private ReceiveMapper receiveMapper;

	@Override
	public int addAddress(Receive receive) {
		return receiveMapper.addAddress(receive);
	}

	@Override
	public List<Receive> find() {
		return receiveMapper.find();
	}

	@Override
	public int delAddressInfo(int rid) {
		return receiveMapper.del(rid);
	}
	
	

}
