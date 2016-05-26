package com.zhiyi.entity;

import java.io.Serializable;

import com.zhiyi.util.MD5Encryption;

/**
 * 后台管理员类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Admin implements Serializable {
	private int aid;          //管理员编号
	private String aname;     //管理员姓名
	private String pwd;       //管理员密码
	private String phone;     //联系方式
	private int status;       //状态
	
	public int getAid() {
		return aid;
	}
	public int getAids() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	
	public void setAids(int aid) {
		this.aid = aid;
	}
	
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = MD5Encryption.createPassword(pwd);
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
	public Admin(int aid, String aname, String pwd, String phone, int status) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.pwd = pwd;
		this.phone = phone;
		this.status = status;
	}
	public Admin() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + aid;
		result = prime * result + ((aname == null) ? 0 : aname.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result + ((pwd == null) ? 0 : pwd.hashCode());
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
		Admin other = (Admin) obj;
		if (aid != other.aid)
			return false;
		if (aname == null) {
			if (other.aname != null)
				return false;
		} else if (!aname.equals(other.aname))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		if (pwd == null) {
			if (other.pwd != null)
				return false;
		} else if (!pwd.equals(other.pwd))
			return false;
		if (status != other.status)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Admin [aid=" + aid + ", aname=" + aname + ", pwd=" + pwd
				+ ", phone=" + phone + ", status=" + status + "]";
	}
	
	
	
}
