package com.zhiyi.entity;

import java.io.Serializable;
import java.util.Date;
/**
 * 发帖类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Ppost implements Serializable {
	private int ppid;                     //帖子编号
	private int pid;           //发帖人编号
	private String pname;        //名称
	private String zcontent;       //主题内容
	private String tcontent;       //帖子内容
	private String ppath;          //图片路径
	private Date ptime;           //发帖时间
	private int zan;              //点赞个数
	private String grade;         //平分
	private int tnum;             //回帖数
	private int status;           //状态
	
	public int getPpid() {
		return ppid;
	}
	public void setPpid(int ppid) {
		this.ppid = ppid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getZcontent() {
		return zcontent;
	}
	public void setZcontent(String zcontent) {
		this.zcontent = zcontent;
	}
	public String getTcontent() {
		return tcontent;
	}
	public void setTcontent(String tcontent) {
		this.tcontent = tcontent;
	}
	public String getPpath() {
		return ppath;
	}
	public void setPpath(String ppath) {
		this.ppath = ppath;
	}
	public Date getPtime() {
		return ptime;
	}
	public void setPtime(Date ptime) {
		this.ptime = ptime;
	}
	public int getZan() {
		return zan;
	}
	public void setZan(int zan) {
		this.zan = zan;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getTnum() {
		return tnum;
	}
	public void setTnum(int tnum) {
		this.tnum = tnum;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public Ppost(int ppid, int pid, String pname, String zcontent,
			String tcontent, String ppath, Date ptime, int zan, String grade,
			int tnum, int status) {
		super();
		this.ppid = ppid;
		this.pid = pid;
		this.pname = pname;
		this.zcontent = zcontent;
		this.tcontent = tcontent;
		this.ppath = ppath;
		this.ptime = ptime;
		this.zan = zan;
		this.grade = grade;
		this.tnum = tnum;
		this.status = status;
	}
	public Ppost() {
		super();
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((grade == null) ? 0 : grade.hashCode());
		result = prime * result + pid;
		result = prime * result + ((pname == null) ? 0 : pname.hashCode());
		result = prime * result + ((ppath == null) ? 0 : ppath.hashCode());
		result = prime * result + ppid;
		result = prime * result + ((ptime == null) ? 0 : ptime.hashCode());
		result = prime * result + status;
		result = prime * result
				+ ((tcontent == null) ? 0 : tcontent.hashCode());
		result = prime * result + tnum;
		result = prime * result + zan;
		result = prime * result
				+ ((zcontent == null) ? 0 : zcontent.hashCode());
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
		Ppost other = (Ppost) obj;
		if (grade == null) {
			if (other.grade != null)
				return false;
		} else if (!grade.equals(other.grade))
			return false;
		if (pid != other.pid)
			return false;
		if (pname == null) {
			if (other.pname != null)
				return false;
		} else if (!pname.equals(other.pname))
			return false;
		if (ppath == null) {
			if (other.ppath != null)
				return false;
		} else if (!ppath.equals(other.ppath))
			return false;
		if (ppid != other.ppid)
			return false;
		if (ptime == null) {
			if (other.ptime != null)
				return false;
		} else if (!ptime.equals(other.ptime))
			return false;
		if (status != other.status)
			return false;
		if (tcontent == null) {
			if (other.tcontent != null)
				return false;
		} else if (!tcontent.equals(other.tcontent))
			return false;
		if (tnum != other.tnum)
			return false;
		if (zan != other.zan)
			return false;
		if (zcontent == null) {
			if (other.zcontent != null)
				return false;
		} else if (!zcontent.equals(other.zcontent))
			return false;
		return true;
	}
	
	@Override
	public String toString() {
		return "Ppost [ppid=" + ppid + ", pid=" + pid + ", pname=" + pname
				+ ", zcontent=" + zcontent + ", tcontent=" + tcontent
				+ ", ppath=" + ppath + ", ptime=" + ptime + ", zan=" + zan
				+ ", grade=" + grade + ", tnum=" + tnum + ", status=" + status
				+ "]";
	}
	
}
