CREATE TABLE CUSTOMERDB
(
NAME VARCHAR2(20),
USERNAME VARCHAR2(20) ,
EMAILID VARCHAR2(20),
MOBILE NUMBER(10),
GENDER VARCHAR2(10),
PASSWORD VARCHAR2(20),
CONSTRAINT PK_EMAIL PRIMARY KEY(EMAILID),
CONSTRAINT UNIQUE_USERNAME UNIQUE(USERNAME)
);
INSERT INTO CUSTOMERDB VALUES ('RAHUL','rah123','rrahul123@gmail.com',12345678,'MALE','a12345');
DROP TABLE CUSTOMERDB

CREATE TABLE ROOMDB
(
RNUM NUMBER(4) primary key,
CATEGORY VARCHAR2(20),
AC VARCHAR2(10),
BALCONY VARCHAR2(5),
TOPFLOOR VARCHAR2(5),
EASTFACING VARCHAR2(5),
TV VARCHAR2(5),
SOFA VARCHAR2(5),
REFRIGERATOR VARCHAR2(5),
THREEDOORCAB VARCHAR2(5),
STATUS VARCHAR2(20),
ACTIVATION VARCHAR2(50),
TARIFF number,
EMAILID VARCHAR2(20), FOREIGN KEY(EMAILID) REFERENCES CUSTOMERDB(EMAILID)
);
select * from CUSTOMERDB
CREATE SEQUENCE RSEQ MINVALUE 101 INCREMENT BY 1 START WITH 101 CACHE 20

select RSEQ.nextval from dual;

add room amount

DROP TABLE roomdb
DROP SEQUENCE RSEQ
delete from ROOMDB
update ROOMDB set CATEGORY='Standard' where RNUM=1
insert into roomdb(emailid) values('hi')

INSERT INTO ROOMDB (
rnum,category,ac,balcony,topfloor,eastfacing,tv,sofa,
refrigerator,threedoorcab,status,activation,tariff)
VALUES(RSEQ.NEXTVAL,'Standard','ýes','yes','yes','yes','yes','yes','yes','yes','open','active',2000)

INSERT INTO ROOMDB (
rnum,category,ac,balcony,topfloor,eastfacing,tv,sofa,
refrigerator,threedoorcab,status,activation,tariff)
VALUES(RSEQ.NEXTVAL,'Deluxe','no','yes','yes','yes','yes','yes','no','yes','open','active',2500)

select RSEQ.nextval from dual


INSERT INTO ROOMDB (
rnum,category,balcony,topfloor,eastfacing,tv,sofa,3
refrigerator,threedoorcab,status,activation)
VALUES(RSEQ.NEXTVAL,'yes','yes','yes','yes','yes','yes','yes','yes','open',
'01-05-2017 to 05-05-2017')

update ROOMDB set ACTIVATION='deactive' where RNUM=102 and activation='active'
select * from roomdb
select * from CUSTOMERDB


