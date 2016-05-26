package com.zhiyi.entity;

import java.io.Serializable;
import java.util.Date;
/**
 * 退货类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Back implements Serializable {
	private int bid;                    //退货编号
	private int oid;                    //订单号
	private int usid;                   //会员编号
	private String bmoney;              //退货金额
	private int bnum;                   //退货数量
	private Date  btime;                //退货时间
	private String bstatus;             //退货状态
	private String breason;             //退货原因
	private String bpoint;              //积分
	private String boperate;            //操作
	private int status;                 //状态
	
	public int getBid() {
		return bid;
	}
	public void setBid(int bid) {
		this.bid = bid;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getUsid() {
		return usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public String getBmoney() {
		return bmoney;
	}
	public void setBmoney(String bmoney) {
		this.bmoney = bmoney;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public Date getBtime() {
		return btime;
	}
	public void setBtime(Date btime) {
		this.btime = btime;
	}
	public String getBstatus() {
		return bstatus;
	}
	public void setBstatus(String bstatus) {
		this.bstatus = bstatus;
	}
	public String getBreason() {
		return breason;
	}
	public void setBreason(String breason) {
		this.breason = breason;
	}
	public String getBpoint() {
		return bpoint;
	}
	public void setBpoint(String bpoint) {
		this.bpoint = bpoint;
	}
	public String getBoperate() {
		return boperate;
	}
	public void setBoperate(String boperate) {
		this.boperate = boperate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public Back(int bid, int oid, int usid, String bmoney, int bnum,
			Date btime, String bstatus, String breason, String bpoint,
			String boperate, int status) {
		super();
		this.bid = bid;
		this.oid = oid;
		this.usid = usid;
		this.bmoney = bmoney;
		this.bnum = bnum;
		this.btime = btime;
		this.bstatus = bstatus;
		this.breason = breason;
		this.bpoint = bpoint;
		this.boperate = boperate;
		this.status = status;
	}
	public Back() {
		super();
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + bid;
		result = prime * result + ((bmoney == null) ? 0 : bmoney.hashCode());
		result = prime * result + bnum;
		result = prime * result
				+ ((boperate == null) ? 0 : boperate.hashCode());
		result = prime * result + ((bpoint == null) ? 0 : bpoint.hashCode());
		result = prime * result + ((breason == null) ? 0 : breason.hashCode());
		result = prime * result + ((bstatus == null) ? 0 : bstatus.hashCode());
		result = prime * result + ((btime == null) ? 0 : btime.hashCode());
		result = prime * result + oid;
		result = prime * result + status;
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
		Back other = (Back) obj;
		if (bid != other.bid)
			return false;
		if (bmoney == null) {
			if (other.bmoney != null)
				return false;
		} else if (!bmoney.equals(other.bmoney))
			return false;
		if (bnum != other.bnum)
			return false;
		if (boperate == null) {
			if (other.boperate != null)
				return false;
		} else if (!boperate.equals(other.boperate))
			return false;
		if (bpoint == null) {
			if (other.bpoint != null)
				return false;
		} else if (!bpoint.equals(other.bpoint))
			return false;
		if (breason == null) {
			if (other.breason != null)
				return false;
		} else if (!breason.equals(other.breason))
			return false;
		if (bstatus == null) {
			if (other.bstatus != null)
				return false;
		} else if (!bstatus.equals(other.bstatus))
			return false;
		if (btime == null) {
			if (other.btime != null)
				return false;
		} else if (!btime.equals(other.btime))
			return false;
		if (oid != other.oid)
			return false;
		if (status != other.status)
			return false;
		if (usid != other.usid)
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Back [bid=" + bid + ", oid=" + oid + ", usid=" + usid
				+ ", bmoney=" + bmoney + ", bnum=" + bnum + ", btime=" + btime
				+ ", bstatus=" + bstatus + ", breason=" + breason + ", bpoint="
				+ bpoint + ", boperate=" + boperate + ", status=" + status
				+ "]";
	}
	
	
}
