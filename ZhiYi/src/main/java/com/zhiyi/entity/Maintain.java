package com.zhiyi.entity;

import java.io.Serializable;
import java.util.Date;
/**
 * 预约维修信息类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Maintain implements Serializable {
	private int mid;                   //维修编号
	private int usid;                  //会员编号
	private String mtype;              //手机型号
	private String sweb;               //服务网点
	private String mstatus;            //预约状态
	private Date mtime;                //预约时间
	private int status;                //状态
	
	public int getMid() {
		return mid;
	}
	public void setMid(int mid) {
		this.mid = mid;
	}
	public int getUsid() {
		return usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public String getMtype() {
		return mtype;
	}
	public void setMtype(String mtype) {
		this.mtype = mtype;
	}
	public String getSweb() {
		return sweb;
	}
	public void setSweb(String sweb) {
		this.sweb = sweb;
	}
	public String getMstatus() {
		return mstatus;
	}
	public void setMstatus(String mstatus) {
		this.mstatus = mstatus;
	}
	public Date getMtime() {
		return mtime;
	}
	public void setMtime(Date mtime) {
		this.mtime = mtime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Maintain(int mid, int usid, String mtype, String sweb,
			String mstatus, Date mtime, int status) {
		super();
		this.mid = mid;
		this.usid = usid;
		this.mtype = mtype;
		this.sweb = sweb;
		this.mstatus = mstatus;
		this.mtime = mtime;
		this.status = status;
	}
	public Maintain() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + mid;
		result = prime * result + ((mstatus == null) ? 0 : mstatus.hashCode());
		result = prime * result + ((mtime == null) ? 0 : mtime.hashCode());
		result = prime * result + ((mtype == null) ? 0 : mtype.hashCode());
		result = prime * result + status;
		result = prime * result + ((sweb == null) ? 0 : sweb.hashCode());
		result = prime * result + usid;
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
		Maintain other = (Maintain) obj;
		if (mid != other.mid)
			return false;
		if (mstatus == null) {
			if (other.mstatus != null)
				return false;
		} else if (!mstatus.equals(other.mstatus))
			return false;
		if (mtime == null) {
			if (other.mtime != null)
				return false;
		} else if (!mtime.equals(other.mtime))
			return false;
		if (mtype == null) {
			if (other.mtype != null)
				return false;
		} else if (!mtype.equals(other.mtype))
			return false;
		if (status != other.status)
			return false;
		if (sweb == null) {
			if (other.sweb != null)
				return false;
		} else if (!sweb.equals(other.sweb))
			return false;
		if (usid != other.usid)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Maintain [mid=" + mid + ", usid=" + usid + ", mtype=" + mtype
				+ ", sweb=" + sweb + ", mstatus=" + mstatus + ", mtime="
				+ mtime + ", status=" + status + "]";
	}
	
}
