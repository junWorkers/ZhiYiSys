package com.zhiyi.entity;

import java.io.Serializable;

import com.zhiyi.beans.JsonObject;
/**
 * 商城首页序列类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Gtype implements Serializable {
	private int tid;                    //序列编号
	private String tname;               //序列名称
	private String tdescribe;           //序列描述
	private String tpath;               //图片路径
	private int status;              //状态
	
	public int getTid() {
		return tid;
	}
	public int getTids() {
		return tid;
	}

	public void setTids(int tid) {
		this.tid = tid;
	}
	
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public String getTdescribe() {
		return tdescribe;
	}
	public void setTdescribe(String tdescribe) {
		this.tdescribe = tdescribe;
	}
	public String getTpath() {
		return tpath;
	}
	public void setTpath(String tpath) {
		this.tpath = tpath;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public Gtype(int tid, String tname, String tdescribe, String tpath,
			int status) {
		super();
		this.tid = tid;
		this.tname = tname;
		this.tdescribe = tdescribe;
		this.tpath = tpath;
		this.status = status;
	}
	public Gtype() {
		super();
	}
	
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + status;
		result = prime * result
				+ ((tdescribe == null) ? 0 : tdescribe.hashCode());
		result = prime * result + tid;
		result = prime * result + ((tname == null) ? 0 : tname.hashCode());
		result = prime * result + ((tpath == null) ? 0 : tpath.hashCode());
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
		Gtype other = (Gtype) obj;
		if (status != other.status)
			return false;
		if (tdescribe == null) {
			if (other.tdescribe != null)
				return false;
		} else if (!tdescribe.equals(other.tdescribe))
			return false;
		if (tid != other.tid)
			return false;
		if (tname == null) {
			if (other.tname != null)
				return false;
		} else if (!tname.equals(other.tname))
			return false;
		if (tpath == null) {
			if (other.tpath != null)
				return false;
		} else if (!tpath.equals(other.tpath))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Gtype [tid=" + tid + ", tname=" + tname + ", tdescribe="
				+ tdescribe + ", tpath=" + tpath + ", status=" + status + "]";
	}
}
