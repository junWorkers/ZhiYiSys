package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 意外保类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Safe implements Serializable{
	private int ssid;                    //意外保编号
	private int gid;                     //商品编号
	private double money;                //保险金额
	private int status;                  //状态
	
	public int getSsid() {
		return ssid;
	}
	public void setSsid(int ssid) {
		this.ssid = ssid;
	}
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public Safe(int ssid, int gid, double money, int status) {
		super();
		this.ssid = ssid;
		this.gid = gid;
		this.money = money;
		this.status = status;
	}
	
	public Safe() {
		super();
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + gid;
		long temp;
		temp = Double.doubleToLongBits(money);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		result = prime * result + ssid;
		result = prime * result + status;
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Safe other = (Safe) obj;
		if (gid != other.gid)
			return false;
		if (Double.doubleToLongBits(money) != Double
				.doubleToLongBits(other.money))
			return false;
		if (ssid != other.ssid)
			return false;
		if (status != other.status)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Safe [ssid=" + ssid + ", gid=" + gid + ", money=" + money
				+ ", status=" + status + "]";
	}
	
}
