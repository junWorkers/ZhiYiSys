package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 发货人信息类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Sender implements Serializable {
	private int sid;                  //发货人编号
	private String sname;             //发货人姓名
	private String address;           //地址
	private String xaddress;           //详细地址
	private String zip;                //邮编
	private String tel;               //固定电话
	private String phone;            //手机号码
	private int status;              //状态
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
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
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Sender(int sid, String sname, String address, String xaddress,
			String zip, String tel, String phone, int status) {
		super();
		this.sid = sid;
		this.sname = sname;
		this.address = address;
		this.xaddress = xaddress;
		this.zip = zip;
		this.tel = tel;
		this.phone = phone;
		this.status = status;
	}
	public Sender() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result + sid;
		result = prime * result + ((sname == null) ? 0 : sname.hashCode());
		result = prime * result + status;
		result = prime * result + ((tel == null) ? 0 : tel.hashCode());
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
		Sender other = (Sender) obj;
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
		if (sid != other.sid)
			return false;
		if (sname == null) {
			if (other.sname != null)
				return false;
		} else if (!sname.equals(other.sname))
			return false;
		if (status != other.status)
			return false;
		if (tel == null) {
			if (other.tel != null)
				return false;
		} else if (!tel.equals(other.tel))
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
		return "Sender [sid=" + sid + ", sname=" + sname + ", address="
				+ address + ", xaddress=" + xaddress + ", zip=" + zip
				+ ", tel=" + tel + ", phone=" + phone + ", status=" + status
				+ "]";
	}
	
}
