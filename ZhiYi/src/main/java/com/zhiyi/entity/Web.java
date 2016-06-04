package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 售后网点类
 * @author qyb
 *
 */
public class Web implements Serializable {
	private static final long serialVersionUID = -4965319082199886788L;
	private int wid;             //网点编号
	private String wname;        //网点名称
	private String wpath;        //图片路径
	private String wdecribe;     //网点描述
	private int status;          //状态
	public int getWid() {
		return wid;
	}
	public void setWid(int wid) {
		this.wid = wid;
	}
	public String getWname() {
		return wname;
	}
	public void setWname(String wname) {
		this.wname = wname;
	}
	public String getWpath() {
		return wpath;
	}
	public void setWpath(String wpath) {
		this.wpath = wpath;
	}
	public String getWdecribe() {
		return wdecribe;
	}
	public void setWdecribe(String wdecribe) {
		this.wdecribe = wdecribe;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Web(int wid, String wname, String wpath, String wdecribe, int status) {
		super();
		this.wid = wid;
		this.wname = wname;
		this.wpath = wpath;
		this.wdecribe = wdecribe;
		this.status = status;
	}
	public Web() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + status;
		result = prime * result
				+ ((wdecribe == null) ? 0 : wdecribe.hashCode());
		result = prime * result + wid;
		result = prime * result + ((wname == null) ? 0 : wname.hashCode());
		result = prime * result + ((wpath == null) ? 0 : wpath.hashCode());
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
		Web other = (Web) obj;
		if (status != other.status)
			return false;
		if (wdecribe == null) {
			if (other.wdecribe != null)
				return false;
		} else if (!wdecribe.equals(other.wdecribe))
			return false;
		if (wid != other.wid)
			return false;
		if (wname == null) {
			if (other.wname != null)
				return false;
		} else if (!wname.equals(other.wname))
			return false;
		if (wpath == null) {
			if (other.wpath != null)
				return false;
		} else if (!wpath.equals(other.wpath))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Web [wid=" + wid + ", wname=" + wname + ", wpath=" + wpath
				+ ", wdecribe=" + wdecribe + ", status=" + status + "]";
	}
}
