package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 商品类（包含商品表和商品详细表的信息）
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class GoodsInfo implements Serializable {
	private int gid;                 //商品编号
	private int iid;                 //商品详细编号
	private String giname;            //名称
	private String gisketck;          //简述
	private String giattribute;       //属性值
	private String gipath;            //图片路径2
	private int giposition;        //商品详细的位置
	private int status1; 
	private String gname;            //商品名称
	       
	
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public int getGid() {
		return gid;
	}
	public int getGids() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public void setGids(int gid) {
		this.gid = gid;
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
	
	public GoodsInfo(int iid,int gid,  String giname, String gisketck,
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
	
	
	public GoodsInfo(int iid, int gid,int giposition, String giname, String gisketck,
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
	public GoodsInfo() {
		super();
	}
	@Override
	public String toString() {
		return "GoodsInfo [gid=" + gid + ", iid=" + iid + ", giname=" + giname
				+ ", gisketck=" + gisketck + ", giattribute=" + giattribute
				+ ", gipath=" + gipath + ", giposition=" + giposition
				+ ", status1=" + status1 + ", gname=" + gname + "]";
	}
}
