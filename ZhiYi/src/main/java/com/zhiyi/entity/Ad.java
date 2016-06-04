package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 广告类
 * @author qyb
 *
 */
public class Ad implements Serializable {
	private static final long serialVersionUID = -328323352068470339L;
	private int aid;                //广告位编号
	private String aposition;       //广告位置
	private String asize;           //广告大小
	private int status;             //状态
	private int amid;               //广告信息编号
	private String mpath;            //图片
	private String sdate;             //开始时间
	private String jdate;             //结束时间
	private int weight;             //权重
	private String alink;            //链接
	private int status1;             //广告信息状态
	
	public String getMpath() {
		return mpath;
	}
	public void setMpath(String mpath) {
		this.mpath = mpath;
	}
	public int getAid() {
		return aid;
	}
	public int getAids() {
		return aid;
	}
	public void setAid(int aid) {
		this.aid = aid;
	}
	public String getAposition() {
		return aposition;
	}
	public void setAposition(String aposition) {
		this.aposition = aposition;
	}
	public String getAsize() {
		return asize;
	}
	public void setAsize(String asize) {
		this.asize = asize;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getAmid() {
		return amid;
	}
	public int getAmids() {
		return amid;
	}
	public void setAmid(int amid) {
		this.amid = amid;
	}
	public String getSdate() {
		return sdate;
	}
	public String getSdate10() {
		try {
			if(sdate.length()>10){
				return sdate.substring(0,10);
			}
		} catch (Exception e) {
			//e.printStackTrace();
		}
		return sdate;
	}
	public String getJdate10() {
		try {
			if(jdate.length()>10){
				return jdate.substring(0,10);
			}
		} catch (Exception e) {
			//e.printStackTrace();
		}
		return jdate;
	}
	public void setSdate(String sdate) {
		this.sdate = sdate;
	}
	public String getJdate() {
		return jdate;
	}
	public void setJdate(String jdate) {
		this.jdate = jdate;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getAlink() {
		return alink;
	}
	public void setAlink(String alink) {
		this.alink = alink;
	}
	public int getStatus1() {
		return status1;
	}
	public void setStatus1(int status1) {
		this.status1 = status1;
	}
	
	public Ad(int aid, String aposition, String asize, int status) {
		super();
		this.aid = aid;
		this.aposition = aposition;
		this.asize = asize;
		this.status = status;
	}
	public Ad(int amid,int aid,String mpath, String sdate, String jdate, int weight,
			String alink, int status1) {
		super();
		this.amid = amid;
		this.aid = aid;
		this.mpath=mpath;
		this.sdate = sdate;
		this.jdate = jdate;
		this.weight = weight;
		this.alink = alink;
		this.status1 = status1;
	}
	public Ad() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + aid;
		result = prime * result + ((alink == null) ? 0 : alink.hashCode());
		result = prime * result + amid;
		result = prime * result
				+ ((aposition == null) ? 0 : aposition.hashCode());
		result = prime * result + ((asize == null) ? 0 : asize.hashCode());
		result = prime * result + ((jdate == null) ? 0 : jdate.hashCode());
		result = prime * result + ((mpath == null) ? 0 : mpath.hashCode());
		result = prime * result + ((sdate == null) ? 0 : sdate.hashCode());
		result = prime * result + status;
		result = prime * result + status1;
		result = prime * result + weight;
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
		Ad other = (Ad) obj;
		if (aid != other.aid)
			return false;
		if (alink == null) {
			if (other.alink != null)
				return false;
		} else if (!alink.equals(other.alink))
			return false;
		if (amid != other.amid)
			return false;
		if (aposition == null) {
			if (other.aposition != null)
				return false;
		} else if (!aposition.equals(other.aposition))
			return false;
		if (asize == null) {
			if (other.asize != null)
				return false;
		} else if (!asize.equals(other.asize))
			return false;
		if (jdate == null) {
			if (other.jdate != null)
				return false;
		} else if (!jdate.equals(other.jdate))
			return false;
		if (mpath == null) {
			if (other.mpath != null)
				return false;
		} else if (!mpath.equals(other.mpath))
			return false;
		if (sdate == null) {
			if (other.sdate != null)
				return false;
		} else if (!sdate.equals(other.sdate))
			return false;
		if (status != other.status)
			return false;
		if (status1 != other.status1)
			return false;
		if (weight != other.weight)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Ad [aid=" + aid + ", aposition=" + aposition + ", asize="
				+ asize + ", status=" + status + ", amid=" + amid + ", mpath="
				+ mpath + ", sdate=" + sdate + ", jdate=" + jdate + ", weight="
				+ weight + ", alink=" + alink + ", status1=" + status1 + "]";
	}
}
