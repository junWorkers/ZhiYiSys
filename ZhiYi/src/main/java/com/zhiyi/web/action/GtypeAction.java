package com.zhiyi.web.action;

import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.entity.Gtype;

@Controller("gtypeAction")
public class GtypeAction implements ModelDriven<Gtype>{

	private Gtype gtype;

	

	@Override
	public Gtype getModel() {
		this.gtype=new Gtype();
		return gtype;
	}
	
}
