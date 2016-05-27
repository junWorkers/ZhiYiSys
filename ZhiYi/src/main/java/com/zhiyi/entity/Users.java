package com.zhiyi.entity;

import java.io.Serializable;

import com.zhiyi.util.MD5Encryption;
/**
 * 会员类
 * @author qyb
 *
 */
@SuppressWarnings("serial")
public class Users implements Serializable {
	private int usid;           //会员编号
	private String pname;       //用户名
	private String pwd;         //密码
	private String uname;       //真实姓名
	private String sex;         //性别
	private String birth;       //生日
	private String birthplace;  //出生地
	private String address;     //居住地
	private String intro;       //自我介绍
	private String passport;    //证件号
	private String pic;         //头像
	private String tel;         //固定电话
	private String phone;       //手机号码
	private String qq;          //qq
	private String email;       //email
	private String ppoint;      //积分
	private int status;      //状态
	
	public int getUsid() {
		return usid;
	}
	public int getUsids() {
		return usid;
	}
	public void setUsids(int usid) {
		this.usid = usid;
	}
	public void setUsid(int usid) {
		this.usid = usid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = MD5Encryption.createPassword(pwd);
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getBirthplace() {
		return birthplace;
	}
	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIntro() {
		return intro;
	}
	public void setIntro(String intro) {
		this.intro = intro;
	}
	public String getPassport() {
		return passport;
	}
	public void setPassport(String passport) {
		this.passport = passport;
	}
	public String getPic() {
		return pic;
	}
	public void setPic(String pic) {
		this.pic = pic;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPpoint() {
		return ppoint;
	}
	public void setPpoint(String ppoint) {
		this.ppoint = ppoint;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public Users(int usid, String pname, String pwd, String uname, String sex,
			String birth, String birthplace, String address, String intro,
			String passport, String pic, String tel, String phone, String qq,
			String email, String ppoint, int status) {
		super();
		this.usid = usid;
		this.pname = pname;
		this.pwd = pwd;
		this.uname = uname;
		this.sex = sex;
		this.birth = birth;
		this.birthplace = birthplace;
		this.address = address;
		this.intro = intro;
		this.passport = passport;
		this.pic = pic;
		this.tel = tel;
		this.phone = phone;
		this.qq = qq;
		this.email = email;
		this.ppoint = ppoint;
		this.status = status;
	}
	public Users() {
		super();
	}
	
	public Users(String pname, String pwd, String sex, String passport,
			String phone, String email) {
		super();
		this.pname = pname;
		this.pwd = pwd;
		this.sex = sex;
		this.passport = passport;
		this.phone = phone;
		this.email = email;
	}
	public Users(String pname,String pwd,String email){
		super();
		this.pname=pname;
		this.pwd=pwd;
		this.email=email;
	}
	public Users(int usid, String pname, String pwd, String uname, String sex,
			String birth, String birthplace, String address, String intro,
			String passport, String pic, String tel, String phone, String qq,
			String email) {
		super();
		this.usid = usid;
		this.pname = pname;
		this.pwd = pwd;
		this.uname = uname;
		this.sex = sex;
		this.birth = birth;
		this.birthplace = birthplace;
		this.address = address;
		this.intro = intro;
		this.passport = passport;
		this.pic = pic;
		this.tel = tel;
		this.phone = phone;
		this.qq = qq;
		this.email = email;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((address == null) ? 0 : address.hashCode());
		result = prime * result + ((birth == null) ? 0 : birth.hashCode());
		result = prime * result
				+ ((birthplace == null) ? 0 : birthplace.hashCode());
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((intro == null) ? 0 : intro.hashCode());
		result = prime * result
				+ ((passport == null) ? 0 : passport.hashCode());
		result = prime * result + ((phone == null) ? 0 : phone.hashCode());
		result = prime * result + ((pic == null) ? 0 : pic.hashCode());
		result = prime * result + ((pname == null) ? 0 : pname.hashCode());
		result = prime * result + ((ppoint == null) ? 0 : ppoint.hashCode());
		result = prime * result + ((pwd == null) ? 0 : pwd.hashCode());
		result = prime * result + ((qq == null) ? 0 : qq.hashCode());
		result = prime * result + ((sex == null) ? 0 : sex.hashCode());
		result = prime * result + status;
		result = prime * result + ((tel == null) ? 0 : tel.hashCode());
		result = prime * result + ((uname == null) ? 0 : uname.hashCode());
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
		Users other = (Users) obj;
		if (address == null) {
			if (other.address != null)
				return false;
		} else if (!address.equals(other.address))
			return false;
		if (birth == null) {
			if (other.birth != null)
				return false;
		} else if (!birth.equals(other.birth))
			return false;
		if (birthplace == null) {
			if (other.birthplace != null)
				return false;
		} else if (!birthplace.equals(other.birthplace))
			return false;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (intro == null) {
			if (other.intro != null)
				return false;
		} else if (!intro.equals(other.intro))
			return false;
		if (passport == null) {
			if (other.passport != null)
				return false;
		} else if (!passport.equals(other.passport))
			return false;
		if (phone == null) {
			if (other.phone != null)
				return false;
		} else if (!phone.equals(other.phone))
			return false;
		if (pic == null) {
			if (other.pic != null)
				return false;
		} else if (!pic.equals(other.pic))
			return false;
		if (pname == null) {
			if (other.pname != null)
				return false;
		} else if (!pname.equals(other.pname))
			return false;
		if (ppoint == null) {
			if (other.ppoint != null)
				return false;
		} else if (!ppoint.equals(other.ppoint))
			return false;
		if (pwd == null) {
			if (other.pwd != null)
				return false;
		} else if (!pwd.equals(other.pwd))
			return false;
		if (qq == null) {
			if (other.qq != null)
				return false;
		} else if (!qq.equals(other.qq))
			return false;
		if (sex == null) {
			if (other.sex != null)
				return false;
		} else if (!sex.equals(other.sex))
			return false;
		if (status != other.status)
			return false;
		if (tel == null) {
			if (other.tel != null)
				return false;
		} else if (!tel.equals(other.tel))
			return false;
		if (uname == null) {
			if (other.uname != null)
				return false;
		} else if (!uname.equals(other.uname))
			return false;
		if (usid != other.usid)
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "Users [usid=" + usid + ", pname=" + pname + ", pwd=" + pwd
				+ ", uname=" + uname + ", sex=" + sex + ", birth=" + birth
				+ ", birthplace=" + birthplace + ", address=" + address
				+ ", intro=" + intro + ", passport=" + passport + ", pic="
				+ pic + ", tel=" + tel + ", phone=" + phone + ", qq=" + qq
				+ ", email=" + email + ", ppoint=" + ppoint + ", status="
				+ status + "]";
	}
	
	
	
}
