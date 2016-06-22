package com.zhiyi.web.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.entity.Receive;
import com.zhiyi.service.ReceiveServie;

@Controller("receiveAction")
public class ReceiveAction implements ModelDriven<Receive>,SessionAware{
	private Receive receive;
	@Autowired
	private ReceiveServie receiveServie;
	private Map<String, Object> session;
	private List<Receive> addressInfo;
	

	public List<Receive> getAddressInfo() {
		return addressInfo;
	}

	public void setAddressInfo(List<Receive> addressInfo) {
		this.addressInfo = addressInfo;
	}

	public String addAddressInfo(){
		int result=receiveServie.addAddress(receive);
		if(result==0){
			session.put("sessionError","地址添加失败");
		}
		return "addAddressInfo";
	}
	
	public String findAddressInfo(){
		addressInfo=receiveServie.find();
		return "findAddressInfo";
	}
	
	public String delAddressInfo(){
		int rid=receive.getRid();
		int result=receiveServie.delAddressInfo(rid);
		if(result==0){
			session.put("sessiondelError","地址删除失败");
		}
		return "addAddressInfo";
	}
	@Override
	public Receive getModel() {
		receive=new Receive();
		return receive;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
}
