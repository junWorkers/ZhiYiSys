package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 服务信息类
 * @author Administrator
 *
 */
@SuppressWarnings("serial")
public class Service implements Serializable {
	private int sid;               //服务编号
	private String stype;           //服务类型
	private String sdescribe;       //服务描述
	private int status;            //状态
	
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getStype() {
		return stype;
	}
	public void setStype(String stype) {
		this.stype = stype;
	}
	public String getSdescribe() {
		return sdescribe;
	}
	public void setSdescribe(String sdescribe) {
		this.sdescribe = sdescribe;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Service(int sid, String stype, String sdescribe, int status) {
		super();
		this.sid = sid;
		this.stype = stype;
		this.sdescribe = sdescribe;
		this.status = status;
	}
	public Service() {
		super();
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((sdescribe == null) ? 0 : sdescribe.hashCode());
		result = prime * result + sid;
		result = prime * result + status;
		result = prime * result + ((stype == null) ? 0 : stype.hashCode());
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
		Service other = (Service) obj;
		if (sdescribe == null) {
			if (other.sdescribe != null)
				return false;
		} else if (!sdescribe.equals(other.sdescribe))
			return false;
		if (sid != other.sid)
			return false;
		if (status != other.status)
			return false;
		if (stype == null) {
			if (other.stype != null)
				return false;
		} else if (!stype.equals(other.stype))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Service [sid=" + sid + ", stype=" + stype + ", sdescribe="
				+ sdescribe + ", status=" + status + "]";
	}
}
