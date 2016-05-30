package com.zhiyi.entity;

import java.io.Serializable;
/**
 * 商品类（包含商品表和商品详细表的信息）
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class GoodsPar implements Serializable {
	private int gid;                 //商品编号
	private String gname;            //商品名称
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
	
	public GoodsPar(int gpid,String color,int gid,String gversion, String meal,
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
	
	public GoodsPar() {
		super();
	}
	@Override
	public String toString() {
		return "GoodsPar [gid=" + gid + ", gname=" + gname + ", gpid=" + gpid
				+ ", color=" + color + ", gversion=" + gversion + ", meal="
				+ meal + ", gppath=" + gppath + ", gpposition=" + gpposition
				+ ", status2=" + status2 + "]";
	}
}
