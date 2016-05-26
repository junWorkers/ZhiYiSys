package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 收货人信息类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Receive implements Serializable {
	private int rid;                           //收货人编号
	private int usid;                          //会员编号
	private String rname;                      //收货人姓名
	private String address;                    //地址
	private String xaddress;                   //详细地址
	private String zip;                         //邮编
	private String phone;                      //手机号码
	private String rtime;                        //配送时间
	private int status;                       //状态
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getUsid() {
		return usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getXaddress() {
		return xaddress;
	}
	public void setXaddress(String xaddress) {
		this.xaddress = xaddress;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getRtime() {
		return rtime;
	}
	public void setRtime(String rtime) {
		this.rtime = rtime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Receive(int rid, int usid, String rname, String address,
			String xaddress, String zip,String phone, String rtime,
			int status) {
		super();
		this.rid = rid;
		this.usid = usid;
		this.rname = rname;
		this.address = address;
		this.xaddress = xaddress;
		this.zip = zip;
		this.phone = phone;
		this.rtime = rtime;
		this.status = status;
	}
	public Receive() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result + rid;
		result = prime * result + ((rname == null) ? 0 : rname.hashCode());
		result = prime * result + ((rtime == null) ? 0 : rtime.hashCode());
		result = prime * result + status;
		result = prime * result + usid;
		result = prime * result
				+ ((xaddress == null) ? 0 : xaddress.hashCode());
		result = prime * result + ((zip == null) ? 0 : zip.hashCode());
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
		Receive other = (Receive) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		if (rid != other.rid)
			return false;
		if (rname == null) {
			if (other.rname != null)
				return false;
		} else if (!rname.equals(other.rname))
			return false;
		if (rtime == null) {
			if (other.rtime != null)
				return false;
		} else if (!rtime.equals(other.rtime))
			return false;
		if (status != other.status)
			return false;
		if (usid != other.usid)
			return false;
		if (xaddress == null) {
			if (other.xaddress != null)
				return false;
		} else if (!xaddress.equals(other.xaddress))
			return false;
		if (zip == null) {
			if (other.zip != null)
				return false;
		} else if (!zip.equals(other.zip))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Receive [rid=" + rid + ", usid=" + usid + ", rname=" + rname
				+ ", address=" + address + ", xaddress=" + xaddress + ", zip="
				+ zip + ", phone=" + phone + ", rtime="
				+ rtime + ", status=" + status + "]";
	}
	
	
}
