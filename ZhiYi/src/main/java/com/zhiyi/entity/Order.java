package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 订单类（包括订单表和订单详细表的属性）
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Order implements Serializable {
	private int oid;                      //订单编号
	private int osid;                      //订单编号
	private int usid;                     //会员编号
	private String sname;                      //发货人姓名
	private int gpid;                      //商品编号
	private String statu;                 //状态值
	private String ddate;                 //订单时间
	private String xdate;                 //下单时间
	private String zstatus;               //支付状态
	private String fsatus;                //发货状态
	private int opoint;                   //积分 
	private int status;                   //订单状态
	private int oiid;                     //订单详细编号
	private int onum;                     //商品数量
	private String price;                 //商品单机
	private String money;                 //实际价格
	private String operate;               //操作
	private String odescribe;             //描述
	private int status1;                  //订单详细状态
	
	
	private String gname;
	private String color;
	private String gversion;
	private int num;
	private String uname;
	public String rname;

	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getGversion() {
		return gversion;
	}
	public void setGversion(String gversion) {
		this.gversion = gversion;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}

	public int getOsid() {
		return osid;

	}
	public void setOsid(int osid) {
		this.osid = osid;
	}
	public int getUsid() {
		return usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public int getgpid() {
		return gpid;
	}
	public void setgpid(int gpid) {
		this.gpid = gpid;
	}
	public String getStatu() {
		return statu;
	}
	public void setStatu(String statu) {
		this.statu = statu;
	}
	public String getDdate() {
		return ddate;
	}
	public void setDdate(String ddate) {
		this.ddate = ddate;
	}
	public String getXdate() {
		return xdate;
	}
	public String getXdate10(){
		try {
			if(xdate.length()>10){
				return xdate.substring(0,10);
			}
		} catch (Exception e) {
			//e.printStackTrace();
		}
		return xdate;
	}
	
	public void setXdate(String xdate) {
		this.xdate = xdate;
	}
	public String getZstatus() {
		return zstatus;
	}
	public void setZstatus(String zstatus) {
		this.zstatus = zstatus;
	}
	public String getFsatus() {
		return fsatus;
	}
	public void setFsatus(String fsatus) {
		this.fsatus = fsatus;
	}
	public int getOpoint() {
		return opoint;
	}
	public void setOpoint(int opoint) {
		this.opoint = opoint;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getOiid() {
		return oiid;
	}
	public void setOiid(int oiid) {
		this.oiid = oiid;
	}
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getOperate() {
		return operate;
	}
	public void setOperate(String operate) {
		this.operate = operate;
	}
	public String getOdescribe() {
		return odescribe;
	}
	public void setOdescribe(String odescribe) {
		this.odescribe = odescribe;
	}
	public int getStatus1() {
		return status1;
	}
	public void setStatus1(int status1) {
		this.status1 = status1;
	}
	
	public Order(int osid, int usid, String sname, int gpid, String statu,
			String ddate, String xdate, String zstatus, String fsatus,
			int opoint, int status) {
		super();
		this.osid = osid;
		this.usid = usid;
		this.sname = sname;
		this.gpid = gpid;
		this.statu = statu;
		this.ddate = ddate;
		this.xdate = xdate;
		this.zstatus = zstatus;
		this.fsatus = fsatus;
		this.opoint = opoint;
		this.status = status;
	}
	public Order(int osid, int gpid, int oiid, int onum, String price, String money,
			String operate, String odescribe, int status1) {
		super();
		this.osid = osid;
		this.gpid=gpid;
		this.oiid = oiid;
		this.onum = onum;
		this.price = price;
		this.money = money;
		this.operate = operate;
		this.odescribe = odescribe;
		this.status1 = status1;
	}
	public Order() {
		super();
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	
	
	
	
	@Override
	public String toString() {
		return "Order [osid=" + osid + ", usid=" + usid + ", sname=" + sname
				+ ", gpid=" + gpid + ", statu=" + statu + ", ddate=" + ddate
				+ ", xdate=" + xdate + ", zstatus=" + zstatus + ", fsatus="
				+ fsatus + ", opoint=" + opoint + ", status=" + status
				+ ", oiid=" + oiid + ", onum=" + onum + ", price=" + price
				+ ", money=" + money + ", operate=" + operate + ", odescribe="
				+ odescribe + ", status1=" + status1 + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((ddate == null) ? 0 : ddate.hashCode());
		result = prime * result + ((fsatus == null) ? 0 : fsatus.hashCode());
		result = prime * result + gpid;
		result = prime * result + ((money == null) ? 0 : money.hashCode());
		result = prime * result
				+ ((odescribe == null) ? 0 : odescribe.hashCode());
		result = prime * result + oiid;
		result = prime * result + onum;
		result = prime * result + ((operate == null) ? 0 : operate.hashCode());
		result = prime * result + opoint;
		result = prime * result + osid;
		result = prime * result + ((price == null) ? 0 : price.hashCode());
		result = prime * result + ((sname == null) ? 0 : sname.hashCode());
		result = prime * result + ((statu == null) ? 0 : statu.hashCode());
		result = prime * result + status;
		result = prime * result + status1;
		result = prime * result + usid;
		result = prime * result + ((xdate == null) ? 0 : xdate.hashCode());
		result = prime * result + ((zstatus == null) ? 0 : zstatus.hashCode());
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
		Order other = (Order) obj;
		if (ddate == null) {
			if (other.ddate != null)
				return false;
		} else if (!ddate.equals(other.ddate))
			return false;
		if (fsatus == null) {
			if (other.fsatus != null)
				return false;
		} else if (!fsatus.equals(other.fsatus))
			return false;
		if (gpid != other.gpid)
			return false;
		if (money == null) {
			if (other.money != null)
				return false;
		} else if (!money.equals(other.money))
			return false;
		if (odescribe == null) {
			if (other.odescribe != null)
				return false;
		} else if (!odescribe.equals(other.odescribe))
			return false;
		if (oiid != other.oiid)
			return false;
		if (onum != other.onum)
			return false;
		if (operate == null) {
			if (other.operate != null)
				return false;
		} else if (!operate.equals(other.operate))
			return false;
		if (opoint != other.opoint)
			return false;
		if (osid != other.osid)
			return false;
		if (price == null) {
			if (other.price != null)
				return false;
		} else if (!price.equals(other.price))
			return false;
		if (sname == null) {
			if (other.sname != null)
				return false;
		} else if (!sname.equals(other.sname))
			return false;
		if (statu == null) {
			if (other.statu != null)
				return false;
		} else if (!statu.equals(other.statu))
			return false;
		if (status != other.status)
			return false;
		if (status1 != other.status1)
			return false;
		if (usid != other.usid)
			return false;
		if (xdate == null) {
			if (other.xdate != null)
				return false;
		} else if (!xdate.equals(other.xdate))
			return false;
		if (zstatus == null) {
			if (other.zstatus != null)
				return false;
		} else if (!zstatus.equals(other.zstatus))
			return false;
		return true;
	}
}
