package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 版主信息类
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
public class Host implements Serializable{
	private int hid;                //版主编号
	private String hname;           //名字
	private int tnum;              //主题数
	private int qnum;              //帖子数
	private int status;           //状态
	public int getHid() {
		return hid;
	}
	public void setHid(int hid) {
		this.hid = hid;
	}
	public String getHname() {
		return hname;
	}
	public void setHname(String hname) {
		this.hname = hname;
	}
	public int getTnum() {
		return tnum;
	}
	public void setTnum(int tnum) {
		this.tnum = tnum;
	}
	public int getQnum() {
		return qnum;
	}
	public void setQnum(int qnum) {
		this.qnum = qnum;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Host(int hid, String hname, int tnum, int qnum, int status) {
		super();
		this.hid = hid;
		this.hname = hname;
		this.tnum = tnum;
		this.qnum = qnum;
		this.status = status;
	}
	public Host() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + hid;
		result = prime * result + ((hname == null) ? 0 : hname.hashCode());
		result = prime * result + qnum;
		result = prime * result + status;
		result = prime * result + tnum;
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
		Host other = (Host) obj;
		if (hid != other.hid)
			return false;
		if (hname == null) {
			if (other.hname != null)
				return false;
		} else if (!hname.equals(other.hname))
			return false;
		if (qnum != other.qnum)
			return false;
		if (status != other.status)
			return false;
		if (tnum != other.tnum)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Host [hid=" + hid + ", hname=" + hname + ", tnum=" + tnum
				+ ", qnum=" + qnum + ", status=" + status + "]";
	}
	
	
}
