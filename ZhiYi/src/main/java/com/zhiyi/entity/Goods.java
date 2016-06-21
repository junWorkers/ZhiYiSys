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
	private int gpid;

	
	public int getGpid() {
		return gpid;
	}
	public void setGpid(int gpid) {
		this.gpid = gpid;
	}
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
	
	public Goods() {
		super();
	}
	@Override
	public String toString() {
		return "Goods [gid=" + gid + ", gname=" + gname + ", tid=" + tid
				+ ", tname=" + tname + ", price=" + price + ", gnum=" + gnum
				+ ", descible=" + descible + ", gpath=" + gpath
				+ ", gposition=" + gposition + ", status=" + status + ", gpid="
				+ gpid + "]";
	}
	
	
	
}
