-- **数据库级别：**  
--  显示所有数据库  
show databases;
--  进入某个数据库  
user demo;--进入名叫demo的数据库
--  创建一个数据库  
create database test1;--创建一个名叫test1的数据库
--  创建指定字符集的数据库  
create database test2 default character set 'utf8'--创建一个字符集为utf-8，名字为test2的数据库
--  显示数据库的创建信息   
show create database test1;
--  修改数据库的编码  
alter database demo character set utf8; 
--  删除一个数据库   
drop database test2;
-- **表级别**
--  修改表名
alter table student rename stu;
--  修改字段的数据类型
alter table stu modify age varchar(3);
--  修改字段名
alter table stu change name sname varchar(8);
--  添加字段
alter table stu add column addr varchar(50) default null;
--  删除字段
alter table stu drop column addr;
--  修改表的存储引擎
alter table stu engine=innodb;
--  删除表的外键约束
alter table stu drop foreign key 外键约束名;
--  删除一张表
drop table stu;
