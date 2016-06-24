package com.zhiyi.service;

import java.util.List;

import com.zhiyi.entity.Receive;

public interface ReceiveServie {
	public int addAddress(Receive receive);
	public List<Receive> find(int i);
	public int delAddressInfo(int rid);
}
