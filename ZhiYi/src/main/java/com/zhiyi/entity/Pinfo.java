package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 发帖人信息表
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Pinfo implements Serializable {
	private int pid;       //发帖人编号
	private String pname;  //发帖人姓名
	private int znum;       //主题数
	private int tnum;        //帖子数
	private int pdays;     //签到天数
	private int status;      //状态
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getZnum() {
		return znum;
	}
	public void setZnum(int znum) {
		this.znum = znum;
	}
	public int getTnum() {
		return tnum;
	}
	public void setTnum(int tnum) {
		this.tnum = tnum;
	}
	public int getPdays() {
		return pdays;
	}
	public void setPdays(int pdays) {
		this.pdays = pdays;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Pinfo(int pid, String pname, int znum, int tnum, int pdays,
			int status) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.znum = znum;
		this.tnum = tnum;
		this.pdays = pdays;
		this.status = status;
	}
	public Pinfo() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + pdays;
		result = prime * result + pid;
		result = prime * result + ((pname == null) ? 0 : pname.hashCode());
		result = prime * result + status;
		result = prime * result + tnum;
		result = prime * result + znum;
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
		Pinfo other = (Pinfo) obj;
		if (pdays != other.pdays)
			return false;
		if (pid != other.pid)
			return false;
		if (pname == null) {
			if (other.pname != null)
				return false;
		} else if (!pname.equals(other.pname))
			return false;
		if (status != other.status)
			return false;
		if (tnum != other.tnum)
			return false;
		if (znum != other.znum)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Pinfo [pid=" + pid + ", pname=" + pname + ", znum=" + znum
				+ ", tnum=" + tnum + ", pdays=" + pdays + ", status=" + status
				+ "]";
	}
	
}
