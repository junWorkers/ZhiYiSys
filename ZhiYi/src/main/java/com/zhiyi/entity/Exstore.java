package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 体验店类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Exstore implements Serializable {
	private int eid;                    //体验店编号
	private String province;            //省份
	private String stname;              //体验店名字
	private String address;             //地址
	private String phone;               //联系方式
	private String etime;             //服务时间
	private String pattern;           //前往方式
	private int status;                 //状态
	
	private String adds;
	private String lat;
	private String lon;
	private String city;
	
	
	public int getEids() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getStname() {
		return stname;
	}
	public void setStname(String stname) {
		this.stname = stname;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public Exstore() {
		super();
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEtime() {
		return etime;
	}
	public void setEtime(String etime) {
		this.etime = etime;
	}
	public String getPattern() {
		return pattern;
	}
	public void setPattern(String pattern) {
		this.pattern = pattern;
	}
	
	
	
	public Exstore(int eid, String province, String stname, String address,
			String phone, String etime, String pattern, int status) {
		super();
		this.eid = eid;
		this.province = province;
		this.stname = stname;
		this.address = address;
		this.phone = phone;
		this.etime = etime;
		this.pattern = pattern;
		this.status = status;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + eid;
		result = prime * result + ((etime == null) ? 0 : etime.hashCode());
		result = prime * result + ((pattern == null) ? 0 : pattern.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result
				+ ((province == null) ? 0 : province.hashCode());
		result = prime * result + status;
		result = prime * result + ((stname == null) ? 0 : stname.hashCode());
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
		Exstore other = (Exstore) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (eid != other.eid)
			return false;
		if (etime == null) {
			if (other.etime != null)
				return false;
		} else if (!etime.equals(other.etime))
			return false;
		if (pattern == null) {
			if (other.pattern != null)
				return false;
		} else if (!pattern.equals(other.pattern))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		if (province == null) {
			if (other.province != null)
				return false;
		} else if (!province.equals(other.province))
			return false;
		if (status != other.status)
			return false;
		if (stname == null) {
			if (other.stname != null)
				return false;
		} else if (!stname.equals(other.stname))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Exstore [adds=" + adds + ", lat=" + lat + ", lon=" + lon
				+ ", city=" + city + "]";
	}
	public String getAdds() {
		return adds;
	}
	public void setAdds(String adds) {
		this.adds = adds;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLon() {
		return lon;
	}
	public void setLon(String lon) {
		this.lon = lon;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getEid() {
		return eid;
	}
}
