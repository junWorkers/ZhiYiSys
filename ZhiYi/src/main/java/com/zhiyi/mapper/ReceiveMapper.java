package com.zhiyi.mapper;

import java.util.List;

import com.zhiyi.entity.Receive;

public interface ReceiveMapper {
	public int addAddress(Receive receive);

	public List<Receive> find();

	public int del(int rid);
}
