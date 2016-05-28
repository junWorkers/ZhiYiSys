package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 商品类（包含商品表和商品详细表的信息）
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Goods implements Serializable {
	private int gid;                 //商品编号
	private String gname;            //商品名称
	private int tid;                 //序列号
	private String tname;            //序列名称
	private String price;            //商品价格
	private int gnum;                //库存
	private String descible;         //商品描述
	private String gpath;            //图片路径1
	private int gposition;           //商城位置显示
	private int status;              //商品状态
	
	private int iid;                 //商品详细编号
	private String giname;            //名称
	private String gisketck;          //简述
	private String giattribute;       //属性值
	private String gipath;            //图片路径2
	private int giposition;        //商品详细的位置
	private int status1; 
	
	private int gpid;                //商品参数编号
	private String color;            //商品颜色
	private String gversion;         //版本
	private String meal;             //套餐
	private String gppath;            //图片路径2
	private int gpposition;        //商品参数的位置
	private int status2;              //商品参数状态
	
	public int getGid() {
		return gid;
	}
	public int getGids() {
		return gid;
	}
	public String getTname() {
		return tname;
	}
	public void setTname(String tname) {
		this.tname = tname;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public void setGids(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	public int getGnum() {
		return gnum;
	}
	public void setGnum(int gnum) {
		this.gnum = gnum;
	}
	public String getDescible() {
		return descible;
	}
	public void setDescible(String descible) {
		this.descible = descible;
	}
	public String getGpath() {
		return gpath;
	}
	public void setGpath(String gpath) {
		this.gpath = gpath;
	}
	
	public String getFirstPic() {
		if(gpath!=null && gpath.indexOf(",")>0){
			return gpath.substring(0,gpath.indexOf(","));
		}
		return gpath;
	}

	public String getDesStr() {
		if(descible!=null && descible.indexOf(",")>0){
			String[] des=descible.split(",");
			String str="<p class='sub-title' style='font-size:25px'>"+des[0]+"</p> <div class='quick-specs'>";
			for(int i=1;i<des.length;i++){
				str+="<p>"+des[i]+"</p>";
			}
			str=str+"<div>";
			return str;
		}
		return descible;
	}
	
	public String getDesStr1() {
		String str="";
		if(descible!=null && descible.indexOf(",")>0){
			String[] des=descible.split(",");
			for(int i=0;i<des.length;i++){
				str+="<p>"+des[i]+"</p>";
			}
			return str;
		}
		return descible;
	}
	

	public int getGposition() {
		return gposition;
	}
	public void setGposition(int gposition) {
		this.gposition = gposition;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getIid() {
		return iid;
	}
	public int getIids() {
		return iid;
	}
	public void setIid(int iid) {
		this.iid = iid;
	}
	public void setIids(int iid) {
		this.iid = iid;
	}
	public String getGiname() {
		return giname;
	}
	public void setGiname(String giname) {
		this.giname = giname;
	}
	public String getGisketck() {
		return gisketck;
	}
	public void setGisketck(String gisketck) {
		this.gisketck = gisketck;
	}
	public String getGiattribute() {
		return giattribute;
	}
	public void setGiattribute(String giattribute) {
		this.giattribute = giattribute;
	}
	public String getGipath() {
		return gipath;
	}
	public void setGipath(String gipath) {
		this.gipath = gipath;
	}
	
	public String getFirstPath() {
		if(gipath!=null && gipath.indexOf(",")>0){
			return gipath.substring(0,gipath.indexOf(","));
		}
		return gipath;
	}
	public int getGiposition() {
		return giposition;
	}
	public void setGiposition(int giposition) {
		this.giposition = giposition;
	}
	public int getStatus1() {
		return status1;
	}
	public void setStatus1(int status1) {
		this.status1 = status1;
	}
	public int getGpid() {
		return gpid;
	}
	public int getGpids() {
		return gpid;
	}
	public void setGpid(int gpid) {
		this.gpid = gpid;
	}
	public void setGpids(int gpid) {
		this.gpid = gpid;
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
	public String getMeal() {
		return meal;
	}
	public void setMeal(String meal) {
		this.meal = meal;
	}
	public String getGppath() {
		return gppath;
	}
	public void setGppath(String gppath) {
		this.gppath = gppath;
	}
	public int getGpposition() {
		return gpposition;
	}
	public void setGpposition(int gpposition) {
		this.gpposition = gpposition;
	}
	public int getStatus2() {
		return status2;
	}
	public void setStatus2(int status2) {
		this.status2 = status2;
	}
	public Goods(int gid, String gname, int tid, String price, String descible,
			int gnum,String gpath, int gposition, int status) {
		super();
		this.gid = gid;
		this.gname = gname;
		this.tid = tid;
		this.price = price;
		this.gnum=gnum;
		this.descible = descible;
		this.gpath = gpath;
		this.gposition = gposition;
		this.status=status;
	}
	public Goods(int iid,int gid,  String giname, String gisketck,
			String giattribute, String gipath, int giposition, int status1) {
		super();
		this.gid = gid;
		this.iid = iid;
		this.giname = giname;
		this.gisketck = gisketck;
		this.giattribute = giattribute;
		this.gipath = gipath;
		this.giposition = giposition;
		this.status1 = status1;
	}
	public Goods(int gpid,String color,int gid,String gversion, String meal,
			String gppath, int gpposition) {
		super();
		this.gid = gid;
		this.gpid = gpid;
		this.color = color;
		this.gversion = gversion;
		this.meal = meal;
		this.gppath = gppath;
		this.gpposition = gpposition;
	}
	
	public Goods(int iid, int gid,int giposition, String giname, String gisketck,
			String giattribute, String gipath) {
		super();
		this.iid = iid;
		this.gid = gid;
		this.giposition = giposition;
		this.giname = giname;
		this.gisketck = gisketck;
		this.giattribute = giattribute;
		this.gipath = gipath;
	}
	public Goods() {
		super();
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((color == null) ? 0 : color.hashCode());
		result = prime * result
				+ ((descible == null) ? 0 : descible.hashCode());
		result = prime * result
				+ ((giattribute == null) ? 0 : giattribute.hashCode());
		result = prime * result + gid;
		result = prime * result + ((giname == null) ? 0 : giname.hashCode());
		result = prime * result + ((gipath == null) ? 0 : gipath.hashCode());
		result = prime * result + giposition;
		result = prime * result
				+ ((gisketck == null) ? 0 : gisketck.hashCode());
		result = prime * result + ((gname == null) ? 0 : gname.hashCode());
		result = prime * result + gnum;
		result = prime * result + ((gpath == null) ? 0 : gpath.hashCode());
		result = prime * result + gpid;
		result = prime * result + gposition;
		result = prime * result + ((gppath == null) ? 0 : gppath.hashCode());
		result = prime * result + gpposition;
		result = prime * result
				+ ((gversion == null) ? 0 : gversion.hashCode());
		result = prime * result + iid;
		result = prime * result + ((meal == null) ? 0 : meal.hashCode());
		result = prime * result + ((price == null) ? 0 : price.hashCode());
		result = prime * result + status;
		result = prime * result + status1;
		result = prime * result + status2;
		result = prime * result + tid;
		result = prime * result + ((tname == null) ? 0 : tname.hashCode());
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
		Goods other = (Goods) obj;
		if (color == null) {
			if (other.color != null)
				return false;
		} else if (!color.equals(other.color))
			return false;
		if (descible == null) {
			if (other.descible != null)
				return false;
		} else if (!descible.equals(other.descible))
			return false;
		if (giattribute == null) {
			if (other.giattribute != null)
				return false;
		} else if (!giattribute.equals(other.giattribute))
			return false;
		if (gid != other.gid)
			return false;
		if (giname == null) {
			if (other.giname != null)
				return false;
		} else if (!giname.equals(other.giname))
			return false;
		if (gipath == null) {
			if (other.gipath != null)
				return false;
		} else if (!gipath.equals(other.gipath))
			return false;
		if (giposition != other.giposition)
			return false;
		if (gisketck == null) {
			if (other.gisketck != null)
				return false;
		} else if (!gisketck.equals(other.gisketck))
			return false;
		if (gname == null) {
			if (other.gname != null)
				return false;
		} else if (!gname.equals(other.gname))
			return false;
		if (gnum != other.gnum)
			return false;
		if (gpath == null) {
			if (other.gpath != null)
				return false;
		} else if (!gpath.equals(other.gpath))
			return false;
		if (gpid != other.gpid)
			return false;
		if (gposition != other.gposition)
			return false;
		if (gppath == null) {
			if (other.gppath != null)
				return false;
		} else if (!gppath.equals(other.gppath))
			return false;
		if (gpposition != other.gpposition)
			return false;
		if (gversion == null) {
			if (other.gversion != null)
				return false;
		} else if (!gversion.equals(other.gversion))
			return false;
		if (iid != other.iid)
			return false;
		if (meal == null) {
			if (other.meal != null)
				return false;
		} else if (!meal.equals(other.meal))
			return false;
		if (price == null) {
			if (other.price != null)
				return false;
		} else if (!price.equals(other.price))
			return false;
		if (status != other.status)
			return false;
		if (status1 != other.status1)
			return false;
		if (status2 != other.status2)
			return false;
		if (tid != other.tid)
			return false;
		if (tname == null) {
			if (other.tname != null)
				return false;
		} else if (!tname.equals(other.tname))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", gname=" + gname + ", tid=" + tid
				+ ", tname=" + tname + ", price=" + price + ", gnum=" + gnum
				+ ", descible=" + descible + ", gpath=" + gpath
				+ ", gposition=" + gposition + ", status=" + status + ", iid="
				+ iid + ", giname=" + giname + ", gisketck=" + gisketck
				+ ", giattribute=" + giattribute + ", gipath=" + gipath
				+ ", giposition=" + giposition + ", status1=" + status1
				+ ", gpid=" + gpid + ", color=" + color + ", gversion="
				+ gversion + ", meal=" + meal + ", gppath=" + gppath
				+ ", gpposition=" + gpposition + ", status2=" + status2 + "]";
	}
}
