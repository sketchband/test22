CREATE TABLE MEMBER10(
id varchar(30) primary key,
pw varchar(30),
name varchar(12),
email varchar(50),
job varchar(10),
hobby varchar(10),
address text
)engine=innodb charset=utf8;

select * from MEMBER10;