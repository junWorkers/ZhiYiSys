package com.zhiyi.entity;

import java.io.Serializable;
import java.util.Date;
/**
 * 回帖信息类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Rpost implements Serializable {
	private int rid;          //回帖信息编号
	private int ppid;      //发帖编号
	private String rname;      //回帖人姓名
	private Date rtime;        //回帖时间
	private String rcontent;    //回帖内容
	private int status;        //状态
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public int getPpid() {
		return ppid;
	}
	public void setPpid(int ppid) {
		this.ppid = ppid;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public Date getRtime() {
		return rtime;
	}
	public void setRtime(Date rtime) {
		this.rtime = rtime;
	}
	public String getRcontent() {
		return rcontent;
	}
	public void setRcontent(String rcontent) {
		this.rcontent = rcontent;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Rpost(int rid, int ppid, String rname, Date rtime, String rcontent,
			int status) {
		super();
		this.rid = rid;
		this.ppid = ppid;
		this.rname = rname;
		this.rtime = rtime;
		this.rcontent = rcontent;
		this.status = status;
	}
	public Rpost() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ppid;
		result = prime * result
				+ ((rcontent == null) ? 0 : rcontent.hashCode());
		result = prime * result + rid;
		result = prime * result + ((rname == null) ? 0 : rname.hashCode());
		result = prime * result + ((rtime == null) ? 0 : rtime.hashCode());
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
		Rpost other = (Rpost) obj;
		if (ppid != other.ppid)
			return false;
		if (rcontent == null) {
			if (other.rcontent != null)
				return false;
		} else if (!rcontent.equals(other.rcontent))
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
		return true;
	}
	@Override
	public String toString() {
		return "Rpost [rid=" + rid + ", ppid=" + ppid + ", rname=" + rname
				+ ", rtime=" + rtime + ", rcontent=" + rcontent + ", status="
				+ status + "]";
	}
}
