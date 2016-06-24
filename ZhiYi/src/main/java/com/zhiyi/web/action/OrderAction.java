package com.zhiyi.web.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ModelDriven;
import com.zhiyi.beans.JsonObject;
import com.zhiyi.entity.Order;
import com.zhiyi.service.OrderService;
@Controller("orderAction")
public class OrderAction implements ModelDriven<Order>,SessionAware{
	@Autowired
	private OrderService orderService;
	private JsonObject<Order> jsonObject;
	private Order order;
	private  String page;
	private String rows;
	private int chenggong;
	private List<Order> orderInfo;
	private Map<String, Object> session;
	


	public List<Order> getOrderInfo() {
		return orderInfo;
	}

	public void setOrderInfo(List<Order> orderInfo) {
		this.orderInfo = orderInfo;
	}

	public int getChenggong() {
		return chenggong;
	}

	public void setChenggong(int chenggong) {
		this.chenggong = chenggong;
	}

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
	
	public String findUserInfoByInfo(){
		String uname=ServletActionContext.getRequest().getParameter("uname");
		String gid=ServletActionContext.getRequest().getParameter("gid");
		String kdate=ServletActionContext.getRequest().getParameter("kdate");
		String jdate=ServletActionContext.getRequest().getParameter("jdate");
		jsonObject = orderService.findUserInfoByInfo(uname,gid,kdate,jdate,page, rows);
		return "success";
	}
	
	//
	public String getPageUserInfo(){
		jsonObject = orderService.getPageUserInfo(page, rows);
		return "success";
	}
	
	public String addOrders(){
		if(orderService.addOrders(order)>0){
			 int osids=order.getOsid();
			 if(osids>0){
					Map<String,Object> map=new HashMap<String,Object>();
					map.put("osids",osids);
					map.put("gpid", order.getGpid());
					map.put("onum", order.getOnum());
					map.put("price",order.getPrice());
					map.put("money",order.getMoney());
					if(orderService.addOrderInfoss(map)>0){
						 chenggong=1;
					}else{
						 chenggong=0;
					}
				}
		}else{
			 chenggong=0;
		}
		return "addOrders";
	}
	
	public String delOrders(){
		int osid=order.getOsid();
		if(orderService.delOrderService(osid)>0){
			if(orderService.delOServices(osid)>0){
				chenggong=1;
			}else{
				chenggong=0;
			}
		}else{
			chenggong=0;
		}
		return "addOrders";
	}
	/*public String addOrderInfo(){
		System.out.println(osids);
		if(osids>0){
			Map<String,Object> map=new HashMap<String,Object>();
			map.put("osids",osids);
			map.put("gpid", order.getGpid());
			map.put("onum", order.getOnum());
			map.put("price",order.getPrice());
			map.put("money",order.getMoney());
			if(orderService.addOrderInfoss(map)>0){
				chenggong1=1;
			}else{
				chenggong1=0;
			}
		}
		return "addOrdersInfo";
	}*/
	
	public String showOrderInfo(){
		orderInfo=orderService.findOrderInfo(order.getUsid());
		return "showOrderInfo";
	}
	@Override
	public Order getModel() {
		this.order=new Order();
		return order;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session=session;
	}
}
