package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 应用类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class App implements Serializable {
	private int apid;               //应用编号
	private String apname;          //应用名称
	private String appath;          //图片路径
	private String decrible;        //应用描述
	private int status;             //状态
	
	public int getApid() {
		return apid;
	}
	public void setApid(int apid) {
		this.apid = apid;
	}
	public String getApname() {
		return apname;
	}
	public void setApname(String apname) {
		this.apname = apname;
	}
	public String getAppath() {
		return appath;
	}
	public void setAppath(String appath) {
		this.appath = appath;
	}
	public String getDecrible() {
		return decrible;
	}
	public void setDecrible(String decrible) {
		this.decrible = decrible;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public App(int apid, String apname, String appath, String decrible,
			int status) {
		super();
		this.apid = apid;
		this.apname = apname;
		this.appath = appath;
		this.decrible = decrible;
		this.status = status;
	}
	public App() {
		super();
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + apid;
		result = prime * result + ((apname == null) ? 0 : apname.hashCode());
		result = prime * result + ((appath == null) ? 0 : appath.hashCode());
		result = prime * result
				+ ((decrible == null) ? 0 : decrible.hashCode());
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
		App other = (App) obj;
		if (apid != other.apid)
			return false;
		if (apname == null) {
			if (other.apname != null)
				return false;
		} else if (!apname.equals(other.apname))
			return false;
		if (appath == null) {
			if (other.appath != null)
				return false;
		} else if (!appath.equals(other.appath))
			return false;
		if (decrible == null) {
			if (other.decrible != null)
				return false;
		} else if (!decrible.equals(other.decrible))
			return false;
		if (status != other.status)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "App [apid=" + apid + ", apname=" + apname + ", appath="
				+ appath + ", decrible=" + decrible + ", status=" + status
				+ "]";
	}
	
}
