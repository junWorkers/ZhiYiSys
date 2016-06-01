package com.zhiyi.web.action;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Order;
import com.zhiyi.service.OrderService;
@Controller("orderAction")
public class OrderAction implements ModelDriven<Order>{
	@Autowired
	private OrderService orderService;
	private JsonObject<Order> jsonObject;
	private Order order;
	private  String page;
	private String rows;

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getRows() {
		return rows;
	}

	public void setRows(String rows) {
		this.rows = rows;
	}

	public JsonObject<Order> getJsonObject() {
		return jsonObject;
	}
	
	//分页查询销售信息
	public String getPageOrderInfo(){
		jsonObject = orderService.getPageOrderInfo(page, rows);
		return "success";
	}
	
	public String findGoodsInfoByInfo(){
		String gid=ServletActionContext.getRequest().getParameter("gid");
		String kdate=ServletActionContext.getRequest().getParameter("kdate");
		String jdate=ServletActionContext.getRequest().getParameter("jdate");
		jsonObject = orderService.findGoodsInfoByInfo(gid,kdate,jdate,page, rows);
		return "success";
	}
	
	@Override
	public Order getModel() {
		this.order=new Order();
		return order;
	}
}
