--我是王和君
--后台管理员表
create table admin(
	aid int primary key,   --管理员编号 
	aname varchar2(100) unique not null,  --管理员姓名
	pwd varchar2(20),            --管理员密码
	phone varchar2(20),          --联系方式
	status int default 1,                  --状态   
	available1  varchar2(30),        
    available2  varchar2(30),
    available3 varchar2(30)
);
drop table admin;
select * from gtype
select * from (select a.*,rownum rn from (select * from gtype where status=1 order by tid) a where 5>=rownum)b where rn>0
insert into admin values(seq_admin_aid.nextval,'qyb','aaa','18274761960',1,null,null,null);
drop sequence seq_admin_aid;
create sequence seq_admin_aid start with 1001 increment by 1;
select * from admin;
------------------------------------------------------------------------
--会员表 
create table users(
       usid int primary key,            --用户编号
       uname varchar(20) unique,      --用户名
       pwd varchar2(20) not null,       --密码
       pname varchar(20),               --真实姓名
       sex  varchar2(4) default '男'      --用户性别
              constraint CK_user_sex check(sex in ('男','女')),
       birth varchar2(100),             --生日
       birthplace varchar2(100),        --出生地
       address varchar2(100),           --居住地
       intro varchar2(500),            --自我介绍
       passport varchar2(25),          --证件号
       pic  varchar2(2000),        	   --图片
       tel varchar2(20) ,             --固定电话
       phone varchar2(20),            --手机
       QQ varchar2(20),               --qq
       email varchar2(30) unique,       --email
       ppoint varchar2(20),                      --积分
	   status int default 1,                      --状态
       available1  varchar2(30),        
       available2  varchar2(30),
       available3  varchar2(30) 
);
create sequence seq_users_usid start with 2001 increment by 1;
insert into users values(seq_users_usid.nextval,'什么鬼','aaa','李四','男','1999-10-10','湖南衡阳','湖南衡阳','傻逼一个','12345967889',null,'58966958512','15569683','1231231923','7859@qq.com','0',1,null,null,null);

select * from users;
drop table users;
drop sequence seq_users_usid;

update users set email='15617@qq.com'  where email='1561012827@qq.com';
select usid,uname,pwd from users where (uname='什么鬼' or email='aa') and pwd='aaa'
select * from users where (uname='什么鬼' or email='什么鬼') and pwd='aaa'

--------------------------------------------------------------------
--商城首页序列表
create table gtype(
       tid int primary key,               --序列编号
       tname varchar(50) not null,        --序列名称
       tdescribe varchar(50) not null,    --序列描述
       tpath varchar2(4000),              --图片路径
       status int default 1,              --状态
       available1  varchar2(30),  
       available2  varchar2(30),
       available3 varchar2(30)
);
create sequence seq_gtype_tid start with 3001 increment by 1;

insert into gtype values(seq_gtype_tid.nextval,'Z序列','Z9序列/Z7序列',null,1,null,null,null);
insert into gtype values(seq_gtype_tid.nextval,'Z序列','X序列',null,2,null,null,null);
drop table gtype;
drop sequence seq_gtype_tid;
select * from gtype;
---------------------------------------------------------------------
--商城商品信息表
create table goods(
  gid int primary key,               --商品编号
  gname varchar2(40) not null,       --商品名称
  tid int 
      constraint FK_goods_tid references gtype(tid),     --序列编号
  price varchar2(20) not null,       --商品价格
  gnum int,                          --库存
  descible varchar2(2000),           --商品描述
  gpath varchar2(2000),              --图片路径
  gposition int,                     --商城位置显示
  status int default 1,                      --状态
  available1  varchar2(30),  
  available2  varchar2(30),
  available3 varchar2(30)
);
create sequence seq_goods_gid start with 4001 increment by 1;
insert into goods values(seq_goods_gid.nextval,'nubiya Z9',3001,'3333',10,null,null,2,1,null,null,null);
select * from goods;

drop sequence seq_goods_gid;
drop table goods;4067
delete from goods where gid=4075
update goods set gposition=14 where gposition=15
select * from goods where gposition=14;
----------------------------------------------------------------------
--商品详细表
create table goodsInfo(
       iid int primary key,         --商品详细表编号
       gid int
           constraint FK_goodsInfo_gid references goods(gid),    --商品编号
	   giname varchar2(2000),                      --x名称
       gisketck varchar2(2000),                    --简述
	   giattribute varchar2(20),                --属性值
       gipath varchar2(2000),                    --图片路径
	   giposition  int,                           --位置
	   sataus1 int,                       --状态
	   available1  varchar2(30),  
	   available2  varchar2(30),
	   available3 varchar2(30)
);
create sequence seq_goodsInfo_iid start with 5001 increment by 1;
insert into goodsInfo values(seq_goodsInfo_iid.nextval,4027,'1','1','应用','../uploadPath/shipi.mp4',5,1,null,null,null);
select * from goodsInfo;

drop sequence seq_goodsInfo_iid;
drop table goodsInfo;
select giname,gisketck,gipath,giattribute,giposition,sataus1 from goodsInfo where gid=4022 and giattribute='概述' union select giname,gisketck,gipath,giattribute,giposition,sataus1 from goodsInfo where gid=4022 and giattribute='设计'

------------------------------------------------------------------------
--商品参数表
create table goodsPar(
	gpid int primary key,               --商品参数编号
	gid int
           constraint FK_goodsPar_gid references goods(gid),    --商品编号
	color varchar2(20),                --颜色
	gversion varchar2(40),             --版本
	meal varchar2(1000),                  --套餐
    gppath varchar2(2000),              --图片路径
	gpposition  int,                    --位置
    sataus2 int,                       --状态
	available1  varchar2(30),  
	available2  varchar2(30), 
	available3 varchar2(30)
);
create sequence seq_goodsPar_gpid start with 6001 increment by 1;
insert into goodsPar values(seq_goodsPar_gpid.nextval,4001,'白色','精英版',null,null,1,1,null,null,null);
select * from goodsPar;	

drop sequence seq_goodsPar_gpid;
drop table goodsPar;
select gp.gpid,gs.price from goodsPar gp,goods gs where gp.gid=4001 and gp.color='黑色' and gp.gid=gs.gid

------------------------------------------------------------------------
--意外宝
create table safe(
    ssid int primary key,               --意外保编号
    gid int 
        constraint FK_safe_gid references goods(gid),      --商品编号
    money varchar2(20),               --保险金额
	status int default 1,                      --状态
    available1  varchar2(30),  
    available2  varchar2(30),
    available3 varchar2(30)
);
create sequence seq_safe_ssid start with 1001 increment by 1;
select * from safe;

drop sequence seq_safe_ssid;
drop table safe;
---------------------------------------------------------------------------
--应用表
create table app(
      apid int primary key,               --应用编号
      apname varchar2(50) not null,       --应用名称
      appath varchar2(200),               --图片路径
      decrible varchar2(500),            --应用描述
	  status int default 1,                        --状态
      available1  varchar2(30),  
      available2  varchar2(30),
      available3 varchar2(30)
);
create sequence seq_app_apid start with 1001 increment by 1;
select * from app;

drop sequence seq_app_apid;
drop table app;

-----------------------------------------------------------------------------
--订单表
create table orders(
       osid int primary key,              --订单编号
       usid int
	   		constraint FK_order_usid references users(usid),    --会员编号  
      sname varchar2(50),                                      --发货人姓名
	  gpid int
       		constraint FK_order_gpid references goodsPar(gpid),      --商品参数编号
     statu varchar2(20),                   --状态值
     ddate  date,                          --订单时间
     xdate  date,                          --下单时间
     zstatus varchar2(20),                 --支付状态
     fstatus varchar2(20),                 --发货状态
     opoint  varchar2(20),                 --积分
	 status int default 1,
     available1  varchar2(30),  
	 available2  varchar2(30),
     available3 varchar2(30)
);
create sequence seq_order_osid start with 1001 increment by 1;

insert into orders values(seq_order_osid.nextval,2001,'张三',6001,null,to_date('2013-03-30','yyyy-mm-dd'),to_date('2013-03-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2001,'张三',6002,null,to_date('2013-03-30','yyyy-mm-dd'),to_date('2013-03-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2001,'张三',6003,null,to_date('2013-03-30','yyyy-mm-dd'),to_date('2013-03-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2001,'张三',6001,null,to_date('2013-03-30','yyyy-mm-dd'),to_date('2013-03-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2001,'张三',6003,null,to_date('2013-03-30','yyyy-mm-dd'),to_date('2013-03-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2001,'张三',6001,null,to_date('2013-03-30','yyyy-mm-dd'),to_date('2013-03-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2001,'张三',6061,null,to_date('2013-02-16','yyyy-mm-dd'),to_date('2015-06-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2001,'张三',6001,null,to_date('2013-02-16','yyyy-mm-dd'),to_date('2015-06-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2003,'张三',6021,null,to_date('2013-08-16','yyyy-mm-dd'),to_date('2015-08-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2003,'张三',6021,null,to_date('2013-08-16','yyyy-mm-dd'),to_date('2015-08-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
insert into orders values(seq_order_osid.nextval,2001,'张三',6001,null,to_date('2013-03-30','yyyy-mm-dd'),to_date('2013-03-30','yyyy-mm-dd'),null,null,'0',1,null,null,null);
select * from orders;

drop table orders; 
drop sequence seq_order_osid;
select sum(count(distinct gpid)) from orders group by gpid,xdate
select uname,gname,color,gversion,sum(onum) num,xdate from (select uname,gname,color,gversion,onum,xdate from users,orderInfo,orders,goodsPar,goods
 where orders.usid=users.usid and orderInfo.gpid=goodsPar.gpid and orderInfo.gpid=orders.gpid and orders.gpid=goodsPar.gpid and 
	goods.gid=goodsPar.gid and orderInfo.osid=orders.osid) group by uname,gname,color,gversion,xdate order by sum(onum) desc ;
select gs.gname,os.osid,os.sname,oi.money from goods gs,goodsPar gp,orders os,orderInfo oi where os.osid=oi.osid and gp.gpid=os.gpid and gs.gid=gp.gid and os.status=1;

select * from (
	select a.*,rownum rn from (
		select gname,color,gversion,sum(onum) num from (
			select gname,color,gversion,onum,xdate from orderInfo,orders,
				goodsPar,goods where orderInfo.gpid=goodsPar.gpid and
				orderInfo.gpid=orders.gpid and orders.gpid=goodsPar.gpid
				and goods.gid=goodsPar.gid and orderInfo.osid=orders.osid
				and xdate between to_date('2016-05-23','yyyy-mm-dd')
					and to_date('2016-05-23','yyyy-mm-dd')
					and goods.gid=4083
		) group by gname,color,gversion order by sum(onum) desc    
	) a where rownum<=10   
)b where rn>0

select * from (
			select a.*,rownum rn from (
				select gname,color,gversion,sum(onum) num from (
					select gname,color,gversion,onum,xdate from orderInfo,orders,
						goodsPar,goods where orderInfo.gpid=goodsPar.gpid and 
						orderInfo.gpid=orders.gpid and orders.gpid=goodsPar.gpid 
						and goods.gid=goodsPar.gid and orderInfo.osid=orders.osid 
					) group by gname,color,gversion order by sum(onum) desc
			) a where rownum<=10
		)b where rn>0

------------------------------------------------------------------------------
--订单详细表
create table orderInfo(
	oiid int primary key,                    --订单详细表编号
    osid int
          constraint FK_order_osid references orders(osid),      --订单编号
    gpid int
       constraint FK_orders_gpid references goodsPar(gpid),      --商品参数编号
     onum varchar2(20) not null,           --商品数量     
     price varchar2(20) not null,          --商品单价
     money varchar2(20),                   --实际价格
     operate varchar2(20),              --操作
     odescribe varchar2(500),           --描述
     status1 int default 1,				--状态
	 available1  varchar2(30),  
	 available2  varchar2(30),
	 available3 varchar2(30)		
);
create sequence seq_orderInfo_oiid start with 1001 increment by 1;

insert into orderInfo values(seq_orderInfo_oiid.nextval,1001,6001,50,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1002,6002,50,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1003,6003,2,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1004,6001,120,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1005,6003,3,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1006,6001,4,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1022,6061,100,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1023,6021,100,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1024,6021,600,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1024,6021,600,0,0,null,null,1,null,null,null);
insert into orderInfo values(seq_orderInfo_oiid.nextval,1021,6001,50,0,0,null,null,1,null,null,null);

select * from orderInfo;
drop table orderInfo;
drop sequence seq_orderInfo_oiid;
------------------------------------------------------------------------------
--退货表
create table back(
		bid int primary key,                               --退货编号
       oid int
           constraint FK_back_oid references orders(osid),    --订单号
        usid int
	     constraint FK_back_usid references users(usid),      --会员编号
        bmoney varchar2(20),                               --退货金额
        bnum int,                                 --退货数量
        btime date,                                        --退货时间
        bstatus varchar2(20),                              --退货状态
        breason varchar2(2000),                              --退货原因
        bpoint  varchar2(20),                              --积分
        boperate varchar2(20),                             --操作
		status int default 1,                                        --状态
        available1  varchar2(30),  
        available2  varchar2(30),
        available3 varchar2(30)
);
create sequence seq_back_bid start with 1001 increment by 1;
select * from back;

drop table back;
drop sequence seq_back_bid;
--------------------------------------------------------------------------------
--体验店
create table exstore(
		eid   int primary key,       --编号
       province varchar2(20),   --省份
       stname varchar2(50),  --体验店名字
       address varchar2(100),         --地址
		phone varchar2(20),           --联系方式
		etime varchar2(50),           --服务时间
		pattern varchar2(20),         --交通工具
		status int default 1,          --状态
        available1  varchar2(30),  
        available2  varchar2(30),
        available3 varchar2(30)
);
create sequence seq_exstore_eid start with 1001 increment by 1;
select * from exstore;

drop table exstore;
drop sequence seq_exstore_eid;
--------------------------------------------------------------------------------
--广告位表
create table ad(
       aid int primary key,           --广告位编号
       aposition varchar(20),          --广告位置
       asize varchar2(200),             --广告大小
	   status int default 1,                    --状态
	   available1  varchar2(30),  
       available2  varchar2(30),
       available3 varchar2(30)  
);
create sequence seq_ad_aid start with 1001 increment by 1;
insert into ad values(seq_ad_aid.nextval,'首页大','随意',1,null,null,null);
insert into ad values(seq_ad_aid.nextval,'首页小','随意',1,null,null,null);
insert into ad values(seq_ad_aid.nextval,'商城大','随意',1,null,null,null);
select * from ad

drop table ad;
drop sequence seq_ad_aid;
--------------------------------------------------------------------------------
--广告信息表
create table admessage(
	amid int primary key,    --广告信息编号
	aid int
	    constraint FK_admessage_aid references ad(aid),    --广告位编号
	mpath varchar(1000),                 --图片路径
	sdate  date,           --开始时间
	jdate date,           --结束时间
	weight int default 0,           --权重
	alink varchar2(40),        --链接
	status1 int default 1,              --状态
	available1  varchar2(30),  
    available2  varchar2(30),
    available3 varchar2(30)
);
create sequence seq_admessage_amid start with 2001 increment by 1;
insert into admessage values(seq_admessage_amid.nextval,1001,null,null,null,78,null,1,null,null,null);
select * from admessage;

drop table admessage;
drop sequence seq_admessage_amid;
select * from admessage where status1=1 order by weight desc

--------------------------------------------------------------------------------
--收货人信息表
create table receive(
	  rid int primary key,
      usid int
	         constraint FK_receive_usid references users(usid),      --用户编号
      rname varchar2(20) not null,     --收货人姓名
      address varchar2(20) not null,   --所在地
      xaddress varchar2(200) not null,  --详细地址
      zip varchar2(20),                --邮编
      phone varchar2(20) not null,     --手机号码
      rtime varchar2(100),                      --配送时间
	  status int default 1,
      available1  varchar2(30),  
      available2  varchar2(30),
      available3 varchar2(30)   
);
create sequence seq_receive_rid start with 1001 increment by 1;
insert into receive values(seq_receive_rid.nextval,2063,'cc','湖南衡阳','yu',400988,18675894876,1121,1,null,null,null);
select * from receive;

drop table receive;
drop sequence seq_receive_rid;
delete from receive where usid='2063';
select rid,rname,address,xaddress,phone from receive where status=1

--------------------------------------------------------------------------
--发货人信息表
create table sender(
	    sid int primary key,                 --发货人编号
      sname varchar2(20) not null,         --发货人姓名
      address varchar2(20),                --所在地
      xaddress varchar2(20) not null,      --详细地址
      zip varchar2(20),                    --邮编
      tel varchar2(20),                    --固定电话
      phone varchar2(20) not null,         --手机号码
	  status int default 1,
      available1  varchar2(30),  
      available2  varchar2(30),
      available3 varchar2(30)   
);
create sequence seq_sender_sid start with 1001 increment by 1;
select * from sender;

drop table sender;
drop sequence seq_sender_sid;
----------------------------------------------------------------------------
--预约维修表
create table maintain(
		mid int primary key,           --维修编号
       usid int
	         constraint FK_maintain_usid references users(usid),      --用户编号
       mtype varchar2(20) not null,   --手机型号
       sweb varchar2(20) not null,    --服务网点
       mstatus varchar2(20),          --预约状态
       mtime date not null,           --预约时间    
		status int default 1,    
       available1  varchar2(30),  
       available2  varchar2(30),
       available3 varchar2(30)  
);
create sequence seq_maintain_mid start with 1001 increment by 1;
select * from maintain;

drop table maintain;
drop sequence seq_maintain_mid;
-----------------------------------------------------------------------------
--服务表
create table serive(
       sid int primary key,              --服务编号
       stype varchar2(50) not null,      --服务类型
       sdescribe varchar2(50),           --服务描述
	   status int default 1,                       --状态
       available1  varchar2(30),  
       available2  varchar2(30),
       available3 varchar2(30)  
);
create sequence seq_serive_sid start with 1001 increment by 1;
select * from serive;

drop table serive;
drop sequence seq_serive_sid;
--------------------------------------------------------------------------------
--售后网点表
create table web(
      wid int primary key,              --网点编号
      wname varchar2(30) not null,      --网点名称
      wpath varchar2(30),               --图片路径
      wdecribe varchar2(20),            --网点描述
      status int default 1,                 
      available1  varchar2(30),  
      available2  varchar2(30),
      available3 varchar2(30)  
);
create sequence seq_web_wid start with 1001 increment by 1;
select * from web;
select * from admessage where status1=1 and aid= 1002 order by weight desc
drop table web;
drop sequence seq_web_wid;
--------------------------------------------------------------------------------
--发帖人信息表
create table pinfo(
	   pid int primary key,      --发帖人编号
       pname varchar2(20),        --发帖人姓名
       znum int,         --主题数量
       tnum int,         --帖子数量
       pdays int,                  --签到天数
      status int default 1,
       available1  varchar2(30),  
       available2  varchar2(30),
       available3 varchar2(30)  
);
create sequence seq_pinfo_pid start with 1001 increment by 1;
select * from pinfo;

drop table pinfo;
drop sequence seq_pinfo_pid;
----------------------------------------------------------------------------------
--发帖表
create table ppost(
	   ppid int primary key,                --发帖编号
	   pid int 
	        constraint FK_ppost_pid references pinfo(pid),  --发帖人编号
       pname varchar2(20) not null,        --名称
       zcontent varchar2(4000),            --主题内容
       tcontent varchar2(4000),            --帖子内容
       ppath varchar2(4000),               --图片路径
       ptime date,                         --发帖时间
       zan int,                   --点赞个数
       grade varchar2(20),                 --平分
       tnum int,                  --回帖数
       status int default 1,
       available1  varchar2(30),  
       available2  varchar2(30),
       available3 varchar2(30)  
);
create sequence seq_ppost_ppid start with 1001 increment by 1;
select * from ppost;

drop table ppost;
drop sequence seq_ppost_ppid;
----------------------------------------------------------------------------------
--回帖信息表
create table rpost(
	   rid int primary key,     --回帖信息编号
       ppid int
           constraint FK_rpost_ppid references ppost(ppid),   --发帖编号
       rname varchar2(20),      --回帖人名称
       rtime date,              --回帖时间
       rcontent varchar2(1000), --回帖内容
		status int default 1,
       available1  varchar2(30),  
       available2  varchar2(30),
       available3 varchar2(30)  
);
create sequence seq_rpost_rid start with 1001 increment by 1;
select * from rpost;

drop table rpost;
drop sequence seq_rpost_rid;
--------------------------------------------------------------------------------------
--版主信息表
create table host(
       hid int primary key,          --编号
       hname varchar2(20),           --名字
       tnum int,            --主题数量
       qnum int,            --帖子数量
		status int default 1,
       available1  varchar2(30),  
       available2  varchar2(30),
       available3 varchar2(30)  
);
create sequence seq_host_pid start with 1001 increment by 1
select * from host;

drop table host;
drop sequence seq_host_pid;
--------------------------------------------------------------------------
DROP TABLE "SCOTT"."USERSB";
CREATE TABLE USERSB (
ID VARCHAR2(32 CHAR) NOT NULL ,
ADDRESS VARCHAR2(255 CHAR) NULL ,
AVAILABLE1 VARCHAR2(255 CHAR) NULL ,
AVAILABLE2 VARCHAR2(255 CHAR) NULL ,
AVAILABLE3 VARCHAR2(255 CHAR) NULL ,
BIRTH TIMESTAMP(6)  NULL ,
BIRTHPLACE VARCHAR2(255 CHAR) NULL ,
EMAIL VARCHAR2(255 CHAR) NULL ,
INTRO VARCHAR2(255 CHAR) NULL ,
PASSPORT VARCHAR2(255 CHAR) NULL ,
PHONE VARCHAR2(255 CHAR) NULL ,
PIC VARCHAR2(255 CHAR) NULL ,
PNAME VARCHAR2(255 CHAR) NULL ,
PPOINT VARCHAR2(255 CHAR) NULL ,
PWD VARCHAR2(255 CHAR) NULL ,
QQ VARCHAR2(255 CHAR) NULL ,
SEX VARCHAR2(255 CHAR) NULL ,
STATUS NUMBER(10) NOT NULL ,
TEL VARCHAR2(255 CHAR) NULL ,
UNAME VARCHAR2(255 CHAR) NULL 
)

select * from usersb;


