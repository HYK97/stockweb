--------------------------------------------------------
--  ������ ������ - �ݿ���-5��-14-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence BBS_HASH_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KHY"."BBS_HASH_SEQ"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BBS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KHY"."BBS_SEQ"  MINVALUE 1 MAXVALUE 999999 INCREMENT BY 1 START WITH 121 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence BUN
--------------------------------------------------------

   CREATE SEQUENCE  "KHY"."BUN"  MINVALUE 1 MAXVALUE 299 INCREMENT BY 2 START WITH 201 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence COMMENT_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KHY"."COMMENT_SEQ"  MINVALUE 1 MAXVALUE 99999999999 INCREMENT BY 1 START WITH 321 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence HASHTAG_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KHY"."HASHTAG_SEQ"  MINVALUE 1 MAXVALUE 99999999 INCREMENT BY 1 START WITH 161 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence LIKEBBS_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "KHY"."LIKEBBS_SEQ"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table BBS
--------------------------------------------------------

  CREATE TABLE "KHY"."BBS" 
   (	"ID" NUMBER(19,0), 
	"USER_ID" VARCHAR2(50 BYTE), 
	"CONTENT" VARCHAR2(2048 BYTE), 
	"WRITEDATE" DATE, 
	"LIKE_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table BBS_HASH
--------------------------------------------------------

  CREATE TABLE "KHY"."BBS_HASH" 
   (	"HASH_ID" NUMBER(19,0), 
	"BBS_ID" NUMBER(19,0), 
	"HASH_BBS_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table COMMENTS
--------------------------------------------------------

  CREATE TABLE "KHY"."COMMENTS" 
   (	"COMMENT_ID" NUMBER, 
	"BBS_ID" NUMBER, 
	"COMMENT_CONTENT" VARCHAR2(2048 BYTE), 
	"COMMENT_AUTHOR" VARCHAR2(50 BYTE), 
	"COMMENT_WRITEDATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HASHTAG
--------------------------------------------------------

  CREATE TABLE "KHY"."HASHTAG" 
   (	"HASH_ID" NUMBER(19,0), 
	"HASH_TITLE" VARCHAR2(40 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table IMAGE
--------------------------------------------------------

  CREATE TABLE "KHY"."IMAGE" 
   (	"FILE_ID" VARCHAR2(100 BYTE), 
	"FILE_NAME" VARCHAR2(300 BYTE), 
	"BBS_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table LIKEBBS
--------------------------------------------------------

  CREATE TABLE "KHY"."LIKEBBS" 
   (	"LIKE_ID" NUMBER(19,0), 
	"USER_ID" VARCHAR2(20 BYTE), 
	"BBS_ID" NUMBER(19,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table STOCK
--------------------------------------------------------

  CREATE TABLE "KHY"."STOCK" 
   (	"CODE" CHAR(6 BYTE), 
	"LONG_NAME" VARCHAR2(100 BYTE), 
	"SHORT_NAME" VARCHAR2(100 BYTE), 
	"ENG_NAME" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table USERS
--------------------------------------------------------

  CREATE TABLE "KHY"."USERS" 
   (	"USER_ID" VARCHAR2(50 BYTE), 
	"USER_PW" VARCHAR2(30 BYTE), 
	"USER_BIRTH" DATE, 
	"USER_NAME" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for View BBSVIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "KHY"."BBSVIEW" ("NUM", "bbs_id", "author_id", "writedate", "content", "hashtag", "likecount", "commentcount", "user_like") AS 
  SELECT "NUM","bbs_id","author_id","writedate","content","hashtag","likecount","commentcount","user_like"
FROM   (SELECT ROWNUM num,
               c.*
        FROM   (SELECT a.id        "bbs_id",
                       a.user_id   "author_id",
                       a.writedate "writedate",
                       a.content   "content",
                       b.hashtag "hashtag",
                       nvl(k."likecount",0)"likecount", 
                       nvl(n."commentcount",0)"commentcount",
                       nvl(m."user_like",0)"user_like"
                FROM   bbs a
                       left join vhashtag b
                              ON a.id = b.id
                       left join (select l.bbs_id"BS2",count(l.bbs_id)"likecount" from likebbs l group by l.bbs_id) k
                              ON a.id = k.BS2
                       left join (select s.bbs_id"BS3",count(s.bbs_id)"commentcount" from comments s group by s.bbs_id) n
                            ON a.id = n.BS3
                       left join (select o.bbs_id"user_like" from likebbs o where o.user_id='222') m
                            ON a.id = m."user_like"
                ORDER  BY a.writedate DESC) c) f
;
--------------------------------------------------------
--  DDL for View BBS_HASH_VIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "KHY"."BBS_HASH_VIEW" ("id", "user_id", "writedate", "content", "hash_title") AS 
  SELECT a.id"id", a.user_id "user_id",a.writedate "writedate", a.content"content",b.hashtag"hash_title"
FROM   bbs a
left join vhashtag b
ON a.id = b.id
;
--------------------------------------------------------
--  DDL for View IMAGEVIEW
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "KHY"."IMAGEVIEW" ("ID", "image") AS 
  select a.id,nvl(LISTAGG(i.file_name, '|') within group (order by i.file_name),'0') "image"
from bbs a left join Image i on a.id=i.bbs_id group by a.id
;
--------------------------------------------------------
--  DDL for View VHASHTAG
--------------------------------------------------------

  CREATE OR REPLACE FORCE VIEW "KHY"."VHASHTAG" ("ID", "HASHTAG") AS 
  select a.id,LISTAGG(c.hash_title, '#') within group (order by c.hash_title) hashtag from bbs a left join bbs_hash b on a.id = b.bbs_id left join hashtag c on b.hash_id =c.hash_id group by a.id
;
REM INSERTING into KHY.BBS
SET DEFINE OFF;
Insert into KHY.BBS (ID,USER_ID,CONTENT,WRITEDATE,LIKE_ID) values (108,'admin','�۾��� �׽�Ʈ1 �����׽�Ʈ1',to_date('2021/05/14-21:44:36','YYYY/MM/DD-HH24:MI:SS'),null);
REM INSERTING into KHY.BBS_HASH
SET DEFINE OFF;
Insert into KHY.BBS_HASH (HASH_ID,BBS_ID,HASH_BBS_ID) values (147,108,77);
Insert into KHY.BBS_HASH (HASH_ID,BBS_ID,HASH_BBS_ID) values (148,108,78);
Insert into KHY.BBS_HASH (HASH_ID,BBS_ID,HASH_BBS_ID) values (149,108,79);
REM INSERTING into KHY.COMMENTS
SET DEFINE OFF;
Insert into KHY.COMMENTS (COMMENT_ID,BBS_ID,COMMENT_CONTENT,COMMENT_AUTHOR,COMMENT_WRITEDATE) values (318,108,'��۾��� ����','admin',to_date('2021/05/14-21:44:07','YYYY/MM/DD-HH24:MI:SS'));
Insert into KHY.COMMENTS (COMMENT_ID,BBS_ID,COMMENT_CONTENT,COMMENT_AUTHOR,COMMENT_WRITEDATE) values (319,108,'��','222',to_date('2021/05/14-21:58:26','YYYY/MM/DD-HH24:MI:SS'));
REM INSERTING into KHY.HASHTAG
SET DEFINE OFF;
Insert into KHY.HASHTAG (HASH_ID,HASH_TITLE) values (149,'�ؽ��±�3');
Insert into KHY.HASHTAG (HASH_ID,HASH_TITLE) values (147,'�ؽ��±�1');
Insert into KHY.HASHTAG (HASH_ID,HASH_TITLE) values (148,'�ؽ��±�2');
REM INSERTING into KHY.IMAGE
SET DEFINE OFF;
REM INSERTING into KHY.LIKEBBS
SET DEFINE OFF;
Insert into KHY.LIKEBBS (LIKE_ID,USER_ID,BBS_ID) values (84,'admin',108);
REM INSERTING into KHY.STOCK
SET DEFINE OFF;
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033130','����Ʋ�����Ϻ�','����Ʋ����','DigitalChosun');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105740','�����̶�','�����̶�','DK-Lok Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263020','�����̾ص�','�����̾ص�','DK&D');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290550','������Ƽ','������Ƽ','DK Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007340','��Ƽ�˿����Ƽ�꺸����','��Ƽ�˿����Ƽ��','DTR AUTOMOTIVE CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187220','��Ƽ�ؾ�','��Ƽ�ؾ�','DT&C.co.,ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026890','���Ǿ�������','���Ǿ�','DigitalPowerCommunications');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('163430','������','������','DPECO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131180','����','����','DILLI ILLUSTRATE INC.,');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317120','��н�','��н�','RANIX INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042510','��½�ť��','��½�ť��','RaonSecure Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('232680','�����ũ','�����ũ','RAONTEC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('300120','�������','�������','LaonPeople Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('171120','���̿�����','���̿�����','LION CHEMTECH CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069540','����Ʈ��','����Ʈ��','LIGHTRON INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('285770','���������̾���ũ�����','���������̾���ũ�����','Life Science Technology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347700','�������ø�ƽ��','�������ø�ƽ��','Life Semantics Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214260','���Ľ�','���Ľ�','Raphas Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115390','���ض�������','���ض�','LOCK&LOCK CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200350','��������','��������','RaemongRaein.Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('171010','����ũ���','����ũ���','RAM TECHNOLOGY CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084650','������ͽ�','������ͽ�','LabGenomics. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217500','����','����','RUSSELL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092590','�����Ǿ�','�����Ǿ�','Luxpia');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033600','����','����','LUXL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('141080','�����͹��̿����̾�','�����͹��̿�','LegoChem Biosciences Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060300','����ι�','����ι�','REDROVER CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038390','����ĸ����','����ĸ����','RedcapTour Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('294140','����','����','LEMON COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('228670','����','����','Ray Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('228850','���̾�','���̾�','RAYENCE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('281740','����ũ��Ƽ������','����ũ��Ƽ������','Lake Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('277810','���κ���κ�ƽ��','���κ���κ�ƽ��','Rainbow Robotics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('179720','�����ӽ�','�����ӽ�','LendingMachine Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215100','�κ��κ�','�κ��κ�','RoboRobo Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090360','�κ���Ÿ','�κ���Ÿ','Robostar Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238500','�κ�����','�κ�����','Robo3');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108490','�κ�Ƽ��','�κ�Ƽ��','ROBOTIS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900260','�ν������ͳ��ų�','�ν���','Rothwell International Co., Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067730','�����ý�','�����ý�','LOGISYS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071280','��ü�ý�����','��ü�ý�����','RORZE SYSTEMS CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032350','�Ե��������� ������','�Ե���������','LOTTE TOUR DEVELOPMENT CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('330590','�Ե�����������','�Ե�����','LOTTE REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000400','�Ե����غ��躸����','�Ե����غ���','LotteNon-LifeInsurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023530','�Ե����� ������','�Ե�����','LOTTE SHOPPING CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004000','�Ե�����ȭ�к�����','�Ե�����ȭ��','LOTTE Fine Chemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('286940','�Ե�������ź�����','�Ե��������','LOTTE DATA COMMUNICATION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('280360','�Ե�����������','�Ե�����','LOTTE CONF');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00499K','�Ե�����1�켱��','�Ե����ֿ�','Lotte Corporation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004990','�Ե����ֺ�����','�Ե�����','Lotte Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005305','�Ե�ĥ������1�켱��','�Ե�ĥ����','LotteChilsungBeverage(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005300','�Ե�ĥ�����Ẹ����','�Ե�ĥ��','LotteChilsungBeverage');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011170','�Ե��ɹ�Į������','�Ե��ɹ�Į','LOTTE CHEMICAL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002270','�Ե�Ǫ�庸����','�Ե�Ǫ��','LotteFood');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071840','�Ե����̸�Ʈ������','�Ե����̸�Ʈ','LOTTE Himart');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038060','��ེ','��ེ','LUMENS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('162120','������ũ�����','������ũ�����','LUKEN Technologies');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('253610','��Ʈ��','��Ʈ��','Rootloc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085370','��Ʈ�δ�','��Ʈ�δ�','Lutronic Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('08537M','��Ʈ�δ�3�켱��(��ȯ)','��Ʈ�δ�3��C','Lutronic(3PC)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060240','�����ڸ���','�����ڸ���','LONGTU KOREA Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058470','�������','�������','LEENO Industrial Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039980','���뽺','���뽺','LEENOS CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019570','������ �������','������ �������','Leaders Technology Investment Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016100','�������ڽ���ƽ','�������ڽ���ƽ','LEADERS COSMETICS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012700','��������','��������','The LEADCORP, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('302550','���޵�','���޵�','REMED CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029480','�����ַ��','�����ַ��','Lix Solution Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('277070','����վƽþ��κ���Ʈ��Ʈ','����վƽþ�','Lindeman Asia Investment Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042500','����Ʈ','����Ʈ','RingNet Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('219420','��ũ���Ͻý�','��ũ���Ͻý�','Linkgenesis Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027740','����Ŀ������','����Ŀ','MANIKER');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('195500','����Ŀ��������','����Ŀ��������','Maniker F&G');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222810','���̴���AI','���̴���AI','Midas AI Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('305090','����ũ�ε���Ż','����ũ�ε���Ż','Micro Digital Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('147760','����ũ��������','����ũ��������','Micro Friend Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('169330','��ũ�ιп��극��','���극��','Macromill Embrain Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038290','��ũ����','��ũ����','Macrogen, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204320','����������','����','Mando Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001080','��ȣ����������','��ȣ����','ManhoRope&Wire');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('220630','������ġ�����۴�','������ġ','MOM''S TOUCH&Co.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267980','��������','��������','Maeil Dairies Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005990','����Ȧ����','����Ȧ����','MAEIL HOLDINGS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('127160','��������ũ��','��������ũ��','MAGICMICRO CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093520','��Ŀ��','��Ŀ��','MAKUS, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('141070','�ƽ�����','�ƽ�����','MAXROTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088980','�������ѱ�������������ȸ�� ������','������������','Macquarie Korea Infrastructure Fund');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100590','��ť��','��ť��','Mercury Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067280','��Ƽķ�۽�','��Ƽķ�۽�','Multicampus Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072870','�ް����͵�','�ް����͵�','MegaStudy Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215200','�ް����͵���','�ް����͵���','MegaStudyEdu Co. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('133750','�ް�����','�ް�����','MegaMD Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('235980','�޵�����','�޵�����','MedPacto, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200580','�޵����','�޵����','MEDYSSEY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041920','�޵�Ƴ�','�޵�Ƴ�','MEDIANA Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('233250','�޵�ȵ�뽺ƽ','�޵�ȵ�뽺ƽ','Median Diagnostics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014100','�޵�ӽ�','�޵�ӽ�','Medience Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('236340','�޵����޸��ɾ�','�޵����޸��ɾ�','Medizen Humancare');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054180','�޵��۽�','�޵��۽�','MEDICOX Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086900','�޵��彺','�޵��彺','Medy-Tox Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078160','�޵�����Ʈ','�޵�����Ʈ','MEDIPOST CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065650','�޵����е��Ƽ','�޵�����','Medifron DBT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138040','�޸�����������ȸ�纸����','�޸�����������','Meritz Financial Group');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008560','�޸������Ǻ�����','�޸�������','MERITZ SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000060','�޸���ȭ���ػ��躸����','�޸���ȭ��','Meritz Fire & Marine Insurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021880','���̽�ĳ��Ż','���̽�ĳ��Ż','MASON CAPITAL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140410','������','������','Mezzion Pharma Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241770','��ī��','��ī��','MECARO.CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090370','��Ÿ����������','��Ÿ����','METALABS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('059210','��Ÿ���̿��޵�','��Ÿ���̿��޵�','META BIOMED.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058110','�߾��̾�����','�߾��̾�����','MEKICS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096640','���Ľ�','���Ľ�','Melfas Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017180','������ ������','������','MyungMoon Pharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('257370','��Ƽ������','��Ƽ������','Mstns Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009900','��Ż��������','��Ż��','MYOUNG SHIN INDUSTRY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267060','����Ȧ����','����Ȧ����','Myungjin Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012690','�𳪸��ں�����','�𳪸���','Monalisa');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005360','�𳪹̺�����','�𳪹�','Monami');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080420','����̳�Ĩ','����̳�Ĩ','Moda-InnoChips Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080160','��������Ʈ��ũ','�������','MODETOUR NETWORK INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204210','��������������','��������','MODETOURREIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100030','����ϸ���','����ϸ���','Mobileleader Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('087260','����Ͼ��ö��̾�','����Ͼ��ö��̾�','MOBILE APPLIANCE, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101330','���̽�','���̽�','MOBASE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012860','���̽�����','���̽�����','MOBASE ELECTRONICS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348030','��񸯽�','��񸯽�','MOBIRIX Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('250060','���','���','Mobiis Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033200','�����','�����','MOATECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009680','����к�����','�����','MOTONIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('118990','��Ʈ����','��Ʈ����','MOTREX CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006920','������','������','Mohenz. Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001810','����������','����SP','MOORIM SP CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009200','���������ۺ�����','����������','MOORIM PAPER');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009580','�����Ǿ��Ǻ�����','����P&P','Moorim P&P');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322970','�����޵�','�����޵�','Moogene Medi');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('098120','(��)����ũ�����ؼַ��','����ũ�����ؼ�','Micro Contact Solution Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131100','(��)��ī���̾ؿ�','��ī���̾ؿ�','SKY E&M Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009520','(��)�����ڿ���','�����ڿ���','POSCO M-TECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095570','AJ��Ʈ����������','AJ��Ʈ����','AJ Networks Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006840','AKȦ����������','AKȦ����','AK Holdings, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('282330','BGF�����Ϻ�����','BGF������','BGF Retail');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027410','BGF������','BGF','BGF');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138930','BNK�������ֺ�����','BNK��������','BNK Financial Group Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001465','BYC1�켱��','BYC��','BYC(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001460','BYC������','BYC','BYC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001045','CJ1�켱��','CJ��','CJ(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00104K','CJ4�켱��(��ȯ)','CJ4��(��ȯ)','CJ(4PC)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001040','CJ������','CJ','CJ Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011155','CJ��Ǫ��1�켱��','CJ��Ǫ��1��','CJSEAFOODCORPORATION(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011150','CJ��Ǫ�庸����','CJ��Ǫ��','CJSEAFOODCORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058820','CMG����','CMG����','CMG Pharmaceutical Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000590','CSȦ����������','CSȦ����','CSHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012030','DB Inc.������','DB','DB Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016610','DB�������ں�����','DB��������','DB Financial Investment Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005830','DB���غ��躸����','DB���غ���','DB INSURANCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000995','DB������1�켱��','DB������1��','DB HiTek Co.,LTD(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000990','DB�����غ�����','DB������','DB HiTek Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('139130','DGB�������ֺ�����','DGB��������','DGB Financial Group');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001530','DI���Ϻ�����','DI����','DI DONGIL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000215','DL1�켱��','DL��','DL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001880','DL�Ǽ�������','DL�Ǽ�','DLConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000210','DL������','DL','DL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('37550K','DL�̾ؾ�1�켱��','DL�̾ؾ���','DL E&C CO., LTD.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('375500','DL�̾ؾ�������','DL�̾ؾ�','DL E&C CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('155660','DSR������','DSR','DSR CORP');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069730','DSR����������','DSR����','DSRWIRECORP');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017940','E1������','E1','E1Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('365550','ESR�˴޽������������','ESR�˴޽������','ESR KENDALL SQUARE REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050120','ESť��','ESť��','ES CUBE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007700','F&F������','F&F','F&F');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078935','GS1�켱��','GS��','GS Holdings(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006360','GS�Ǽ�������','GS�Ǽ�','GS Engineering & Construction Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078930','GS������','GS','GS Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012630','HDC������','HDC','HDC HOLDINGS CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('294870','HDC���������ߺ�����','HDC����������','HYUNDAI DEVELOPMENT COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003560','IHQ������','IHQ','IHQ');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('175330','JB�������ֺ�����','JB��������','JB Financial Group Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234080','JW������к�����','JW�������','JW LIFESCIENCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001065','JW�߿�����1�켱��','JW�߿������','JWPHARMACEUTICAL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001067','JW�߿�����2�켱��(����)','JW�߿�����2��B','JWPHARMACEUTICAL(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001060','JW�߿����ຸ����','JW�߿�����','JWPHARMACEUTICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096760','JWȦ���� ������','JWȦ����','JW HOLDINGS CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105560','KB�������� ������','KB����','KB Financial Group');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024120','KB����ý�','KB����ý�','KB Autosys Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009070','KCTC ������','KCTC','KCTC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044180','KD','KD','KD Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016385','KG������ö1�켱��','KG������ö��','KG DONGBUSTEEL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016380','KG������ö������','KG������ö','KG DONGBUSTEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001390','KG�ɹ�Į������','KG�ɹ�Į','KG Chemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001940','KISCOȦ����������','KISCOȦ����','KISCO Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025000','KPX�ɹ�Į������','KPX�ɹ�Į','KPXCHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092230','KPXȦ����������','KPXȦ����','KPXHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000040','KR���ͽ�������','KR���ͽ�','KR MOTORS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093050','LF������','LF','LF');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003555','LG1�켱��','LG��','LG Corp.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034220','LG���÷��̺�����','LG���÷���','LG Display');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003550','LG������','LG','LG Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001120','LG��纸����','LG���','LGInternational');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051905','LG��Ȱ�ǰ�1�켱��','LG��Ȱ�ǰ���','LGHOUSEHOLD&HEALTHCARE,LTD(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051900','LG��Ȱ�ǰ�������','LG��Ȱ�ǰ�','LGHOUSEHOLD&HEALTHCARE,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032640','LG���÷���������','LG���÷���','LG Uplus');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011070','LG�̳��غ�����','LG�̳���','LG Innotek');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066575','LG����1�켱��','LG���ڿ�','LGELECTRONICS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066570','LG���ں�����','LG����','LGELECTRONICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051915','LGȭ��1�켱��','LGȭ�п�','LGCHEM,LTD(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051910','LGȭ�к�����','LGȭ��','LGCHEM,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079550','LIG�ؽ���������','LIG�ؽ���','LIG Nex1 Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010120','LS ELECTRIC������','LS ELECTRIC','LS ELECTRIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000680','LS��Ʈ����������','LS��Ʈ����','LSNetworks');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006260','LS������','LS','LS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023150','MH��ź�ú�����','MH��ź��','MHETHANOL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035420','NAVER������','NAVER','NAVER');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('181710','NHN������','NHN','NHN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('338100','NH�����Ӹ���������','NH�����Ӹ���','NH Prime REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034310','NICE������','NICE','NICEHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008260','NI��ƿ������','NI��ƿ','NI STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004255','NPC1�켱��','NPC��','NPC(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004250','NPC������','NPC','NPC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010060','OCI������','OCI','OCI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010955','S-Oil1�켱��','S-Oil��','S-Oil(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010950','S-Oil������','S-Oil','S-OilCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950110','SBI����ũ�ַ����','SBI����ũ�ַ����','SBI FinTech Solutions Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101060','SBS�̵��Ȧ����������','SBS�̵��Ȧ����','SBS Media Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005090','SGC������������','SGC������','SGC Energy');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001380','SG�۷ι�������','SG�۷ι�','SG GLOBAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002360','SH������ȭ�к�����','SH������ȭ��','SH ENERGY & CHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009160','SIMPAC������','SIMPAC','SIMPACInc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123700','SJM������','SJM','SJM CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025530','SJMȦ����������','SJMȦ����','SJM HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('03473K','SK1�켱��','SK��','SK(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011790','SKC������','SKC','SKC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018670','SK����������','SK����','SKGas');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001745','SK��Ʈ����1�켱��','SK��Ʈ������','SKNetworksCo.,Ltd(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001740','SK��Ʈ����������','SK��Ʈ����','SKNetworksCo.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('210980','SK��ص�����','SK��ص�','SK D&D Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034730','SK������','SK','SK Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096775','SK�̳뺣�̼� 1�켱��','SK�̳뺣�̼ǿ�','SK Innovation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096770','SK�̳뺣�̼� ������','SK�̳뺣�̼�','SK Innovation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001515','SK����1�켱��','SK���ǿ�','SKSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001510','SK���Ǻ�����','SK����','SKSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('28513K','SK�ɹ�Į1�켱��','SK�ɹ�Į��','SKCHEMICALS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('285130','SK�ɹ�Į������','SK�ɹ�Į','SKCHEMICALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017670','SK�ڷ��޺�����','SK�ڷ���','SKTelecom');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064960','SNT��Ƽ�꺸����','SNT��Ƽ��','SNT MOTIV');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100840','SNT������������','SNT������','SNTEnergy Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003570','SNT�߰���������','SNT�߰���','SNT DYNAMICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036530','SNTȦ����������','SNTȦ����','SNT Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005610','SPC�︳������','SPC�︳','SPC SAMLIP');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011810','STX������','STX','STX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('077970','STX����������','STX����','STXEngineCo.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071970','STX�߰���������','STX�߰���','STX Heavy Industries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084870','TBH�۷ι�������','TBH�۷ι�','TBH GLOBAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002710','TCC��ƿ������','TCC��ƿ','TCC STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024070','WISCOM������','WISCOM','WISCOM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079940','�����','�����','GABIA, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078890','���¹̵��','���¹̵��','KAON Media Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000500','��������������','��������','GAONCABLE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192410','������','������','Gamma Nu Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036620','�������۷��̼�','�������۷��̼�','GAMSUNG Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000860','���������ں�����','����������','KANGNAM JEVISCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217730','�����۹��̿���','�����۹��̿���','KANGSTEM BIOTECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114190','����','����','KANGWON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035250','�������庸����','��������','Kangwon Land, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094480','�����þƸӴ�Ʈ��','�����þƸӴ�Ʈ��','GalaxiaMoneytree Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011420','�����þƿ�����������','�����þƿ�����','GALAXIA SM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063080','���Ӻ�','���Ӻ�','GAMEVIL. INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039240','�泲��ƿ','�泲��ƿ','Kyeong Nam Steel Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053950','�泲����','�泲����','KYUNG NAM PHARM.CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('223310','�泲�����ｺ�ɾ�','�泲�����ｺ�ɾ�','KYUNG NAM PHARM HEALTH CARE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002100','�������','���','Kyungnong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009450','�浿���񿣺�����','�浿����','KYUNGDONGNAVIEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267290','�浿���ð���������','�浿���ð���','KYUNGDONG CITY GAS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012320','�浿�κ���Ʈ������','�浿�κ���Ʈ','KYUNGDONG INVEST');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011040','�浿����','�浿����','KyungdongPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000050','��溸����','���','Kyungbang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214390','�溸���ຸ����','�溸����','KYONGBO PHARMACEUTICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012610','���ξ��ຸ����','���ξ���','KyunginSynthetic');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009140','�������ں�����','��������','KyunginElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024910','��â���','��â���','KyungchangIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013580','���Ǽ����������','���Ǽ�','KyeryongConstructionIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012205','�������1�켱��','��������','KeyangElectricMachinery(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012200','������⺸����','�������','KeyangElectricMachinery');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002140','������������','������','KoreaIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('198440','����ø�Ʈ','����ø�Ʈ','KOREA CEMENT co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049720','����ſ�����','����ſ�����','KORYO CREDIT INFORMATION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010130','����ƿ�������','����ƿ�','KoreaZinc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002240','�������������','�������','KISWire');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014570','�������','�������','KOREAN DRUG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348150','����̿���','����̿���','KoBioLabs, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('098460','����ũ���','��','Koh Young Technology Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035290','���ؿ���','���ؿ���','Gold&S');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038530','����۽���','����۽���','Gold Pacific Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215000','������','������','GOLFZON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121440','����������Ȧ����','����������Ȧ����','GOLFZON NEWDIN HOLDINGS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('183410','��������ī','��������ī','GolfzonDeca');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('076340','���ǻ��','���ǻ��','GWANAK CONSTRUCTION AND EQUIPMENT SERVICE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009290','�������ຸ����','��������','KwangdongPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014200','����','����','KANGLIM Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017040','�������⺸����','��������','KWANG MYUNG ELECTRIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017900','�����ں�����','������','AUK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037710','���ֽż��躸����','���ֽż���','GwangjuShinsegae');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026910','�����Ǿ�','�����Ǿ�','KwangjinInd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090150','��������','��������','KWANGJIN WINTEC CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('355150','����10ȣ����μ�����','����10ȣ����','Kyobo 10 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('331520','����9ȣ����μ�����','����9ȣ����','Kyobo 9 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030610','�������Ǻ�����','��������','KYOBOSECURITIESCO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('339770','���̿����غ�����','���̿����غ�','KYOCHON FOOD&BEVERAGE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053270','������ũ','������ũ','GUYOUNGTECHNOLOGY COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007690','����ȭ�к�����','����ȭ��','KukdoChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005320','����������','����','Kukdong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066620','����������','����������','KUKBO DESIGN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001140','����������','����','KUKBO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043650','������','������','KOOK SOON DANG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006050','�������ؿ�','�������ؿ�','KUK YOUNG G&M');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060480','���Ͻŵ�','���Ͻŵ�','KUKIL METAL CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078130','��������','��������','KUK-IL PAPER MFG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307750','������ǰ','������ǰ','KUKJEON PHARMACEUTICAL Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002720','������ǰ������','������ǰ','Kukje Pharma');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('243870','�¼�','�¼�','Goodcen');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114090','�׷����ڸ��Ʒ���������','GKL','Grand Korea Leisure');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900290','�׷���Ʈ��ġ�������Ѱ���','GRT','Great Rich Technologies Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204020','�׸�Ƽ','�׸�Ƽ','GRITEE, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083420','�׸��ɹ�Į������','�׸��ɹ�Į','GREEN CHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('186230','�׸��÷���','�׸��÷���','GREEN PLUS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014530','�ص���ȭ������','�ص���ȭ','KukdongOil&Chem.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083450','�۷ι����Ĵٵ���ũ�����','GST','Global Standard Technology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900070','�۷ι���������ũ����Ƽ��','�۷ι�������','Global SM Tech Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204620','�۷ι��ؽ�����','�۷ι��ؽ�����','Global Tax Free Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019660','�۷κ�','�۷κ�','GLOBON CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014285','�ݰ�����1�켱��','�ݰ�������','KUMKANG KIND(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014280','�ݰ�����������','�ݰ�����','KUMKANG KIND');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053260','�ݰ�ö��','�ݰ�ö��','KEUM KANG STEEL CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008870','�ݺ�����','�ݺ�','Kumbi');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045890','�ݺ�','GV','GeumVit Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001570','�ݾ纸����','�ݾ�','Kumyang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002995','��ȣ�Ǽ�1�켱��','��ȣ�Ǽ���','KUMHOE&C(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002990','��ȣ�Ǽ�������','��ȣ�Ǽ�','KUMHOE&C');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011785','��ȣ����ȭ��1�켱��','��ȣ������','KumhoPetrochemical(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011780','��ȣ����ȭ�к�����','��ȣ����','KumhoPetrochemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214330','��ȣ����ġƼ������','��ȣ����ġƼ','Kumho HT, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001210','��ȣ���⺸����','��ȣ����','KumhoElectric');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073240','��ȣŸ�̾����','��ȣŸ�̾�','KUMHOTIRECO.,INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036190','��ȭ�ǿ�����','��ȭ�ǿ�����','GEUMHWA PSC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049080','�Ⱑ����','�Ⱑ����','GIGALANE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035460','����ڷ���','����ڷ���','Kisan Telecom CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092440','������� ������','�������','KISHIN CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000270','��ƺ�����','���','KIA CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013700','����̾ؾ�������','����̾ؾ�','CAMUS ENGINEERING & CONSTRUCTION Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('308100','��ڹ���','��ڹ���','Castelbajac Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004545','�����ѳ���1�켱��','�����ѳ����','KleanNara(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004540','�����ѳ�������','�����ѳ���','KleanNara');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187790','����','����','NANO. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('286750','����긯','����긯','NANOBRICK Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('151910','���뽺','���뽺','NANOS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121600','����ż���','����ż���','Advanced Nano Products Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('247660','���뾾������','���뾾������','NANOCMS CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039860','���뿣��','���뿣��','NanoenTek,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091970','����ķ��','����ķ��','Nano Chem Tech Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('244880','������ũ','������ũ','NANOOM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('288490','�������Ʈ','�������Ʈ','NARASOFT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051490','���󿥾ص�','���󿥾ص�','NARA MOLD & DIE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('190510','������','������','Namuga Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('242040','�������','�������','NAMU TECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089600','�����̵��','�����̵��','Nasmedia Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293580','������̺�ĳ��Ż','����IB','NAU IB Capital');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('257990','�����ڽ�','�����ڽ�','NOWCOS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138610','���̺�','���̺�','NIBEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('130580','���̽���غ�','���̽���غ�','NICE D&B CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036800','���̽��������','���̽��������','NICE INFORMATION&TELECOMMUNICATION INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030190','���̽�������','NICE������','NICE Information Service Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267320','������ũ','������ũ','Naintech. CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001260','������Ǻ�����','�������','NamkwangEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008355','�����˹̴�1�켱��','�����˹̿�','NamsunAluminium(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008350','�����˹̴�������','�����˹̴�','NamsunAluminium');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004270','����������','����','Namsung');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003925','��������1�켱��','����������','NamyangDairyProducts(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003920','��������������','��������','NamyangDairyProducts');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025860','����ȭ�к�����','����ȭ��','NamhaeChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111710','��ȭ���','��ȭ���','Namhwa Industrial Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091590','��ȭ���','��ȭ���','Nam Hwa Construction Company, Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('168330','���򷲿�����','���򷲿�����','Naturalendo Tech Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094860','�׿�����','�׿�����','NEORIGIN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('253590','�׿���','�׿���','Neosem Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('212560','�׿�����','�׿�����','NEOOTO Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095660','�׿�����','�׿�����','NEOWIZ');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042420','�׿�����Ȧ����','�׿�����Ȧ����','NEOWIZ HOLDINDS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950220','�׿��̹���(Reg.S)','�׿��̹���(Reg.S)','NeoImmuneTech, Inc.(Reg.S)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('311390','�׿�ũ����','�׿�ũ����','Neo Cremar Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085910','�׿�Ƽ��','�׿�Ƽ��','NEO TECHNICAL SYSTEM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092730','�׿���','�׿���','Neopharm CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290660','�׿���Ʈ','�׿���Ʈ','NEOFECT Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('306620','�׿���ũ','�׿���ũ','Neontech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('153460','���̺�Ŀ�´����̼���','���̺�','Nable Communications, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007390','����ó��','����ó��','NATURECELL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086220','���߷���������','���߷�FNP','Natural F&P');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033640','���н�','���н�','NEPES Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('330860','���н���ũ','���н���ũ','Nepes Ark Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005725','�ؼ�1�켱��','�ؼ���','NEXEN(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005720','�ؼ�������','�ؼ�','NEXEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002355','�ؼ�Ÿ�̾�1�켱��(����)','�ؼ�Ÿ�̾�1��B','NEXENTIRE(1PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002350','�ؼ�Ÿ�̾����','�ؼ�Ÿ�̾�','NEXENTIRE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089140','�ؽ���','�ؽ���','NEXTURN Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065170','�ؽ�Ʈ��Ƽ','�ؽ�ƮBT','NEXT BT Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003580','�ؽ�Ʈ���̾𽺺�����','�ؽ�Ʈ���̾�','NEXT SCIENCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('137940','�ؽ�Ʈ����','�ؽ�Ʈ����','NextEye Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('160550','�ؽ�Ʈ�������θ�Ʈ����','NEW','Next Entertainment World Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348210','�ؽ�ƾ','�ؽ�ƾ','NEXTIN Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041140','�ؽ���Ƽ','�ؽ���Ƽ','Nexon GT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217270','��ƪ','��ƪ','Neptune Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225570','�ݰ�����','�ݰ�����','NAT GAMES Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251270','�ݸ�������','�ݸ���','Netmarble Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317860','�����̽�','�����̽�','Nordmason');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104620','���ǳ��','���ǳ��','Yellow Balloon Tour Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090355','�������Ʈ 1�켱��','�������Ʈ��','NOROO PAINT(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290670','�뺸���׳�ƽ','�뺸���׳�ƽ','DAEBO MAGNETIC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078140','���������','���������','Daebongls co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001685','���1�켱��','����','Daesang(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001680','�������','���','Daesang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084695','���Ȧ���� 1�켱��','���Ȧ������','Daesang Holdings(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084690','���Ȧ���� ������','���Ȧ����','Daesang Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036480','�뼺�̻���������','�뼺�̻���','Daesung Microbiological Labs. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('128820','�뼺���������','�뼺���','DAESUNG INDUSTRIAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('117580','�뼺������������','�뼺������','DAESUNG ENERGY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025440','�뼺����','�뼺����','DAESUNG ELTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027830','�뼺â������','�뼺â��','Daesung Private Equity, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104040','�뼺������','�뼺������','Daesung Fine Tech. Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016710','�뼺Ȧ����������','�뼺Ȧ����','DAESUNG HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('332290','��Ź뷱����7ȣ����μ�����','��Ź뷱����7ȣ����','Daishin Balance No.7 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336570','��Ź뷱����8ȣ����μ�����','��Ź뷱����8ȣ����','Daishin Balance No.8 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('369370','��Ź뷱����9ȣ����μ�����','��Ź뷱����9ȣ����','Daishin Balance No.9 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020180','����������','����������','DaishinInformation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003545','�������1�켱��','������ǿ�','DaishinSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003547','�������2�켱��(����)','�������2��B','DAISHINSECURITIES(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003540','������Ǻ�����','�������','DaishinSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045390','���Ƽ����','���Ƽ����','DAEA TI CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009190','���ݼӺ�����','���ݼ�','DaiyangMetal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108380','����������','����������','DAYANG ELECTRIC CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006580','�����������','�������','DaeyangPaperMfg');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014160','�뿵���庸����','�뿵����','DaeyoungPackaging');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047040','���Ǽ�������','���Ǽ�','DaewooEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009320','������ں�ǰ������','����ǰ','DAEWOO ELECTRONIC COMPONENTS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042660','��������ؾ纸����','��������ؾ�','DAEWOOSHIPBUILDING&MARINEENGINEERING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003090','���������','���','Daewoong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069620','������ຸ����','�������','DAEWOONGPHARMACEUTICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007680','���','���','DAEWON CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000430','�������������','�������','DaewonKangup');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048910','����̵��','����̵��','DAEWON MEDIA CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005710','������','������','Daewonsanup');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006345','�������1�켱��','���������','DaewonCable(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006340','�������������','�������','DaewonCable');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003220','������ຸ����','�������','DaewonPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024890','���ȭ��������','���ȭ��','DaewonChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290380','����','����','Dae Yu Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002880','����������','����������','DAYOU AUTOMOTIVE SEAT TECHNOLOGY CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290120','����������','����������','Dayou AP Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000300','�����÷���������','�����÷���','DAYOUPLUS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120240','����ȭ��','����ȭ��','Daejung Chemicals & Metals Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003310','���ֻ��','���ֻ��','Daejoo Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114920','�����̿�Ƽ �ֽ�ȸ��','�����̿�Ƽ','Daejoo Energy INnovation Technology Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078600','�����������','�����������','Daejoo Electronic Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015230','��â����������','��â����','DaechangForging');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012800','��â������','��â','DAECHANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096350','��â�ַ��','��â�ַ��','DAECHANG SOLUTION CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140520','��â��ƿ','��â��ƿ','DaeChang Steel CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131220','���Ѱ���','���Ѱ���','DAIHAN SCIENTIFIC CO., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010170','���ѱ����','���ѱ����','TAIHAN Fiberoptics Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060900','���ѱ׸��Ŀ�','���ѱ׸��Ŀ�','Daehan Green Power Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054670','���Ѵ���','���Ѵ���','DAEHAN NEW PHARM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001070','���ѹ���������','���ѹ���','TaihanTextile');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023910','���Ѿ�ǰ����','���Ѿ�ǰ','DaihanPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006650','������ȭ������','������ȭ','KOREA PETRO CHEMICAL IND');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001440','��������������','��������','TaihanElectricWire');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084010','�������� ������','��������','Daehan Steel Co. Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001795','��������1�켱��','���������','TS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001790','�������纸����','��������','TS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001130','�������к�����','��������','DaehanFlourMill');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003495','�����װ�1�켱��','�����װ���','KoreanAirLines(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003490','�����װ�������','�����װ�','KoreanAirLines');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005880','�����ؿ����','�����ؿ�','KoreaLine');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003830','����ȭ��������','����ȭ��','DaehanSyntheticFibrer');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016090','����������','����','Daehyun');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069460','��ȣ���̿�������','��ȣ���̿�','DAEHOAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021040','��ȣƯ����','��ȣƯ����','dhSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090350','�������Ʈ ������','�������Ʈ','NOROO PAINT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000325','���Ȧ����1�켱��','���Ȧ������','NorooHoldings(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000320','���Ȧ����������','���Ȧ����','NorooHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('194700','��ٷ���','��ٷ���','NOVAREX Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('285490','�����','�����','NOVATECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('229500','����Ÿ�ĸ�','����Ÿ�ĸ�','NOVMETAPHARMA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('278650','���ͽ�','���ͽ�','KNOTUS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('144510','����ڷ���','����ڷ���','Green Cross Lab Cell Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006280','����ں�����','�����','Green Cross Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031390','����ڼ�','����ڼ�','GREEN CROSS CELL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('142280','����ڿ�����','����ڿ�����','Green Cross Medical Science Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234690','���������','���������','GREEN CROSS WellBeing Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005257','�����Ȧ����2�켱��(����)','�����Ȧ����2��','Green Cross Holdings Corporation(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005250','�����Ȧ����������','�����Ȧ����','Green Cross Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065560','�����������','�����������','Nokwon Commercials & Industries, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004370','��ɺ�����','���','Nongshim');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072710','���Ȧ����������','���Ȧ����','NongshimHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('154030','���ȸ����� �ƽþ�����','�ƽþ�����','ASIA SEED Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054050','���ȸ����γ����̿�','�����̿�','NONG WOO BIO CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040160','�����ڷ���','�����ڷ���','NURI Telecom Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069140','�����÷�','�����÷�','Nuriplan Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126870','���ν�','���ν�','NEUROS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060260','������','������','NUVOTEC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012340','������','������','NUIN TEK CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214870','�������ĸ�','�������ĸ�','NewGLAB Pharma');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270870','��Ʈ��','��Ʈ��','Newtree Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('144960','���Ŀ������','���Ŀ������','New Power Plasma Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900100','�������̵����۷��̼�','�������̵�','New Pride Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085670','��������','��������','NEWFLEX TECHNOLOGY Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119860','�ٳ���','�ٳ���','DANAWA Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064260','�ٳ�','�ٳ�','DANAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093640','�ٹɸ�Ƽ�̵��','�ٹɸ�Ƽ�̵��','Tamul Multimedia, Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039560','�ٻ��Ʈ����','�ٻ��Ʈ����','DASAN Networks, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058730','�ٽ��ں�����','�ٽ���','Development Advance Solution');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023590','�ٿ���������','�ٿ���','DaouTechnology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032190','�ٿ쵥��Ÿ','�ٿ쵥��Ÿ','DAOU DATA CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323350','�ٿ��ؽ���','�ٿ��ؽ���','DAWON NEXVIEW');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068240','�ٿ��ý�','�ٿ��ý�','DAWONSYS Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086080','���̳볪','���̳볪','DiNonA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('271850','���̿���','���̿���','DIOGENE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('343090','�ܵ���̿����̾�','�ܵ���̿�','DanDiBio');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019680','�뱳������','�뱳','DAEKYO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019685','�뱳�켱��(����)','�뱳��B','DAEKYO(1PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006370','�뱸��ȭ��������','�뱸��ȭ��','DaeguDepartmentStore');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00806K','���1�켱��','���1��','DAEDUCK Co.,LTD(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008060','���������','���','DAEDUCK Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353200','������ں�����','�������','DaeduckElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('35320K','������ڿ켱��','�������1��','DaeduckElectronics(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('178600','�뵿����� �ֽ�ȸ��','�뵿�����','DAEDONG KOREA GINSENG CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000490','�뵿����������','�뵿����','Daedong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020400','�뵿�ݼ�','�뵿�ݼ�','DaedongMetal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008830','�뵿���','�뵿���','DaedongGear');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048470','�뵿��ƿ','�뵿��ƿ','DAE DONG STEEL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008110','�뵿���ں�����','�뵿����','DAIDONGElECTRONICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004780','�������','�������','DaeryukCan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005750','�븲B&Co������','�븲B&Co','DAELIM B&Co');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017650','�븲����','�븲����','DaelimPaper');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006570','�븲�������','�븲���','DaelimTrading');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007720','���ҳ����','���ҳ����','DAEMYUNG SONOSEASON CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317850','������Ͼ','���','DAEMO Engineering Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021045','��ȣƯ����1�켱��','��ȣƯ������','dhSteel(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067080','��ȭ����','��ȭ����','DAE HWA PHARM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161570','�� �̵�','THE MIDONG','THE MIDONG Co,. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298540','��������Ȧ����','��������Ȧ����','THE NATURE HOLDINGS CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192080','���������������','������������','DoubleUGames');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073570','����������','WI','WI Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299170','��������������','��������������','WSI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089230','���̾ؿ�','THE E&M','THE E&M Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012510','��������º�����','���������','DOUZONE BIZON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('302920','����������','����������','TCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('213420','����׿��轺','����׿��轺','DUK SAN NEOLUX CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317330','���������Ǿ�','���������Ǿ�','Duksan Techopia Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('077360','�������̸�Ż','�������̸�Ż','DUK SAN HI METAL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004835','����1�켱��','������','Duksung(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004830','����������','����','Duksung');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090410','�����Ͽ�¡','�����Ͽ�¡','DUCKSHIN HOUSING CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024900','������������','������','DuckYangIndustry');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263600','��������','��������','DERKWOO ELECTRONICS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('194480','����ý�����','����ý�����','Devsisters corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348840','���̵帲�������θ�Ʈ','���̵帲����','Daydream');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263800','����Ÿ�ַ��','����Ÿ�ַ��','Datasolution, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('199150','�����ͽ�Ʈ����','�����ͽ�Ʈ����','Data Streams Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206560','�����ͽ�Ʃ���','������','Dexter studios Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('261200','��Ƽ��','��Ƽ��','DENTIS CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145720','��Ƽ������','��Ƽ��','DENTIUM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227420','���θ���ũ','���θ���ũ','DOBU MASK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067990','����ġ���ͽ�','����ġ���ͽ�','DEUTSCH MOTORS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002150','��ȭ�����Ͼ������','��ȭ�����Ͼ','DOHWA ENGINEERING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006620','�������̿�����','�������̿�����','DongKoo Bio & Pharma Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005160','�������','�������','DONGKUK INDUSTRIES COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('075970','�����˾ؿ���','�����˾ؿ���','DONGKUK REFRACTORIES & STEEL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100130','������������','����S&C','DONGKUK STRUCTURES & CONSTRUCTION COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001230','��������������','��������','DongkukSteelMill');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086450','��������','��������','DongKook Pharmaceutical Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004140','���溸����','����','DongbangTransport&Logistics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099410','���漱��','���漱��','Dongbang Ship Machinery Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007590','����Ʊ׷κ�����','����Ʊ׷�','DongbangAgro');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005965','���ΰǼ�1�켱��','���ΰǼ���','Dongbu(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005960','���ΰǼ�������','���ΰǼ�','Dongbu Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026960','����������','����','DONGSUH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002210','�������ຸ����','��������','DongsungPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102260','�����ɹ��ú�����','�����ɹ���','DONGSUNG CHEMICAL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033500','����ȭ����','����ȭ����','DONGSUNG FINETEC CO., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025950','���ŰǼ�','���ŰǼ�','DongshinEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000640','���ƽ�ÿ�Ȧ����������','���ƽ�ÿ�Ȧ����','Dong-A Socio Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('170900','���ƿ���Ƽ������','���ƿ���Ƽ','Donga ST');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088130','���ƿ���','���ƿ���','DONG A ELTEK Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028100','��������������','��������','Dong-Ah Geological Engineering Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('282690','����Ÿ�̾����������','����Ÿ�̾�','DONG AH TIRE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041930','����ȭ��','����ȭ��','DONG-A HWA SUNG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001525','����1�켱��','�����','TONGYANG(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001527','����2�켱��(����)','����2��B','TONGYANG(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001529','����3�켱��(����)','����3��B','TONGYANG(3PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084670','�����Ӻ�����','������','DONGYANG EXPRESS CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001520','���纸����','����','TONGYANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082640','��������躸����','�������','TONGYANG LIFE INSURANCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060380','���翡����','���翡����','Dongyang S��TEC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079960','�����̿���','�����̿���','DONGYANG E&P INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008970','����ö��������','����ö��','DongyangSteelPipe');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('228340','��������','��������','TONGYANG PILE, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092780','�����ǽ��溸����','�����ǽ���','DONGYANG PISTON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088910','�����������̺�','�����������̺�','DONGWOO FARM TO TABLE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094170','����Ƴ���','����Ƴ���','DONGWOON ANATECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049770','����F&B������','����F&B','DongwonF&B Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013120','��������','��������','DongwonDevelopment');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018500','�����ݼӺ�����','�����ݼ�','DONGWON METAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006040','�������������','�������','DongwonIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030720','�������꺸����','��������','DongwonFisheries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014825','�����ý�����1�켱��','�����ý������','Dongwon Systems Corporation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014820','�����ý��������','�����ý�����','Dongwon Systems Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('163560','���ϰ���Ʈ������','���ϰ���Ʈ','DRB Industrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109860','���ϱݼ�','���ϱݼ�','DONGIL METAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032960','���ϱ⿬','���ϱ⿬','DongilTechnology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004890','���ϻ��������','���ϻ��','DONGILINDUSTRIESCO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002690','��������������','��������','DONG IL STEEL MFG CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023790','����ö��','����ö��','DongilSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005290','���������','���������','DONGJIN SEMICHEM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025900','��ȭ���','��ȭ���','DONGWHA ENTERPRISE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000020','��ȭ��ǰ������','��ȭ��ǰ','DongwhaPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000155','�λ�1�켱��','�λ��','DOOSAN(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000157','�λ�2�켱��(����)','�λ�2��B','DOOSAN(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241560','�λ��Ĺ������','�λ��Ĺ','Doosan Bobcat');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000150','�λ꺸����','�λ�','DOOSAN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042670','�λ��������ھ����','�λ��������ھ�','Doosan Infracore');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034020','�λ��߰���������','�λ��߰���','DoosanHeavyIndustriesandConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('33626K','�λ�ǻ��1�켱��','�λ�ǻ��1��','Doosan Fuel Cell(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('33626L','�λ�ǻ��2�켱��(����)','�λ�ǻ��2��B','Doosan Fuel Cell(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336260','�λ�ǻ�󼿺�����','�λ�ǻ��','Doosan Fuel Cell');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016740','�οú�����','�ο�','DUAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073190','�����','�����','DUOBACK CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('176750','���͹��̿�','���͹��̿�','DuChemBio Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030350','�巡���ö���','�巡���ö���','Dragonfly GF Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('203650','�帲��ť��Ƽ','�帲��ť��Ƽ','Dream Security Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('223250','�帲�����̿���','�帲�����̿���','DreamCIS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060570','�帲����۴�','�帲����۴�','Dreamus Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192650','�帲�غ�����','�帲��','DREAMTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217620','���','���','Didim Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187870','����̽��̿���','����̽��̿���','Device ENG CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('367340','��������8ȣ����μ�����','DB��������8ȣ','DB Finance No.8 Special Purpose Acquisition Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('367360','��������9ȣ����μ�����','DB��������9ȣ','DB Finance No.9 Special Purpose Acquisition Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066670','���÷�����ũ','���÷�����','Display Tech Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024090','�𾾿�������','�𾾿�','DCMCorp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003160','����̺�����','�����','DI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092200','����̾� ������','����̾�','DAE-IL Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('110990','�����Ƽ','�����Ƽ','Digital Imaging Technology, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004840','��˺��Ϻ�����','DRB����','DRB Holding Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263690','�����','�����','DRGEM CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214680','�����','�����','DRTECH Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263720','��ؾ��̵��','��ؾ��̵��','D&C MEDIA CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241520','�𿡽����κ���Ʈ��Ʈ','DSC�κ���Ʈ��Ʈ','DSC Investment Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109740','�𿡽�����','�𿡽�����','DSK Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033430','�𿡽�Ƽ','�𿡽�Ƽ','DST Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131030','����ġ���ڸ���','����ġ���ڸ���','DHP KOREA.CO., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196490','������ũ�����','������ũ�����','DA Technology Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066900','������','������','DAP Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('127120','�𿣿��̸�ũ','�𿣿��̸�ũ','DNA Link, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092070','�𿣿���','�𿣿���','DNF Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068790','�𿥿���','DMS','DMS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('134580','��Ƽ','��Ƽ','Digital Multimedia Technology Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039840','���','���','DIO Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013570','����̺�����','�����','DY Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('210540','������Ŀ�������','������Ŀ�','DY POWER Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104460','������ǿ�����','������ǿ�����','DYPNF CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079810','���̿�Ƽ','���̿�Ƽ','DE&T Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227100','������','������','DESIGN Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('113810','������','������','Dgenx Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043360','��������','��������','Digital Graphics Incorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('197140','����ĸ','����ĸ','DigiCAP');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('106520','����Ż��ƽ','����Ż��ƽ','Digital Optics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068930','�����д뼺','�����д뼺','Digital Daesung Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('143540','����𿡽���','����𿡽���','YoungWoo DSP Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111770','��������������','��������','Youngone Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009970','��������Ȧ����������','��������Ȧ����','YoungoneHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003520','������ǰ������','������ǰ','YUNGJIN PHARM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000670','��ǳ������','��ǳ','Youngpoong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036560','��ǳ����','��ǳ����','YOUNG POONG PRECISION CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006740','��ǳ����������','��ǳ����','YoungpoongPaperMfg');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012280','��ȭ�ݼӺ�����','��ȭ�ݼ�','YeonghwaMetal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('265560','��ȭ��ũ','��ȭ��ũ','Younghwa Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012160','���ﺸ����','����','YOUNGWIRE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036000','������','������','YeaRimDang Publishing Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('250930','������ũ','������ũ','YeSUN Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053280','�����̽ʻ�','����24','YES24 Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015360','������Ȧ����������','������Ȧ����','Yesco Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122640','����Ƽ','����Ƽ','YEST Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900300','������Ƽ�ڽ���ƽ��Ȧ�������۴ϸ���Ƽ��','������Ƽ�ڽ���ƽ','ORGANIC TEA COSMETICS HOLDINGS COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045060','����','����','OKONG Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080520','������','������','ODTech');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007310','���ѱ⺸����','���ѱ�','Ottogi');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039830','���ζ����','���ζ�','AURORA WORLD Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322310','���ν���ũ�����','���ν���ũ�����','AUROS TECHNOLOGY, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046120','��������','��������','Orbitech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014940','������Ż����','������Ż����','ORIENTAL PRECISION & ENGINEERING CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002630','������Ʈ���̿�������','������Ʈ���̿�','ORIENTBIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065500','������Ʈ����','������Ʈ����','Orient Precision Industries Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('271560','�����º�����','������','ORION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001800','������Ȧ����������','������Ȧ����','ORION Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010470','������','������','ORICOM Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053980','�������̿�','�������̿�','OSANGJAIEL Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052420','����÷�ܼ���','����÷�ܼ���','OSUNG ADVANCED MATERIALS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241790','���Ǻ긴��','���Ǻ긴��','OCEANBRIDGE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('329020','���ǽ���','���ǽ���','Ocean Stone');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039200','��������','��������','OSCOTEC Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031510','������','������','AUSTEM CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048260','���������ö�Ʈ','���������ö�Ʈ','OSSTEM IMPLANT.CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138080','���ַ̼��','���ַ̼��','OE Solutions Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080580','��Ų������','��Ų������','OKins Electronics Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067170','����','����','Autech Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('173130','���Ľ���','���Ľ���','OPASNET co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049480','���º��̽�','���º��̽�','Openbase, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('309930','�����Ӿ��̿�Ƽ','�����Ӿ��̿�Ƽ','OHEIM INT Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078590','��������Ʈ�ĸ���Ƽ��','OQP','OncoQuest Pharmaceuticals Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('244460','�ø��н�','�ø��н�','OLIPASS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226950','�ø���','�ø���','Olix Pharmaceuticals, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057540','�ȴϽý���','�ȴϽý���','Omnisystem Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082210','��Ʈ����','��Ʈ����','OPTRONTEC Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109080','��Ƽ�ý�','��Ƽ�ý�','OPTICIS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('153710','��Ƽ��','��Ƽ��','Optipharm. CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051390','���̴�����','YW','YW COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('321820','���̴��÷���','���̴��÷���','Wider Planet Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057030','���̺񿥳�','YBM��','YBM NET, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122990','���̼�','���̼�','WiSoL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('232140','���̾�������','���̾�������','YIK Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065530','���̾��','���̾��','Wiable');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067900','���̿���','���̿���','Y-ENTEC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('155650','���̿���','���̿���','YMC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251370','���̿�Ƽ','���̿�Ƽ','YMT CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066430','���̿���','���̿���','Y-OPTICS MANUFACTURE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('193250','�������̿�������','�������̿�������','YJM Games Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('273060','���������','���������','Wise birds Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019210','������-��','������-��','YG-1 CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122870','�������������θ�Ʈ','�������������θ�Ʈ','YG Entertainment Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037270','�������÷���������','YG PLUS','YG PLUS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040300','����Ƽ��','YTN','YTN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('332570','������','������','Wireless Amplifier Module Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079000','���佺 �ڸ���','���佺�ڸ���','WATOS COREA CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114630','�������۴�','�������۴�','UNO&COMPANY, Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('316140','�츮�������ֺ�����','�츮��������','WooriFinancialGroup');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033660','�츮����ĳ��Ż������','�츮����ĳ��Ż','WOORI FINANCIAL CAPITAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032820','�츮���','�츮���','Woori Technology, Incorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041190','�츮�������','�츮�������','Woori Technology Investment Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115440','�츮��','�츮��','Woori-Net Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('118000','�츮���޺극�κ�����','�츮���޺극��','WOORIDUL HUEBRAIN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046970','�츮��','�츮��','WOORIRO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082850','�츮���̿�','�츮���̿�','WOOREE BIO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215360','�츮���','�츮���','WOORY INDUSTRIAL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072470','�츮���Ȧ����','�츮���Ȧ����','WOORY INDUSTRIAL HOLDINGS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073560','�츮�տ������� ���ȸ�����','�츮�տ�������','Woorison F&G CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('153490','�츮�̾ؿ�','�츮�̾ؿ�','WOOREE E&L CO.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037400','�츮����','�츮����','WOOREE LIGHTING CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010050','�츮���ձ���������','�츮����','Woori Investment Bank');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101170','�츲���','�츲���','WOORIM MACHINERY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006980','�켺��Ẹ����','�켺���','WoosungFeed');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066590','���AMS','���AMS','WOOSU AMS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017370','��Žý��ۺ�����','��Žý���','WooshinSystems');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103840','���','���','WOOYANG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046940','�������','�������','Woowon Development Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215380','�������̿�','�������̿�','WOOJUNG BIO, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065680','�����Ϸ�Ʈ�δн�','�����Ϸ�Ʈ��','UJU ELECTRONICS CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105840','����������','����','WOOJIN INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018620','���������','���������','WooGene B&G CO., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010400','�������̿�����������','�������̿�����','WOOJINI&S');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049800','�����ö��� ������','�����ö���','WOOJIN PLAIMM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016880','����������','����','WOONGJIN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095720','������ũ�� ������','������ũ��','WOONGJIN THINKBIG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005820','����������','����','Wonlim');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307280','�����̿���','�����̿���','Wonbiogen');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053080','������ũ','������ũ','WONBANG TECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032940','����','����','WonIk');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104830','���͸�Ʈ������','���͸�Ʈ������','WONIK Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('240810','���;����ǿ���','����IPS','WONIK IPS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014190','����ť��','����ť��','WONIK CUBE Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('074600','����ť����','����QnC','WONIK QnC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131390','�����Ǿ���','�����Ǿ���','WONIK PNE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030530','����Ȧ����','����Ȧ����','WONIK HOLDINGS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012620','����Ư��','����Ư��','WonilSpecialSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('216280','����','����','WONTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122830','������','������','ONE4U');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008370','��ǳ','��ǳ','WonpoongCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008290','��ǳ����','��ǳ����','WonpungMulsan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101160','������','������','WORLDEX INDUSTRY & TRADING CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095270','���̺��Ϸ�Ʈ�δн�','���̺��Ϸ�Ʈ��','Wave Electronics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010600','�����̿��غ�����','�����̿���','WELLBIOTEC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065950','��ũ��','��ũ��','Welcron Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('076080','��ũ������','��ũ������','WELCRON HANTEC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196700','����','����','WAPS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069080','����','����','Webzen Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053580','���ɽ�','���ɽ�','WebCash Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071460','���ϾƵ�ä','���ϾƵ�ä','WINIADIMCHAE Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044340','���н�','���н�','WINIX INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('330350','����������','����������','Withus Pharmaceutical. Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348350','������','������','WITHTECH, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('112040','�����̵�','�����̵�','Wemade Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101730','�����̵�ƽ�','�����̵�ƽ�','Wemade Max');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065370','����������','����������','WISE iTech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140660','������ �ֽ�ȸ��','������','WIWORLD Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038620','��������','��������','WIZ CORP, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299900','��������Ʃ���','��������Ʃ���','WYSIWYG STUDIOS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036090','����Ʈ','����Ʈ','WIZIT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136540','����','����','Wins co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('320000','����','����','WINTEC Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097800','����','����','WINPAC INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192390','��������','��������','WINHITECH CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('313760','������','������','WILLINGS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008600','���񽺺�����','����','TheWillBes');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900340','����Ǫ��Ȧ����','����Ǫ��','WING YIP FOOD (CHINA) HOLDINGS GROUP LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014830','���ϵ� ������','���ϵ�','UNID');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036200','���ϼ�','���ϼ�','UNION SEMICONDUCTOR EQUIPMENT&MATERIALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018000','���Ͻ�','���Ͻ�','UNISON CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047400','���Ͽ¸�Ƽ��������','���Ͽ¸�Ƽ����','Union Materials Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000910','���Ͽº�����','���Ͽ�','Union');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('203450','���Ͽ�Ŀ�´�Ƽ','���Ͽ�Ŀ�´�Ƽ','Union community Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011330','�����ͺ�����','������','UNI CHEM.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('077500','��������Ʈ ������','��������Ʈ','Uniquest Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011320','����ũ','����ũ','UNICK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086390','�����׽�Ʈ','�����׽�Ʈ','UniTest Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241690','������ũ��','������ũ��','UNITEKNO Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('142210','����Ʈ����','����Ʈ����','Unitrontech Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121060','��������Ʈ','��������Ʈ','UNIPOINT Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048430','������ũ','������ũ','YURA TECH. CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206650','�����̿�������','�����̿�������','EuBiologics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089850','���񺧷Ͻ�','���񺧷Ͻ�','UbiVelox Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032620','�����ɾ�','�����ɾ�','UBCARE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('264450','��������','��������','Ubiquoss Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078070','��������Ȧ����','��������Ȧ����','Ubiquoss Holdings Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002920','�������������','�������','YoosungEnterprise');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024800','����Ƽ������','����Ƽ������','YOOSUNG T&S CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000700','����Ȧ����������','����Ȧ����','EUSU HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054930','����','����','Yooshin Engineering Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038340','��������','UCI','UCI Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069330','�����̵�','�����̵�','U.I.DISPLAY CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049520','�����̿�','�����̿�','UIL Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('313750','����Ÿ��4ȣ����μ�����','����Ÿ��4ȣ����','Yuanta 4 SPECIAL PURPOSE ACQUISITION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336060','����Ÿ��5ȣ����μ�����','����Ÿ��5ȣ����','Yuanta 5 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340360','����Ÿ��6ȣ����μ�����','����Ÿ��6ȣ����','Yuanta 6 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('367460','����Ÿ��7ȣ����μ�����','����Ÿ��7ȣ����','Yuanta 7 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('367480','����Ÿ��8ȣ����μ�����','����Ÿ��8ȣ����','Yuanta 8 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003475','����Ÿ����1�켱��','����Ÿ���ǿ�','Yuanta Securities Korea(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003470','����Ÿ���Ǻ�����','����Ÿ����','Yuanta Securities Korea');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056090','���ؾ���','���ؾ���','U&I CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011690','��������������','��������','YUYANG D&U');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263770','������Ƽ','������Ƽ','UST CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('337840','��������','��������','UXN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072130','������������','������','UANGEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000225','��������1�켱��','��������1��','YuyuPharma(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000227','��������2�켱��(����)','��������2��B','YuyuPharma(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000220','�������ຸ����','��������','YuyuPharma');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340930','���Ͽ�����ũ','���Ͽ�����ũ','YOUIL ENERGY TECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023410','�������','�������','EUGENE Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('321260','��������μ�����4ȣ','��������4ȣ','EUGENE SEPCIAL PURPOSE ACQUISITION 4 CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('331380','��������μ�����5ȣ','��������5ȣ','EUGENE SPECIAL PURPOSE ACQUISITION 5 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('373340','��������μ�����6ȣ','��������6ȣ','EUGENE SPECIAL PURPOSE ACQUISITION 6 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056080','�����κ�','�����κ�','Yujin Robot Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084370','������ũ','������ũ','Eugene Technology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001200','�����������Ǻ�����','������������','EUGENE INVESTMENT & SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('178780','����ũ','����ũ','U-Tech Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('221800','�������̿�','�������̿�','U2BIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('179900','��Ƽ����','��Ƽ����','UTI INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263050','��ƿ����','��ƿ����','Eutilex Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000105','���Ѿ���1�켱��','���Ѿ����','Yuhan(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000100','���Ѿ��ຸ����','���Ѿ���','Yuhan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003465','��ȭ����1�켱��','��ȭ���ǿ�','YuhwaSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003460','��ȭ���Ǻ�����','��ȭ����','YuhwaSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('191410','���Ͼ�������','���Ͼ�������','RYUK-IL C&S., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008730','����ȭ�к�����','����ȭ��','YoulchonChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072770','��ȣ','��ȣ','Yulho');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008250','�̰ǻ��������','�̰ǻ��','EagonIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039020','�̰�Ȧ����','�̰�Ȧ����','EAGON HOLDINGS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025820','�̱����������','�̱����','LeekuIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060230','�̱��轺','�̱��轺','exax Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067920','�̱۷��ť��Ƽ','�̱۷��ť��Ƽ','Igloo Security, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044960','�̱ۺ�','�̱ۺ�','Eagle Veterinary Technology Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('302430','�̳��Ʈ��','�̳��Ʈ��','INNOMETRY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('279060','�̳뺤��','�̳뺤��','INNOVEX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214320','�̳�Ǻ�����','�̳��','INNOCEAN WORLDWIDE INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073490','�̳���̾��','�̳���̾��','InnoWireless Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086250','�̳������','�̳������','INNOWISE CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215790','�̳��ν�Ʈ���Ʈ','�̳��ν�Ʈ���Ʈ','INNO INSTRUMENT INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('344860','�̳���','�̳���','INNOGENE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246960','�̳��׶���','�̳��׶���','InnoTherapy Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088390','�̳콺','�̳콺','INNOX Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272290','�̳콺÷�ܼ���','�̳콺÷�ܼ���','INNOX Advanced Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053350','�̴���','�̴���','INITECH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258610','�̴���������','�̴���������','EWK Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336040','�̵����̿�','�̵����̿�','YIDOBIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215090','�̵�Ƽ','�̵�Ƽ','EHWA DEFENSE TECHNOLOGY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041520','�̶�����','�̶�����','e-LITECOM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('264850','�̷��ý�','�̷��ý�','Elensys Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054210','�̷���','�̷���','Elentec Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('164060','�̷��','�̷��','ILOODA Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065440','�̷��','�̷��','ELUON Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088260','�̸�����ũ��������������ε�������ȸ�纸����','�̸�����ũ��','E KOCREF CR-REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('139480','�̸�Ʈ������','�̸�Ʈ','E-MART Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115610','�̹�������ũ�����','�̹�����','IMAGIS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('349720','�̺���Ʈ����μ�����5ȣ','�̺���Ʈ����5ȣ','Ebest Special Purpose Acquisition No5 Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323210','�̺���Ʈ�̾ȱ���μ�����1ȣ','�̺���Ʈ�̾Ƚ���1ȣ','Ebest Ian Special Purpose Aquisition 1 Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078020','�̺���Ʈ��������','�̺���Ʈ��������','EBEST INVESTMENT & SECURITIES Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208850','�̺���ũ','�̺���ũ','EB TECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080010','�̻��Ʈ����','�̻��Ʈ����','eSANG Networks Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086890','�̼�������','�̼�������','ISU Abxis Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007660','�̼���Ÿ�ý�������','�̼���Ÿ�ý�','ISUPETASYS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005950','�̼�ȭ�к�����','�̼�ȭ��','IsuChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015020','�̽�Ÿ�ں�����','�̽�Ÿ��','e-STARCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047560','�̽�Ʈ����Ʈ','�̽�Ʈ����Ʈ','ESTsoft Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900110','�̽�Ʈ�ƽþ�Ȧ�����κ���Ʈ��Ʈ����Ƽ��','�̽�Ʈ�ƽþ�Ȧ����','East Asia Holdings Investment Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270020','�̽��Ͻ����','�̽��Ͻ����','21store');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067010','�̾������ڷ���','�̾�����','ECS TELECOM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093230','�̾��̵�����','�̾��̵�','E Investment&Development');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('341310','�̾ؿ�ġ','�̾ؿ�ġ','E&H');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052190','�̿�������','�̿�������','ESA Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101360','�̿����','�̿����','E&D Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102710','�̿�������ũ�����','�̿�������ũ�����','ENF Technology Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066980','�̿����۷��̼�','�̿����۷��̼�','E& Corporation CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('074610','�̿��÷���������','�̿��÷���','ENPLUS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063760','�̿���','�̿���','ELP Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('087730','�̿���Ʈ����','�̿���Ʈ����','EM Networks Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123570','�̿���','�̿���','EMNET INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079190','�̿�������','EMW','EMW Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('278990','�̿���','EMB','EMB');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083470','�̿��ؾ���','�̿��ؾ���','EMnI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095190','�̿��ڸ���','�̿��ڸ���','EMKOREA Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091120','�̿���','�̿���','EM-Tech. CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('232530','�̿�Ƽ','�̿�Ƽ','Energy Material Tech');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102460','�̿����ຸ����','�̿�����','REYON PHARMACEUTICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039030','�̿���ũ�н�','�̿���ũ�н�','EO Technics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('294090','�̿��÷ο�','�̿��÷ο�','EOFlow Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('245620','�̿����ֱ̾׳�ͽ�','EDGC','Eone Diagnomics Genome Center Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088290','�̿�������','�̿�������','EWON COMFORTECH CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084680','�̿��庸����','�̿���','E-WORLD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('181340','����̵��','����̵��','isMedia Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037370','����','EG','EG CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353810','�������̿�','�������̿�','EASY BIO, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('350520','������������������������','������������������','IGIS RESIDENCE REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('334890','����������÷�������������','�������������','IGIS Value Plus REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099750','�����ɾ���','�����ɾ���','ezCaretech Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035810','����Ȧ����','����Ȧ����','Easy Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('160600','��ť��','��ť��','EQUIPMENTS CELL CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092130','��ũ������','��ũ������','e-Credible Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033920','���к�����','����','Muhak');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008420','����ö��������','����ö��','MoonbaeSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('279600','�̵����','�̵����','MediaZen,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095500','�̷�������','�̷�������','MNTECH Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025560','�̷����������','�̷����','MiraeCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('218150','�̷������ڿ�','�̷������ڿ�','MILAE BIORESOURCES CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007120','�̷����̾���������','�̷����̾���','MiraeING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353490','�̷����´�����μ����� 5ȣ','�̷����´�콺�� 5ȣ','MIRAE ASSET DAEWOO SPECIAL PURPOSE ACQUISITION 5 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('328380','�̷����´�����μ�����3ȣ','�̷����´�콺��3ȣ','MIRAE ASSET DAEWOO SPECIAL PURPOSE ACQUISITION 3 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('333430','�̷����´�����μ�����4ȣ','�̷����´�콺��4ȣ','MIRAE ASSET DAEWOO SPECIAL PURPOSE ACQUISITION 4 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('357250','�̷����¸ʽ�����������','�̷����¸ʽ�����','Miraeasset Maps REIT 1');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094800','�̷����¸ʽ��ƽþ��۽��Ⱥε������1ȣ','�ʽ�����Ƽ1','MIRAEASSETMAPS ASIAPACIFIC REAL ESTATE 1');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100790','�̷����º�ó����','�̷����º�ó����','Mirae Asset Venture Investment Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085620','�̷����»����躸����','�̷����»���','MIRAE ASSET Life Insurance CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006805','�̷���������1�켱��','�̷��������ǿ�','MIRAE ASSET SECURITIES(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00680K','�̷���������2�켱��(����)','�̷���������2��B','MIRAE ASSET SECURITIES(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006800','�̷��������Ǻ�����','�̷���������','MIRAE ASSET SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208890','�̷���������Ʈ��','�̷���������Ʈ��','MiraeN Edupartner Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049950','�̷����۴�','�̷����۴�','meerecompany Incorporated');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('213090','�̷���ũ�����','�̷���ũ�����','MIRAE TECHNOLOGY, CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('207760','�̽��ͺ��','�̽��ͺ��','Mr. Blue Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225850','�ֺ̾�','�ֺ̾�','Miev');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002840','�̿���纸����','�̿����','MiwonCommercial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('268280','�̿������Ƽ�ɹ�Į������','�̿�������','Miwon Specialty Chemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('107590','�̿�Ȧ���� ������','�̿�Ȧ����','Miwon Holdings Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('134380','�̿�ȭ�к�����','�̿�ȭ��','Miwon Chemicals');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003650','��â��������������','��â����','MichangOilInd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('059090','����','����','MiCo Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214610','���ڹ��̿��޵�','���ڹ��̿��޵�','MiCo BioMed Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('201490','������','������','Me2on Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950190','������','������','ME2ZEN Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214180','�ξ���','�ξ���','Minwise Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('155900','�ٴٷ�19ȣ��������ȸ��','�ٴٷ�19ȣ','Badaro No.19 Ship Investment Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206640','�ٵ��ظ޵�','�ٵ��ظ޵�','Boditech Med Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018700','�ٸ���','�ٸ���','Barunson');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035620','�ٸ����̾ؿ���','�ٸ����̾ؿ���','Barunson Entertainment & Arts Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064520','�ٸ�����','�ٸ�����','Barun Electronics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053030','���̳ؽ�','���̳ؽ�','Binex Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('301300','���̺����۴�','���̺����۴�','VAIV company Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064550','���̿��Ͼ�','���̿��Ͼ�','BIONEER CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('314930','���̿�����','���̿�����','BIODYNE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208710','���̿��α׵���̽�','���̿��α׵���̽�','BIOLOG DEVICE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('142760','���̿�������','���̿�������','Bioleaders Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086820','���̿��ַ��','���̿��ַ��','Bio Solution Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038460','���̿�����Ʈ','���̿�����Ʈ','BioSmart Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('281310','���̿��ó�ƽ��','���̿��ó�ƽ��','BIOSYNECTICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('266470','���̿�������������','���̿�������������','BioInfra Life Science');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086040','���̿��彺��','���̿��彺��','Biotoxtech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('199290','���̿�������ũ','���̿�������ũ','BIOPROTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032980','���̿�','���̿�','BYON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222160','���̿�Ʈ��','���̿�Ʈ��','Bioptro');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043150','����','����','Value Added Technology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323990','�ڼ����̿�','�ڼ����̿�','Vaxcell-Bio Therapeutics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003610','�渲������','�渲','Pangrim');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267790','�跲','�跲','BARREL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001340','�鱤���������','�鱤���','PaikkwangIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046310','���Ƽ�ؿ���','���T&A','BG T&A Co.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035150','��꺸����','���','Baiksan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066410','��Ŷ��Ʃ���','��Ŷ��Ʃ���','BUCKET STUDIO Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002410','����ǿ�������','����ǿ�','BUMYANG CONSTRUCTION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206400','����Ȧ����','����Ȧ����','Benoholdings, lnc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019010','������','������','VenueG Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('177350','����','����','Vessel Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299910','������','������','Vespa Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007210','���꺸����','����','Byuksan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225530','�������','�������','BoKwang Industry Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('250000','����Ƽ��','����Ƽ��','BORATR CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002760','����������','����','Bolak');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003850','�������ຸ����','��������','BoryungPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006910','�����Ŀ���','�����Ŀ���','BOSUNG POWER TECHNOLOGY CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000890','���ؾ���������','���ؾ���','BohaeBrewery');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226340','����','����','Bonne Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206950','����','����','Volvik');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008470','��-��Ÿ','�ν�Ÿ','BOOSTER CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003000','�α���ǰ������','�α���ǰ','BukwangPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001275','�α�����1�켱��','�α����ǿ�','BookookSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001270','�α����Ǻ�����','�α�����','BookookSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026940','�α�ö�� ������','�α�ö��','Bookook Steel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014470','�ι�','�ι�','Bubang Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015350','�λ굵�ð���������','�λ갡��','BusanCityGas');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011390','�λ���������','�λ���','BusanIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005030','�λ��ְ�������','�λ��ְ�','PusanCastIron');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('338220','���','���','VUNO, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100120','�����','�����','Vieworks Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('337930','�귣�忢�����۷��̼�','�귣�忢�����۷��̼�','Brand X Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064480','�긮����','�긮����','BRIDGETEC Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('288330','�긴�����̿��׶�ǻƽ��','�긴�����̿��׶�ǻƽ��','BRIDGE BIOTHERAPEUTICS, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251630','���̿���','���̿���','V-ONE TECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018290','����Ƽ������','����Ƽ������','VT GMP Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263920','���濥�ؾ�','���濥�ؾ�','Blossom M&C Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044480','��纣��������Ƽ','��纣�� NFT','Blueberry NFT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033560','�����','�����','BLUECOM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126340','����','����','VINA TECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121800','��Ʈ','��Ʈ','Vidente Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('148140','������','������','BDI Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082800','���� �ｺ�ɾ�','���� �ｺ�ɾ�','Vivozon Healthcare, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('318410','���','���','Best Bristle Company CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002070','���Ⱥ�����','����','VIVIEN CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100220','����� ������','�����','VISANG EDUCATION INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200780','�񾾿�������','�񾾿�������','BCWORLDPHARM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('141000','���Ʈ��','���Ʈ��','Viatron Technologies, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090460','����ġ','����ġ','BH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083650','����ġ����','����ġ����','BHI Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215050','�񿣵��Ȱ�ǰ�','�񿣵��Ȱ�ǰ�','B&D Life Health CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086670','��Ƽ','��Ƽ','BMT Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('335890','���','���','VIOL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138580','����Ͻ���Ŀ�´����̼�','����Ͻ���','BusinessOn Communication Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082920','�����μ�','�����μ�','VITZROCELL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054220','�����νý�','�����νý�','VitzroSys., Co. LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042370','��������ũ','��������ũ','Vitzro Tech Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030790','������ž��������','������ž��','BK TOPS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032850','��Ʈ��ǻ��','��Ʈ��ǻ��','BITComputer');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('148780','���ö��̼���Ʈ','���ö��̼���Ʈ','BFLYSOFT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238200','���ǵ�','���ǵ�','BIFIDO. Co. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093190','��ַ�','��ַ�','BIXOLON Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065450','����','����','VICTEK. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('210120','���丮������','������','Victory Contents Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005180','���׷�������','���׷�','Binggrae');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072950','��������','��������','VISSEM Electronics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('266170','�Ѹ�����������','�Ѹ�����������','Redwoods');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('143240','����ο���ġ��','����ο���ġ��','SaraminHR Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003960','�����븲������','�����븲','SAJODAERIM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008040','�������ƿ�������','�������ƿ�','SAJODONGAONE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007160','�������������','�������','SajoIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014710','������Ǫ�庸����','������Ǫ��','SAJOSEAFOOD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006090','�������纸����','��������','OYANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100090','�ﰭ����Ƽ','�ﰭ����Ƽ','SAMKANG M&T Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122350','���','���','SAMKEE CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014970','�︢����','�︢����','Samryoong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018310','��񿡽���','��񿡽���','SAMMOK S-FORM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053700','�ﺸ���ͽ�','�ﺸ���ͽ�','SAMBO MOTORS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009620','�ﺸ���','�ﺸ���','SAMBO Industrial Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023600','�ﺸ����','�ﺸ����','SAMBO CORRUGATED BOARD CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111870','�ﺻ����','�ﺻ����','SAMBON ELECTRONICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001470','�����Ǻ�����','������','SambuEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006405','�ＺSDI1�켱��','�ＺSDI��','SAMSUNG SDI(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006400','�ＺSDI������','�ＺSDI','SAMSUNG SDI CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006660','�Ｚ����������','�Ｚ����','SamsungClimateControlCo.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('291230','�Ｚ����μ�����2ȣ','�Ｚ����2ȣ','SAMSUNG SPECIAL PURPOSE ACQUISITION 2 CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('02826K','�Ｚ����1�켱��(����)','�Ｚ�����B','SAMSUNG C&T CORPORATION(1PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028260','�Ｚ���꺸����','�Ｚ����','SAMSUNG C&T CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('207940','�Ｚ���̿�������������','�Ｚ���̿�������','SAMSUNG BIOLOGICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032830','�Ｚ�����躸����','�Ｚ����','Samsung Life Insurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018260','�Ｚ�����𿡽�������','�Ｚ�����𿡽�','SAMSUNG SDS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028050','�Ｚ�����Ͼ������','�Ｚ�����Ͼ','SamsungEngineering');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009155','�Ｚ����1�켱��','�Ｚ�����','SamsungElectroMechanics(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009150','�Ｚ���⺸����','�Ｚ����','SamsungElectroMechanics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005935','�Ｚ����1�켱��','�Ｚ���ڿ�','SamsungElectronics(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005930','�Ｚ���ں�����','�Ｚ����','SamsungElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001360','�Ｚ����','�Ｚ����','SAMSUNG PHARMACEUTICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010145','�Ｚ�߰���1�켱��','�Ｚ�߰���','SamsungHeavyIndustries(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010140','�Ｚ�߰���������','�Ｚ�߰���','SamsungHeavyIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016360','�Ｚ���Ǻ�����','�Ｚ����','SamsungSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068290','�Ｚ���ǻ纸����','�Ｚ���ǻ�','SAMSUNG PUBLISHING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029780','�Ｚī�� ������','�Ｚī��','SAMSUNG CARD CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000815','�Ｚȭ���ػ���1�켱��','�Ｚȭ���','SamsungFire&MarineInsurance(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000810','�Ｚȭ���ػ��躸����','�Ｚȭ��','SamsungFire&MarineInsurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006110','��ƾ˹̴�������','��ƾ˹̴�','SamaAluminium');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009300','�������','�������','Sam-A Pharm. Co. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145995','����1�켱��','�����','Samyang Corporation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145990','���纸����','����','Samyang Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003230','����ǰ������','����ǰ','SamyangFoods');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225190','����ƽ��','����ƽ��','SAMYANG OPTICS CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002170','����������','������','SamyangTongsang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272550','�����Ű¡������','�����Ű¡','SAMYANG PACKAGING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000075','���Ȧ����1�켱��','���Ȧ������','SAMYANGHOLDINGS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000070','���Ȧ����������','���Ȧ����','SAMYANGHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060310','�￡���ڸ���','3S','3S KOREA CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002810','�￵����������','�￵����','SamyungTrading');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054540','�￵����','�￵����','SAMYOUNG M-TEK CO. LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065570','�￵�̿���','�￵�̿���','Samyung ENC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005680','�￵���ڰ���������','�￵����','SamyoungElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003720','�￵ȭ�а���������','�￵ȭ��','SamyoungChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023000','������� ������','�������','SAMWONSTEEL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004380','����THK������','����THK','SAMICK THK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002450','���;Ǳ⺸����','���;Ǳ�','SamickMusicalInstruments');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032280','����','����','SamIl');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002290','���ϱ������','���ϱ������','SAMIL ENTERPRISE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004440','���Ͼ�������������','���Ͼ�������','SAMIL C&S');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000520','�������ຸ����','��������','SamilPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009770','�������� ������','��������','SAM JUNG PULP CO,.LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037460','��������','��������','SAMJI ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032750','����','����','Samjin');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054090','�������ص�','�������ص�','SAMJIN LND COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005500','�������ຸ����','��������','SamjinPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000250','��õ������','��õ������','SAM CHUN DANG PHARM CO. LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004690','��õ��������','��õ��','Samchully');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024950','��õ��������','��õ��������','SAMCHULY BICYCLE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038500','��ǥ�ø�Ʈ','��ǥ�ø�Ʈ','SAMPYO Cement Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017480','����ö��','����ö��','SAMHYUN STEEL Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010960','��ȣ���� ������','��ȣ����','Samho Development Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046390','��ȭ��Ʈ����','��ȭ��Ʈ����','SAMHWA NETWORKS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004450','��ȭ�հ�������','��ȭ�հ�','SamhwaCrown&Closure');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009470','��ȭ���⺸����','��ȭ����','SamwhaElectric');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011230','��ȭ���ڰ���������','��ȭ����','SamwhaElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001820','��ȭ�ܵ�������������','��ȭ�ܵ���','SamwhaCapacitor');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000390','��ȭ����Ʈ����������','��ȭ����Ʈ','SamhwaPaintIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027580','��','��','SANG BO Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038540','�����','�����','Sangsangin Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307870','������̾���1ȣ����μ�����','������̾�1ȣ����','Sangsangin Ian No.1 Special Purpose Acquisition Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('329560','������̾���2ȣ����μ�����','������̾���2ȣ����','Sangsangin Ian No.2 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101000','������δ���Ʈ��','������δ���Ʈ��','Sangsangin Industry Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001290','��������Ǻ�����','���������','SANGSANGININVESTMENT&SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041650','��ź극��ũ������','��ź극��ũ','SANGSINBRAKE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091580','����̵���','����̵���','SANGSIN ENERGY DISPLAY PRECISION CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263810','�������','�������','Sangshin Electronics Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089980','���������ũ','���������ũ','SANG-A FRONTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042940','����ī�Ϸ�','����ī�Ϸ�','Sangji Caelum, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042600','���δн�','���δн�','SERONICS. CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('075180','���п����Ƽ��','���п����Ƽ��','SaeronAutomotiveCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263540','����','����','Sacheon Aerospace Manufacturing Ind. Co. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007540','��ǥ������','��ǥ','SEMPIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('248170','��ǥ��ǰ������','��ǥ��ǰ','SEMPIO FOODS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('294630','����','����','SuNAM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038070','�������̿����̾�','�������̿�','SeouLinBioscience CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006730','����Ƽ����','����T&D','Seobu T&D Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079650','����','����','Seo San Co. Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100660','���ϱ�����','���ϱ�����','SEOAM MACHINERY INDUSTRY CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007860','����������','����','SEOYON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200880','������ȭ������','������ȭ','SEOYONEHWA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019770','����ž��Ż','����ž��Ż','SEOYON TOPMETAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017390','���ﵵ�ð���������','���ﰡ��','SeoulCityGas');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043710','���︮��','���︮��','SEOULEAGUER CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092190','������̿��ý�','������̿��ý�','SEOUL VIOSYS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046890','����ݵ�ü','����ݵ�ü','SEOUL SEMICONDUCTOR CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004415','�����ǰ����1�켱��','�����ǰ��','SeoulFoodInd(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004410','�����ǰ����������','�����ǰ','SeoulFoodInd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063170','�������','�������','Seoul Auction Co. Ltd..');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027040','�����������','�����������','SEOUL ELECTRONICS & TELECOM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018680','��������','��������','SEOUL PHARMA CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021050','����������','����','Seowon');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093920','��������','��������','SEOWONINTECH.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189860','��������','��������','SEOJEON ELECTRIC MACHINERY Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('178320','�����ý���','�����ý���','SEOJIN SYSTEM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122690','���������Ƽ��','���������Ƽ��','Seojin Automotive Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140070','���÷����۷ι�','���÷����۷ι�','SurplusGLOBAL,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011370','����','����','Seohan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065710','��ȣ����','��ȣ����','Seoho Electric Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008490','���ﺸ����','����','SUHEUNG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035890','����Ǽ�','����Ǽ�','SEOHEE CONSTRUCTION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('357550','���濡��Ƽ','���濡��Ƽ','Sukgyung AT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003100','����','����','SUN KWANG Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123420','����������','����������','SundayToz Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007610','�������⺸����','��������','SeondoElectric');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067370','�����̿�','�����̿�','SunBio');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002820','���ؿ�������','SUN&L','SUN&L');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('171090','���ͽý���','���ͽý���','SUNIC SYSTEM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136490','����������','����','SUNJIN Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086710','������Ƽ���̾�','������Ƽ���̾�','SUNJIN BEAUTY SCIENCE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014620','��������','��������','SUNG KWANG BEND CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037350','�����̿���','�����̿���','SUNGDO Engineering & Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014915','��������1�켱��','�������ڿ�','SungmoonElectronics(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014910','�������ں�����','��������','SungmoonElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003080','����ȭ�к�����','����ȭ��','SungboChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004985','���ž�ȸ1�켱��','���ž�ȸ��','SungshinCement(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004980','���ž�ȸ������','���ž�ȸ','SungshinCement');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011300','���Ⱥ�����','����','Seongan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('081580','��������','��������','SUNGWOO ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045300','������ũ��','������ũ��','SUNGWOO TECHRON COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015750','����������','����������','SUNGWOO HITECH CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000180','��â������ֺ�����','��â�������','SungchangEnterpriseHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080470','��â������','��â������','SUNGCHANG AUTOTECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043260','��ȣ����','��ȣ����','SUNGHO ELECTRONICS CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('148150','����������ũ','����������ũ','Se Gyung Hi Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002420','�����纸����','������','TheCentury');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053060','����','����','SAE DONG CO.LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017510','�����������','��������','SemyungElectricMachinery');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214310','�����ܶ���Ʈ','�����ܶ���Ʈ','Semicon Light Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004365','����1�켱��','�����','SEBANG(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004360','���溸����','����','SEBANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004490','��������������','��������','SEBANG GLOBAL BATTERY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011560','�������̾�','�������̾�','SEBO MANUFACTURING ENGINEERING CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001430','���ƺ���ƿ������','���ƺ���ƿ','SEAH BESTEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('306200','��������������','��������','SeAH Steel Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003030','�����������ֺ�����','������������','SeAH Steel Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019440','����Ư����������','����Ư����','SeAH SPECIAL STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058650','����Ȧ����������','����Ȧ����','SeAHHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013000','����۷ι�������','����۷ι�','Sewooglobal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100700','����޵�Į','����޵�Į','SEWOONMEDICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234100','����','����','Sewon Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024830','��������','��������','SewonCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091090','���������� ������','����������','SEWON CELLONTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021820','��������������','��������','SewonPrecisionIndustry');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067830','���̺���I&C������','���̺���I&C','SAVEZONEI&C');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033530','��������������','��������','SEJONG INDUSTRIAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258830','�����޵�Į','�����޵�Į','SEJONG MEDICAL Co.Ltd.,');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036630','�����ڷ���','�����ڷ���','Sejong Telecom, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039310','����','����','SEJOONG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('075580','�����߰���������','�����߰���','SEJIN HEAVY INDUSTRIES CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067770','����Ƽ����','����Ƽ����','SEJIN T.S CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053450','���ڴн�','���ڴн�','SEKONIX CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234340','��Ʋ��ũ','��Ʋ��ũ','Settlebank Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027970','���Ϻ�����','����','seha');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145210','��ȭ���̿���������','��ȭ���̿���','SAEHWA IMC Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('252500','��ȭ�Ǿؾ�','��ȭ�Ǿؾ�','SEWHA P&C INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347000','����','����','SENKO Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('308170','��Ʈ�����غ�����','��Ʈ������','CENTRAL MOTEK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051980','��Ʈ�����̿�','��Ʈ�����̿�','CENTRALBIO Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012600','��Ʈ���λ���Ʈ������','��Ʈ���λ���Ʈ','CENTRAL INSIGHT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('331920','�����ͽ�','�����ͽ�','Celemics, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049180','����޵�','����޵�','CELLUMED CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299660','������','������','Cellid Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('268600','��������','��������','Cellivery Therapeutics, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108860','���ٽ����̾���','���ٽ�AI','SELVAS AI Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208370','���ٽ��ｺ�ɾ�','���ٽ��ｺ�ɾ�','SELVAS Healthcare, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258250','������','������','CELLGENTEK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068270','��Ʈ���º�����','��Ʈ����','Celltrion');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068760','��Ʈ��������','��Ʈ��������','Celltrion Pharm Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091990','��Ʈ�����ｺ�ɾ�','��Ʈ�����ｺ�ɾ�','Celltrion Healthcare Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290690','�ҷ轺','�ҷ轺','Solux Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053110','�Ҹ��ٴ�','�Ҹ��ٴ�','SORIBADA INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950200','�Ҹ���(Reg.S)','�Ҹ���(Reg.S)','Psomagen, Inc.(Reg.S)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032680','����Ʈ��','����Ʈ��','SOFTCEN CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032685','����Ʈ��1�켱��','����Ʈ����','SOFTCEN CO., LTD.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258790','����Ʈķ��','����Ʈķ��','SOFTCAMP CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066910','�տ���','�տ���','SONOKONG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043100','�ְ���̿��޵�Į','�ְ���̿�','Solco Biomedical Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('33637K','�ַ罺÷�ܼ���1�켱��','�ַ罺÷�ܼ���1��','Solus Advanced Materials(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('33637L','�ַ罺÷�ܼ���2�켱��(����)','�ַ罺÷�ܼ���2��B','Solus Advanced Materials(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336370','�ַ罺÷�ܼ��纸����','�ַ罺÷�ܼ���','Solus Advanced Materials');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('154040','�ַ翡Ÿ','�ַ翡Ÿ','Solueta Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('248070','�ַ翥������','�ַ翥','SOLUM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035610','�ֺ�','�ֺ�','SOLBORN, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('357780','�ֺ극��','�ֺ극��','Soulbrain Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036830','�ֺ극��Ȧ����','�ֺ극��Ȧ����','Soulbrain Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('304100','��Ʈ�轺','��Ʈ�轺','SALTLUX Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004430','�ۿ����������','�ۿ����','SongwonIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086980','��ڽ�','��ڽ�','SHOWBOX Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050960','������̾�Ƽ','������̾�Ƽ','SOOSAN INT Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017550','�����߰���������','�����߰���','SoosanHeavyIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084180','�����̳뺣�̼�','�����̳뺣�̼�','SOOSUNG INNOVATION. CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('253840','������','������','Sugentech, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058530','���彺�����','���彺�����','SUPEX BNP CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('236200','��������','��������','Suprema Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317770','�����������̵�','�����������̵�','Suprema ID Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094840','������������ġť','������������ġť','Suprema HQ Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192440','���ǰ��ڸ���','���ǰ��ڸ���','Spigen Korea Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099440','����','����','SMEC CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033790','��ī�̹�����ũ�����','��ī�̹�����ũ�����','Skymoons Technology, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('159910','��Ų�ؽ�Ų','��Ų�ؽ�Ų','Skin n Skin Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('158310','��Ÿ�����Ƽ','��Ÿ�����Ƽ','Star Mobility Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115570','��Ÿ�÷���','��Ÿ�÷���','STARFLEX CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258540','���۷�','���۷�','StemLab');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204630','��Ʃ��� ��ŸŬ�ν� �������θ�Ʈ','��Ʃ�����ŸŬ�ν�','STUDIO SANTA CLAUS ENTERTAINMENT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('253450','��Ʃ����巡�� �ֽ�ȸ��','��Ʃ����巡��','Studio Dragon Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013810','������','������','Speco');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039670','����������','����������','The Sports Seoul');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049830','����','����','SEUNG IL Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020710','�ð���ũ','�ð���ũ','SIGONG TECH Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033170','�ñ׳�ƽ��','�ñ׳�ƽ��','Signetics Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('260870','�ñ׳��̺���','�ñ׳��̺���','SIGNET EV');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048870','�ó����̳뺣�̼�','�ó����̳뺣�̼�','Synergy Innovation Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025320','�ó��彺','�ó��彺','Synopex Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('134790','�õ������','�õ���','Sidiz,Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('269620','�ý���','�ý���','SYSWORK CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131090','��ť��','��ť��','SECUVE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('232830','��ť��','��ť��','SECUCEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('139050','��Ƽ����','��Ƽ����','CITYLABS Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016590','�Ŵ������������','�Ŵ������','ShindaeyangPaper');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290520','�ŵ��⿬','�ŵ��⿬','Shindo Eng. Lab., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029530','�ŵ����ں�����','�ŵ�����','SINDOH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004970','�Ŷ󱳿�������','�Ŷ󱳿�','Silla');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001000','�Ŷ���','�Ŷ���','SillaTextile');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025870','�Ŷ󿡽���','�Ŷ󿡽���','SILLA SG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215600','�Ŷ���','�Ŷ���','SillaJen, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065350','�ż���Ÿ��ũ','�ż���Ÿ��ũ','SHINSUNG DELTA TECH CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011930','�ż��̿���������','�ż��̿���','SHINSUNG E&G');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005390','�ż��������','�ż����','ShinsungTongsang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034300','�ż���Ǽ�','�ż���Ǽ�','ShinsegaeEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004170','�ż��躸����','�ż���','Shinsegae Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035510','�ż�����̾ؾ� ������','�ż��� I&C','SHINSEGAE INFORMATION & COMMUNICATION Co');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031430','�ż������ͳ��ų�������','�ż������ͳ��ų�','SHINSEGAE INTERNATIONAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031440','�ż���Ǫ�庸����','�ż���Ǫ��','SHINSEGAE FOOD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006880','�ż�Ȧ����������','�ż�Ȧ����','SINGSONGHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002800','�Ž�����','�Ž�����','SINSIN PHARMACEUTICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005800','�ſ����ڷ纸����','�ſ����ڷ�','ShinyoungWacoal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001725','�ſ�����1�켱��','�ſ����ǿ�','ShinyoungSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001720','�ſ����Ǻ�����','�ſ�����','ShinyoungSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323280','�ſ���������ο���5ȣ����μ�����','�ſ�����5ȣ','Shinyoung HappyTomorrow No.5 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('344050','�ſ���������ο���6ȣ����μ�����','�ſ�����6ȣ','Shinyoung HappyTomorrow No.6 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009275','�ſ�1�켱��','�ſ���','Shinwon(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009270','�ſ�������','�ſ�','Shinwon');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017000','�ſ����հ���','�ſ����հ���','ShinwonConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002700','�������ں�����','��������','SHINIL ELECTRONICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012790','��������','��������','SHINIL PHARMACEUTICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138070','����������','����������','SINJIN SM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226330','����ī���̿�','����ī���̿�','SyntekaBio,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019175','��ǳ����1�켱��','��ǳ�����','ShinpoongPharmaceutical(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019170','��ǳ���ຸ����','��ǳ����','ShinpoongPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002870','��ǳ����������','��ǳ����','ShinpoongPaperMfg');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('055550','���ѱ�������ȸ�纸����','��������','ShinhanFinancialGroup Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293940','���Ѿ��ĸ���������','���Ѿ��ĸ���','Shinhan Alpha REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('333050','������6ȣ����μ�����','������6ȣ����','Shinhan 6th Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('366330','������7ȣ����μ�����','������7ȣ����','Shinhan 7th Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001770','��ȭ�Ǿ�������','��ȭ�Ǿ�','ShinhwaSilup');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056700','��ȭ������','��ȭ������','SHINWHA INTERTEK CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187270','��ȭ����','��ȭ����','Shin Hwa Contech Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004080','���ﺸ����','����','Shinhung');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('243840','���￡���̾�','���￡���̾�','SHIN HEUNG ENERGY & ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108320','�Ǹ��ܿ���','�Ǹ��ܿ���','Silicon Works Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222800','����','����','SIMMTECH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036710','����Ȧ����','����Ȧ����','SIMMTECH HOLDINGS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('160980','���̸ƽ�','���̸ƽ�','CYMECHS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('356890','���̹���','���̹���','CyberOne Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217330','��������','��������','Cytogen, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102280','�ֹ��','�ֹ��','SBW');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003410','�ֿ�C&E������','�ֿ�C&E','SSANGYONGC&E');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003620','�ֿ��ڵ���������','�ֿ���','SsangyongMotor');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010280','�ֿ��������','�ֿ��������','SsangYong Information & Communications');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004770','������ں�����','�������','SunnyElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217320','����ũ','����ũ','SUNTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208640','�濡����','�濡����','Thumbage Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222420','�����','�����','CENOTEC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037760','���Ʈ','���Ʈ','CENIT CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136510','��̽ý���','��̽ý���','Semisysco Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099320','��Ʈ������','��Ʈ������','Satrec Initiative Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015540','�츶�׶�ǻƽ��������','�츶�׶�ǻƽ��','THELMA Therapeutics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049960','����̿���','����̿���','CELL BIOTECH CO ., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050890','�򸮵�','�򸮵�','Solid, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066790','����������Ϲ��','��������','KOREA CABLE T.V CHUNG-BUK SYSTEM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222080','�����̿���','�����̿���','Creative & Innovative System Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004920','��������ũ������','��������ũ','CITECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('236030','����Ǫ��','����Ǫ��','SSIAL FOOD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103660','����','����','CIAAT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('245450','���ؿ�����ũ','���ؿ�����ũ','CNSLINK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023460','���ؿ���ġ','CNH','CNH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('264660','������������ũ','������������ũ','C&G Hi Tech Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('352700','������������','������������','CNTUS SUNGJIN CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065770','������','CS','CS CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('297090','���������','���������','CS BEARING Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083660','�����������ڽ���','CSA �ڽ���','CSA COSMIC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('112610','���������庸����','����������','CS Wind Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('286000','����Ƽ�帲','����Ƽ�帲','CNT Dream');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115530','�����÷���','�����÷���','CNPLUS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225330','������������','������������','CMS Edu Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056000','��������������','COWON','COWON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115480','�����޵�Į�ý���','�����޵�Į','CU MEDICAL SYSTEMS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189330','���̷�','���̷�','XIIlab Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000120','�����̴���������','CJ�������','CJ LOGISTICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079160','�����̾������� ������','CJ CGV','CJ CGV');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035760','�������̿���','CJ ENM','CJ ENM CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097955','�������������� �ֽ�ȸ�� 1�켱��','CJ�������� ��','CJ CheilJedang Corp(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097950','�������������� �ֽ�ȸ�� ������','CJ��������','CJ CheilJedang Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051500','�����������ÿ���','CJ�����ÿ���','CJ Freshway Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096530','����','����','Seegene Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900120','�����̿���ġǪ����ｺ����Ƽ��','�����̿���ġ','CKH Food & Health Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101240','��ť��','��ť��','CQV Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060590','��Ƽ�����̿�','��Ƽ�����̿�','CTC BIO, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('260930','��Ƽ�����ڽ���ƽ��','��Ƽ�����ڽ���ƽ��','CTK Cosmetics Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013990','�ư�������۴�','�ư������۴�','AGABANG&COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123860','�Ƴ��н�','�Ƴ��н�','Anapass, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025980','�Ƴ�Ƽ','�Ƴ�Ƽ','Ananti Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008700','�Ƴ����ں�����','�Ƴ�����','AnamElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050320','�Ʒ���','�Ʒ���','RS Inc.,');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058220','�Ƹ�����ũ�����','�Ƹ���','ARION TECHNOLOGY INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('125210','�Ƹ�׸���','�Ƹ�׸���','AMOGREENTECH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002795','�Ƹ�G1�켱��','�Ƹ�G��','AmoreG(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00279K','�Ƹ�G3�켱��(��ȯ)','�Ƹ�G3��(��ȯ)','AMOREG(3PC)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002790','�Ƹ�G������','�Ƹ�G','AmoreG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090435','�Ƹ��۽��� 1�켱��','�Ƹ��۽��ȿ�','AMOREPACIFIC CORPORATION(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090430','�Ƹ��۽��� ������','�Ƹ��۽���','AMOREPACIFIC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052710','�Ƹ���','�Ƹ���','Amotech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('074430','�ƹ̳������','�ƹ̳������','AMINOLOGICS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092040','�ƹ�����','�ƹ�����','Amicogen, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083930','�ƹ���','�ƹ���','AVACO CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('149950','�ƹ���','�ƹ���','AVATEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036010','�ƺ�������','�ƺ�������','ABCO ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002030','�Ƽ��ƺ�����','�Ƽ���','ASIA HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('183190','�Ƽ��ƽø�Ʈ������','�Ƽ��ƽø�Ʈ','ASIACEMENT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002310','�Ƽ�������������','�Ƽ�������','AsiaPaperManufacturing');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050860','�Ƽ�����','�Ƽ�����','ASIA TECHNOLOGY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012170','�Ƽ����������','�Ƽ����','Ascendio');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246720','�ƽ�Ÿ','�ƽ�Ÿ','ASTA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067390','�ƽ�Ʈ','�ƽ�Ʈ','AeroSpace Technology of Korea, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('127710','�ƽþư���','�ƽþư���','The Asia Business Daily Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267850','�ƽþƳ�IDT������','�ƽþƳ�IDT','AsianaIDT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020560','�ƽþƳ��װ� ������','�ƽþƳ��װ�','Asiana Airlines');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227610','�ƿ��ǻ�Ľ�','�ƿ��ǻ�Ľ�','Outin Futures Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('143160','���̵�','���̵�','Intelligent Digital Integrated Security Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054800','���̵�Ȧ����','���̵�Ȧ����','IDIS Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('332370','���̵���','���̵���','IDP Corp., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122900','���̸����ڸ��ƺ�����','���̸����ڸ���','iMarketKorea Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('339950','���̺�迵','���̺�迵','IBKIMYOUNG CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('335870','���̺����̿�����12ȣ����μ�����','IBKS��12ȣ����','IBKS No.12 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('351340','���̺����̿�����13ȣ����μ�����','IBKS��13ȣ����','IBKS No.13 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('351320','���̺����̿�����14ȣ����μ�����','IBKS��14ȣ����','IBKS No.14 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('373200','���̺����̿�����15ȣ����μ�����','IBKS��15ȣ����','IBKS No.15 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099190','���̼���','���̼���','i-SENS, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('289010','���̽�ũ������','���̽�ũ������','i-Scream Edu Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214430','���̾����ý���','���̾����ý���','i3system, Ind.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040910','���̾���','���̾���','ICD Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068940','���̾�����','���̾�����','ICK Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052860','���̾ؾ���ũ�����','���̾ؾ�','I&C Technology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010780','���̿�������������','���̿�������','IS DONGSEO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095340','���̿�����','ISC','ISC Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069920','���̿�����Ŀ�ӽ�','���̿�����Ŀ�ӽ�','ISE Commerce Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038880','���̿���','���̿���','iA, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307180','���̿����̾�','���̿����̾�','IL SCIENCE CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101390','���̿�','���̿�','IM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052220','���̿���','iMBC','iMBC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090740','���̿��̿���','���̿��̿���','IME YOUNYI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226350','���̿���','���̿���','IM Tech Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078860','���̿��������۴�','���̿�����','IOKCOMPANY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114810','���̿���','���̿���','IONES Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031310','���������','���������','EYESVISION CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('185490','������','������','EyeGene,Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('059100','����������Ʈ','����������Ʈ','i-Components Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('149010','�������̼�����','�������̼�����','IK Semicon Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('262840','��������Ʈ','��������Ʈ','IQUEST Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('175250','����ť��','����ť��','Icure Pharmaceutical Incorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052460','����ũ����Ʈ','����ũ����Ʈ','iCRAFT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119830','������','������','ITEK, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052770','�������','�������','ITOXI Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('124500','����Ƽ��','����Ƽ��','ITCEN CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099520','����Ƽ�������̾���','ITX-AI','ITX-AI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084850','����Ƽ���ݵ�ü','����Ƽ���ݵ�ü','ITM Semiconductor Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('223220','�����Ǹ���','�����Ǹ���','IP Monster');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027360','���־��̺�����','����IB����','AJU IB INVESTMENT CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032080','�����ش���������','������WB','AZTECH WB CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013310','�������','�������','A-JIN INDUSTRY CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('059120','����������','����������','AJINEXTEK Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('158430','����','����','ATON Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('149300','��ǻ�','��ǻ�','APURES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067160','������īƼ��','������īTV','AfreecaTV Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001540','�ȱ���ǰ','�ȱ���ǰ','AHN-GOOK PHARMACEUTICAL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053800','�ȷ�','�ȷ�','AHNLAB,INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251280','��������','��������','AngioLab');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065660','��Ʈ����','��Ʈ����','ANTEROGEN CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('297570','�˷��̽�','�˷��̽�','ALOYS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001780','�˷��� ������','�˷���','ALUKO CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('260660','�˸�������','�˸�������','KOREA ARLICO PHARM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131370','�˼���Ʈ','�˼���Ʈ','RSUPPORT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140670','�˿���������̼�','�˿���������̼�','RS Automation Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('327260','�˿�����Ʈ������','RF��Ʈ������','RF Materials');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096610','�˿�������','�˿�������','RFsemi Technologies,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('218410','�˿�������ġ���̾�','RFHIC','RFHIC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('061040','�˿�����','�˿�����','RFTECH CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('148250','�˿�����ũ�����','�˿�����ũ�����','RN2 Technologies Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347860','��ü��','��ü��','Alchera Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196170','���׿���','���׿���','Alteogen Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123750','���潺����','���潺����','Alton Sports Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085810','��Ƽĳ��Ʈ','��Ƽĳ��Ʈ','Alticast Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('117670','����Ȧ����','����Ȧ����','Alpha Holdings, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('291650','��Ÿ�ӻ��̾�','��Ÿ�ӻ��̾�','Aptamer Sciences Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293780','��Ÿ���̿�','��Ÿ���̿�','Aptabio Therapeutics Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267810','����','����','ANTZ');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018250','�ְ���������','�ְ���','AEKYUNG INDUSTRIAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161000','�ְ���ȭ������','�ְ���ȭ','Aekyung Petrochemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196300','�ִ���','�ִ���','ANYGEN CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('310200','�ִ��÷���','�ִ��÷���','ANIPLUS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('179530','�ֵ���̿���','�ֵ���̿���','ADBIOTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('205500','�׼ǽ�����','�׼ǽ�����','Action Square Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052790','���������Ʈ','���������Ʈ','ACTOZ SOFT CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131400','��Ʈ','��Ʈ','ACT CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290740','��Ʈ��','��Ʈ��','ActRo');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238090','�ص�����','�ص�����','NDFOS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092600','�ؾ���','�ؾ���','NC& Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('129890','����','����','ABKO CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('174900','��Ŭ�� �ֽ�ȸ��','��Ŭ��','AbClon Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('255440','�߽�','�߽�','YAS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030960','������','������','Yangjisa');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102120','���ݵ�ü','���ݵ�ü','ABOV Semiconductor Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238120','����ε�����ƽ��','����ε�','Aligned Genetics, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224810','�����Ͽ콺','�����Ͽ콺','EOMJIHOUSE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019990','������ũ','������ũ','ENERTORK LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011090','���ؽ�������','���ؽ�','Enex');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270660','���긮��','���긮��','Everybot');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038680','�����ݽý���','������','S NET SYSTEMS.Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217480','������������','������������','SD BIOTECHNOLOGIES CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121890','������ý���','������ý���','SD system Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099220','������','SDN','SDN Company Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097780','������','������','S-MAC CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('289080','���������κ���Ʈ��Ʈ','SV�κ���Ʈ��Ʈ','SV INVESTMENT CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019550','����������κ���Ʈ��Ʈ','SBI�κ���Ʈ��Ʈ','SBI Investment KOREA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034120','�����񿡽�������','SBS','SEOULBROADCASTINGSYSTEM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046140','�����񿡽����������','SBS���������','SBS Contents Hub Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042110','��������','��������','SCD CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036120','����������������','SCI������','SCI Information Service Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298060','���������������','���������������','SCM Lifescience Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065420','�������̸��ҽ�','�������̸��ҽ�','SI RESOURCES CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270210','�����˹��̿���','�����˹��̿���','SR biotek');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103230','�����ش����','�����ش����','S&W Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('260970','�����ص�','�����ص�','S&D');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900080','�����ؾ������׷츮��Ƽ��','�����ؾ������׷�','S&C Engine Group Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101490','�����ؿ�����','�����ؿ�����','S&S TECH CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950180','����������','SNK','SNK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095910','����������','����������','S-Energy CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('275630','����������','����������','SSR Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031330','�������̿�Ƽ','�������̿�Ƽ','SAMT CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060540','��������Ƽ','��������Ƽ','System and Application Technologies Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056190','������������','������������','SFA Engineering Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036540','�����������̹ݵ�ü','SFA�ݵ�ü','SFA Semicon Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080000','����������������','��������','SNU Precision Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091340','����������������','S&K������','S&K POLYTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005850','������������','������','SLCORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246250','�������������̿�','�������������̿�','SLS BIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063440','�����������������α׷�','SM Life Design','SM Life Design Group Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299670','��������','��������','SMVINA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041510','�������������θ�Ʈ','������','SM ENTERTAINMENT CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048550','��������ó��������','SM C&C','SM Culture & Contents Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007820','�������ھ�','�������ھ�','SMCore.Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109610','��������','��������','SY CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012750','������������','������','S-1');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('306040','�������̱׷�','�������̱׷�','SJ Group Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080440','������������','������������','SJK CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217910','����������','����������','SJ-CHEM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004060','���������蹰�꺸����','SG���蹰��','SGCORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016250','������������ũ�Ǽ�','SGC����ũ�Ǽ�','SGC eTEC E&C Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049470','����������','SGA','SGA Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('184230','���������� �ַ����','SGA�ַ����','SGA Solutions Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224880','����������Ŭ���弭��','SGAŬ���弭��','SGA CloudService');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040610','����������','SG&G','SG&G Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('255220','��������','SG','SG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036490','�������� ��Ƽ������','SK��Ƽ������','SK Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006125','�������̵�Ŀ����1�켱��','SK��Ŀ������','SK Discovery Co.,Ltd.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006120','�������̵�Ŀ����������','SK��Ŀ����','SK Discovery Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068400','�������̷���ī������','SK����ī','SK RENT A CAR');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('302440','�������̹��̿����̾𽺺�����','SK���̿����̾�','SK BIOSCIENCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('326030','�������̹��̿��ʺ�����','SK���̿���','SK BIOPHARMACEUTICALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224020','�������̾�����','�������̾�����','SKCS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307070','�������̿��̾��Ǿ���4ȣ����μ�����','SK4ȣ����','SK ACPC NO.4 SPECIAL PURPOSE ACQUISITION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('337450','����������5ȣ����μ�����','SK5ȣ����','SK NO.5 SPECIAL PURPOSE ACQUISITION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340350','����������6ȣ����μ�����','SK6ȣ����','SK NO.6 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000660','�����������̴н�������','SK���̴н�','SK hynix');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096630','�����ڳ�','�����ڳ�','S Connect Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069510','������','������','ESTec Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041910','�������ĸ�','�������ĸ�','ESTECHPHARMA CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234300','����Ʈ����','����Ʈ����','STraffic Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039440','����Ƽ����','����Ƽ����','Systems Technology Incorporated');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('098660','����Ƽ��','����Ƽ��','STO Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052020','����Ƽť��','����Ƽť��','STCUBE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('237690','����Ƽ��','����Ƽ��','ST Pharm Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050760','����������','����������','S POLYTECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('288620','����ǻ��','����ǻ��','S-Fuelcell Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317830','�����ǽý��۽�','�����ǽý��۽�','SP SYSTEMS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058610','��������','��������','SPG CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043340','������ũ','������ũ','ESSEN TECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023960','�����������Ͼ������','�����������Ͼ','SC ENGINEERING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298690','����λ꺸����','����λ�','AirBusan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054630','���̵�Ĩ��','���̵�Ĩ��','Advanced Digital Chips Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200710','���̵���ũ�����','���̵���ũ�����','ADTechnology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096690','���̷�Ʈ','���̷�Ʈ','Aroot Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078520','���̺�����������','���̺�����','ABLE C&C');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298380','���̺񿤹��̿�','���̺񿤹��̿�','ABL Bio Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('203400','���̺��','���̺��','ABION Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('195990','���̺����ι��̿�','���̺����ι��̿�','Abpro Bio Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003800','���̽�ħ��','���̽�ħ��','AceBed');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322190','���̽�ķ��','���̽�ķ��','ACE CAMPER');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088800','���̽���ũ�����','���̽���ũ','Ace Technologies Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241840','���̽��丮','���̽��丮','ASTORY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138360','���̾�Ƽ','���̾�Ƽ','ACT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039230','���̾��̺�Ʈ','���̾��̺�Ʈ','AIBIT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('312610','���̿��������','���̿��������','A.F.W Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015260','���̿��Ǻ�����','���̿���','AUTOMOBILE&PCB');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234070','���̿�����','���̿�����','A ONE ALFORM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140910','�����ڱ�����ε�������ȸ�纸����','���̸���','A SELF-ADMINISTERED REAL ESTATE INVESTMENT TRUST INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039570','����ġ�𾾾�����Ʈ�ѽ�������','HDC������Ʈ�ѽ�','HDC I-CONTROLS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089470','����ġ���������Ǻ�����','HDC����EP','HDC Hyundai Engineering Plastics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078150','����ġ����ũ���','HB��ũ���','HB Technology CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072990','����ġ��Ƽ','����ġ��Ƽ','HCT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036640','����ġ�˿���','HRS','HRS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082740','����ġ��������������','HSD����','HSD Engine');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044990','����ġ������������','����ġ������������','H&S');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('176440','����ġ��Ƽ�Ϸ�Ʈ�δн�','����ġ��Ƽ','HNT Electronics Company Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028300','����ġ����','����ġ����','HLB INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067630','����ġ����������','����ġ����������','HLB Life Science CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047920','����ġ��������','����ġ��������','HLB PHARMACEUTICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043220','����ġ�����Ŀ�','����ġ�����Ŀ�','HLB POWER Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('239610','����ġ�����̾�','����ġ�����̾�','HLSCIENCE Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353070','����ġ�������̺���4ȣ����μ�����','����ġ������4ȣ����','HMCIB No.4 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353060','����ġ�������̺���5ȣ����μ�����','����ġ������5ȣ����','HMCIB No.5 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011200','����ġ����������','HMM','HMM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044780','����ġ����','����ġ����','HK CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071670','������ũ�ַ��','������ũ�ַ��','A-Tech Solution CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045660','������','������','ATEC CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224110','������Ƽ��','������Ƽ��','ATEC T& CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('230980','����Ʈ��','����Ʈ��','AIIT ONE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021080','����Ƽ���κ���Ʈ��Ʈ','����Ƽ���κ���Ʈ','Atinum Investment Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089530','����Ƽ������','����Ƽ������','AT semicon Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200470','������Ʈ','������Ʈ','APACT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073070','������','������','APAM CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('207490','�����彺����','�����彺����','APEX INTEC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('262260','��������','��������','A PRO Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003060','�������������ຸ����','��������������','Aprogen pharmaceuticals,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007460','�������������̾��̾�������','���������� KIC','Aprogen KIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109960','�����������ｺ�ɾ�ذ�����','���������� H&G','Aprogen Healthcare & Games Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('244920','�����÷������º�����','�����÷�������','A Plus Asset');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('265520','�����ǽý���','AP�ý���','Advanced Process Systems Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054620','�����ǿ���Ȧ����','APSȦ����','APS Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('211270','����������','AP����','Asia Pacific Satellite Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089970','������Ƽ��','������Ƽ��','APTC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('230240','��ġ������','��ġ������','HFR, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064510','���ڸ��̽���','���ڸ��̽���','ECOMAISTER CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('230360','���ڸ�����','���ڸ�����','ECHOMARKETING Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038870','���ڹ��̿�Ȧ����','���ڹ��̿�','EcoBio Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('128540','����ĸ','����ĸ','ECOCAB CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086520','��������','��������','ECOPRO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('247540','�������κ�','�������κ�','ECOPRO BM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038110','�����ö�ƽ','�����ö�ƽ','ECOPLASTIC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073540','��������','��������','FRTEK CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064850','�����ذ��̵�','�����ذ��̵�','FnGuide Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064090','�����ظ��ۺ�','�����ظ��ۺ�','FN REPUBLIC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036810','��������Ƽ','��������Ƽ','FINE SEMITECH Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('173940','���������������θ�Ʈ','������������','FNC ENTERTAINMENT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083500','������������ũ','������������ũ','FNS TECH. Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054940','�����̿���','�����̿���','EXA E&C, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950130','���������̿�','���������̿�','Access Bio, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('205100','����','����','EXEM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('070300','����ť��','����ť��','Xcure Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092870','������','������','Exicon Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317870','�����̿��Ͼ�','�����̿��Ͼ�','Envioneer Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067570','�����̿���ġ�ڸ���','�����̿���ġ�ڸ���','NVH KOREA INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('236810','����Ƽ','����Ƽ','NBT INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140610','���ֹ��̿����̾�','���ֹ��̿����̾�','Ensol Biosciences');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('333620','���ý�','���ý�','Nsys Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101400','����Ʈ��','����Ʈ��','N CITRON, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036570','��������Ʈ������','��������Ʈ','NCsoftCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217820','������','������','NS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138250','���������κ�����','����������','NS Shopping Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031860','��������','��������','NSN Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238170','��������','��������','NSM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224760','���������۴�','���������۴�','NSCOMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('310840','������ġ����μ�����13ȣ','������ġ����13ȣ','NH SPECIAL PURPOSE ACQUISITION 13 CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353190','������ġ����μ�����16ȣ','������ġ����16ȣ','NH SPECIAL PURPOSE ACQUISITION 16 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('359090','������ġ����μ�����17ȣ','������ġ����17ȣ','NH SPECIAL PURPOSE ACQUISITION 17 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('365590','������ġ����μ�����18ȣ','������ġ����18ȣ','NH SPECIAL PURPOSE ACQUISITION 18 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104200','������ġ������','NHN����','NHN BUGS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060250','������ġ���ѱ����̹�����','NHN�ѱ����̹�����','NHN KCP Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005945','������ġ��������1�켱��','NH�������ǿ�','NH INVESTMENT & SECURITIES(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005940','������ġ�������Ǻ�����','NH��������','NH INVESTMENT & SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('265740','��������','��������','NFC Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053290','���̴ɷ�','NE�ɷ�','NE Neungyule, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('354200','�������̿�','�������̿�','NGeneBio Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093510','�������̾���','�������̾���','NGVI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208860','��������ũ�η���','��������ũ�η���','EnGIS Technologies, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('183490','�����ͻ������','�����ͻ������','ENZYCHEM LIFESCIENCES CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085310','������ ������','������','NK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('182400','�����̸ƽ�','�����̸ƽ�','NKMAX Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009810','�����̹��꺸����','�����̹���','NK MULSAN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069410','���ڽ�','���ڽ�','nTels Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227950','������','������','N2TECH CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('198080','���ǵ�','���ǵ�','NPD Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048830','��������','��������','NPK CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096870','����Ƽ','����Ƽ','LDT Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('276240','��������','��������','Elivision');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900140','�����̿���Ȧ����������','�����̿���Ȧ����','LVMC Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('061970','���񼼹���','���񼼹���','LB SEMICON CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138690','�����̿���','�����̿���','LIS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290650','���ؾ����̿�','���ؾ����̿�','L&C BIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066970','���ؿ���','���ؿ���','L&F CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('156100','�������̹��̿��޵�','�������̹��̿�','L&K BIOMED CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('229640','�����������ƽþƺ�����','LS�����ƽþ�','LS C&S ASIA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('311060','������Ƽ','������Ƽ','LAT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073110','��������','��������','LMS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083310','����Ƽ��Ũ','����Ƽ��Ũ','LOT Vacuum. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('297890','����Ƽ','����Ƽ','LET CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108670','�����Ͽ�ý�','LG�Ͽ�ý�','LG HAUSYS, LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108675','�����Ͽ�ý� 1�켱��','LG�Ͽ�ý���','LG HAUSYS, LTD.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037560','������κ���������','LG��κ���','LG HelloVision');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037950','������','������','ELCOMTEC CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('170920','��Ƽ��','��Ƽ��','LTC Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058630','������','������','Mgame Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058970','����','����','EMRO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019590','����ó����','����ó����','M-VENTURE INVESTMENT, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097520','�����ؽ�','�����ؽ�','MCNEX Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('179290','��������','��������','MITECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225860','���ؾ��������','���ؾ��������','M&C Life Science');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009780','��������','��������','MSC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123040','������������','������������','MS AUTOTECH COMPANY, LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323230','���������ڸ���','���������ڸ���','MFM KOREA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032790','�����÷���','�����÷���','MGENPLUS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033160','����������','����������','MKElectron');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347890','�����������۷��̼�','��������','M2I CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033310','������','������','M2N Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('259630','���÷���','���÷���','mPlus Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065150','���Ǳ׷�','MP�׷�','MP Group Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115960','����','����','YONWOO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060850','����������Ʈ��','����������Ʈ��','YoungLimWon SoftLab. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014440','����ȭ�к�����','����ȭ��','YoungboChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007530','���űݼӰ���','���űݼ�','YoungsinMetalIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225430','���̿�����','���̿�����','KMPHARMACEUTICAL Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092220','�����̾� ������','KEC','KEC Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046440','�������������','KG�������','KGMobilians Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035600','�������̴Ͻý�','KG�̴Ͻý�','KGINICIS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('151860','��������Ƽ����','KG ETS','KG Eco Technology Services Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145270','����ž����������','����ž����','KTOPREITs');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030200','����Ƽ������','KT','KTCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030210','����Ƽ���������Ǻ�����','KTB��������','KTB Investment & Securities Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060370','����Ƽ���긶��','KT���긶��','KT Submarine Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053210','����Ƽ��ī�̶�����','��ī�̶�����','KT Skylife Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058850','����Ƽ������������','KTcs','ktcs corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058860','����Ƽ���̿���������','KTis','ktis Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033780','����Ƽ����������','KT&G','KT&G Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036030','����Ƽ������','KTH','KTHitel Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064820','������','������','CAPE INDUSTRIES LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347140','�������̿�����4ȣ����μ�����','�������̿�����4ȣ','CAPE-ES No.4 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('256940','�����ǿ���','�����ǿ���','KPS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024880','�����ǿ���','�����ǿ���','KPF');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114450','�����ǿ������������̾�','KPX�������','KPX LIFESCIENCE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042040','�����ǿ���ũ','�����ǿ���ũ','KPM TECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054410','������Ƽ��','������Ƽ��','Korea Plasma Technology U Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('274090','���ھƿ���ν����̽�','���ھƿ���ν����̽�','Kencoa Aerospace Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217600','�Ϳ�','�Ϳ�','CHEMON Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089010','��Ʈ�δн�','��Ʈ�δн�','CHEMTRONICS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('220260','��Ʈ�ν�','��Ʈ�ν�','Chemtros Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052400','�ڳ�����','�ڳ�����','KONA I CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033110','�ڳʽ����Ʈ����','�ڳʽ����Ʈ����','Cornerstone Networks CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046070','�ڴ���','�ڴ���','KODACO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047770','�ڵ����Ĺ���','�ڵ����Ĺ���','Codes Combine Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078940','�ڵ����ó','�ڵ����ó','CODENATURE INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080530','�ڵ�','�ڵ�','KODI Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224060','�ڵ�','�ڵ�','CODI-M Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('357120','�ڶ��ڿ������÷�������������','�ڶ��ڿ���������','KORAMCO ENERGY PLUS REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078650','�ڷ�','�ڷ�','KOLEN CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104540','�ڷ���','�ڷ���','Corentec Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027050','�ڸ��Ƴ�ȭ��ǰ','�ڸ��Ƴ�','COREANA COSMETICS CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290510','�ڸ��Ƽ���','�ڸ��Ƽ���','Koreacenter Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007815','�ڸ��ƽ�ŰƮ1�켱��','�ڸ��ƽ��','KoreaCircuit(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00781K','�ڸ��ƽ�ŰƮ2�켱��(����)','�ڸ��ƽ�ŰƮ2��B','KOREA CIRCUIT(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007810','�ڸ��ƽ�ŰƮ������','�ڸ��ƽ�ŰƮ','KoreaCircuit');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('190650','�ڸ��ƿ�����������','�ڸ��ƿ�����������','KOREA ASSET INVESTMENT SECURITIES CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101670','�ڸ��ƿ�����','�ڸ��ƿ�����','KOREA SE CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123410','�ڸ��ƿ���Ƽ','�ڸ��ƿ���Ƽ','KOREA FUEL-TECH CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003690','�ڸ��ȸ��纸�躸����','�ڸ��ȸ�','Korean Reinsurance Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036690','�ڸƽ�','�ڸƽ�','COMMAX Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049430','�ڸ޷�','�ڸ޷�','KOMELON CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('183300','�ڹ���','�ڹ���','KoMiCo Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041960','�ڹ���','�ڹ���','KOMIPHARM INTERNATIONAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089890','�ڼ���','�ڼ���','KOSES Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009730','�ڼ�','�ڼ�','KOSSEN Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082660','�ڽ�����','�ڽ�����','Cosnine Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192820','�ڽ��ƽ�������','�ڽ��ƽ�','COSMAX, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044820','�ڽ��ƽ���Ƽ���� �ֽ�ȸ�� ������','�ڽ��ƽ���Ƽ����','COSMAX BTI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222040','�ڽ��ƽ�����Ƽ','�ڽ��ƽ�����Ƽ','COSMAX NBT, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241710','�ڽ���ī�ڸ���','�ڽ���ī�ڸ���','COSMECCA KOREA CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005070','�ڽ���ż��纸����','�ڽ���ż���','CosmoAM&T');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005420','�ڽ���ȭ�к�����','�ڽ���ȭ��','COSMOCHEMICALCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069110','�ڽ���','�ڽ���','COSON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071950','�ھƽ�������','�ھƽ�','KOAS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('166480','�ھƽ���','�ھƽ���','CORESTEM Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045970','�ھƽþ�','�ھƽþ�','CoAsia Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196450','�ھƽþƿ�ƽ��','�ھƽþƿ�ƽ��','CoAsia Optics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029960','�ڿ���','�ڿ���','Korea Environment Technology Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002025','�ڿ���1�켱��','�ڿ��տ�','KOLON CORPORATION(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003075','�ڿ��ձ۷ι�1�켱��','�ڿ��ձ۷ι���','KolonGlobalCorporation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003070','�ڿ��ձ۷ι�������','�ڿ��ձ۷ι�','KolonGlobalCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('144620','�ڿ��ո�Ƽ��������','�ڿ��ո�Ƽ����','KOLON MATERIALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002020','�ڿ��պ�����','�ڿ���','KOLON CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102940','�ڿ��ջ������','�ڿ��ջ������','KOLON LIFE SCIENCE Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120115','�ڿ����δ���Ʈ��1�켱��','�ڿ����δ���','KOLON INDUSTRIES(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120110','�ڿ����δ���Ʈ��������','�ڿ����δ�','KOLON INDUSTRIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950160','�ڿ���Ƽ����','�ڿ���Ƽ����','Kolon TissueGene, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138490','�ڿ����ö�ƽ������','�ڿ����ö�ƽ','KOLON PLASTICS, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021240','�ڿ��̺�����','�ڿ���','COWAY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033290','�����м�','�����м�','COWELL FASHION CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056360','������','������','COWEAVER Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('282880','������ũ','������ũ','COWINTECH Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121850','������','������','KOYJ.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015710','����','����','KOCOM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052330','����','����','KORTEK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322780','���۽��ڸ���','���۽��ڸ���','COPUS KOREA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126600','������','������','KOPLA Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200130','�ݸ���ؿ���ġ','�ݸ���ؿ���ġ','KolmarBNH Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031820','���ؽý��ۺ�����','���ؽý���','ComtecSystems');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192400','����Ȧ����������','����Ȧ����','Cuckoo Holdings Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('284740','����Ȩ�ý�������','����Ȩ�ý�','CUCKOO HOMESYS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317690','��Ÿ��Ʈ����','��Ÿ��Ʈ����','QuantaMatrix Incorporated');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060280','ť����','ť����','CUREXO, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015590','ť�κ�����','ť��','CURO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040350','ť����','ť����','CUROCOM Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051780','ť��Ȧ����','ť��Ȧ����','CUROHOLDINGS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115180','ť����Ʈ','ť����Ʈ','Qurient Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043090','ť������۴�','ť������۴�','Cube&Company Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('182360','ť�꿣�����θ�Ʈ','ť�꿣��','CUBE ENTERTAINMENT, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066310','ť��������','ť��������','Q.S.I Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136660','ť����','ť����','QMC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016600','ťĳ��Ż��Ʈ�ʽ�','ťĳ��Ż','Q Capital Partners Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('26490K','ũ�������1�켱��','ũ���������','CROWN(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('264900','ũ�������������','ũ�������','CROWN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005745','ũ�������Ȧ����1�켱��','ũ�������Ȧ������','CROWNHAITAI Holdings(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005740','ũ�������Ȧ����������','ũ�������Ȧ����','CROWNHAITAI Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215570','ũ�γؽ�','ũ�γؽ�','CRONEX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043590','ũ�ι�������','ũ�ι�������','CLOVER HITECHNOLOGY CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114120','ũ�����','ũ�����','Crucialtec Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('110790','ũ���������ؾ�','ũ���������ؾ�','CreaS F&C Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083790','ũ����Ż����ͽ�','ũ����Ż����ͽ�','CrystalGenomics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045520','ũ���ػ��̾�','ũ���ػ��̾�','Clean & Science Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036170','Ŭ���忡��','Ŭ���忡��','Cloud Air Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214150','Ŭ���ý�','Ŭ���ý�','CLASSYS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('352770','Ŭ����ͽ�','Ŭ����ͽ�','Clinomics Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('237880','Ŭ����','Ŭ����','CLIO Cosmetics Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('139670','Ű�׸�����','Ű�׸�����','KineMaster Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020120','Ű�ٸ���Ʃ���������','Ű�ٸ���Ʃ���','KidariStudio');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('311270','Ű����5ȣ����μ�����','Ű����5ȣ����','Kiwoom No.5 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039490','Ű�����Ǻ�����','Ű������','KIWOOM Securities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054780','Ű�̽�Ʈ','Ű�̽�Ʈ','KEYEAST Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('219130','Ÿ�̰��Ϸ�','Ÿ�̰��Ϸ�','TigerElec Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('180060','ž��','ž��','TOPSUN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065130','ž�����Ͼ','ž�����Ͼ','Top Engineering Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014580','�°�����̺�����','�°������','TAEKYUNG BK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015890','�°���������','�°���','TaekyungIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006890','�°��ɹ��ú�����','�°��ɹ���','TAEKYUNGCHEMICALCO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023160','�±�','�±�','T. K. CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003240','�±����������','�±����','TaekwangIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011280','�¸����庸����','�¸�����','Tailim Packaging');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053620','�¾�','�¾�','TAEYANG Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004105','�¾�ݼӰ���1�켱��','�¾�ݼӿ�','TaeyangMetalIndustrial(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004100','�¾�ݼӰ���������','�¾�ݼ�','TaeyangMetalIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('116100','�¾��� �ֽ�ȸ��','�¾���','Sun Machinery Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009410','�¿��Ǽ�������','�¿��Ǽ�','TAEYOUNG ENGINEERING & CONSTRUCTION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009415','�¿��Ǽ��켱��','�¿��Ǽ���','TAEYOUNG ENGINEERING & CONSTRUCTION(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044490','�¿�','�¿�','TAEWOONG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('124560','�¿�������','�¿�������','Taewoong Logistics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001420','�¿����꺸����','�¿�����','TaewonMulsan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007980','����繰�꺸����','����繰��','PAN-PACIFIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('191420','�װ���̾�','�װ���̾�','Tego Science, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073640','�׶���̾�','�׶���̾�','TERA SCIENCE Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('182690','�׶��','�׶��','TerraSem Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066700','�׶������ؽ�','�׶������ؽ�','THERAGEN ETEX CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095610','�׽�','�׽�','TES CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131970','�׽���','�׽���','TESNA Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('055490','�����ѽ�������','�����ѽ�','TAPEX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('308700','��ũ��','��ũ��','TECHEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089030','��ũ��','��ũ��','Techwing, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258050','��ũƮ����','��ũƮ����','Tech Trans');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054450','�ڷ�Ĩ��','�ڷ�Ĩ��','Telechips Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091440','�ڷ��ʵ�','�ڷ��ʵ�','Telefield, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078000','���ڿ��� ������','���ڿ���','TELCOWARE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200230','���ܾ˿�������','����RF����','TELCON RF PHARMACEUTICAL. Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214420','��ϸ𸮺�����','��ϸ�','TONYMOLY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215480','��ڽ��ڸ���','��ڽ��ڸ���','TOEBOX KOREA, Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051360','���','���','TOVIS Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045340','��Ż����Ʈ��ũ','��Ż����Ʈ','TOTAL SOFT BANK LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108230','����','����','TOPTEC COMPANY,LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079970','�������Ʈ','�������Ʈ','TOBESOFT Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('199800','����','����','ToolGen Incorporated');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105550','Ʈ����','Ʈ����','Truwin Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026150','Ư���Ǽ�','Ư���Ǽ�','TuksuConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322180','Ƽ������','Ƽ������','THiRA-UTECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('117730','Ƽ�κ�ƽ��','Ƽ�κ�ƽ��','T-Robotics co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033830','Ƽ��','Ƽ��','TAEGU BROADCASTING CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057680','Ƽ���̾�Ƽ��','Ƽ���̾�Ƽ��','T Scientific Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064760','Ƽ������','Ƽ������','TOKAI CARBON KOREA CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246710','Ƽ�ؾ˹��̿���','Ƽ�ؾ˹��̿���','T&R Biofab Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340570','Ƽ�ؿ�','Ƽ�ؿ�','T&L Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('277880','Ƽ��������','Ƽ��������','TSI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131290','Ƽ������','Ƽ������','TSE CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246690','Ƽ�����κ���Ʈ��Ʈ','TS�κ���Ʈ��Ʈ','T.S.Investment Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317240','Ƽ����Ʈ������','TSƮ������','TS Trillion Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019180','Ƽ����ġ��������','Ƽ����ġ��','THN CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('356860','Ƽ����','Ƽ����','TLB Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('062860','Ƽ������','Ƽ������','TLI Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002900','Ƽ���̿�������','TYM','TYM CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('36328K','Ƽ����Ȧ����1�켱��','Ƽ����Ȧ������','TY HOLDINGS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('363280','Ƽ����Ȧ����������','Ƽ����Ȧ����','TY HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('321550','Ƽ����̿�','Ƽ����̿�','TiumBio Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091810','Ƽ�����װ�������','Ƽ�����װ�','TWAYAIR');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004870','Ƽ����Ȧ����������','Ƽ����Ȧ����','T''way Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032540','Ƽ���̵̹��','TJ�̵��','TJ MEDIA CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('191600','Ƽ���̾�','Ƽ���̾�','TKC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104480','Ƽ�����ɹ�Į','Ƽ�����ɹ�Į','TK CHEMICAL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('309900','ƼƼ�����潺','ƼƼ�����潺','TTC DEFENCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('081150','Ƽ�÷���','Ƽ�÷���','Tplex Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('130740','Ƽ�Ǿ�','Ƽ�Ǿ��۷ι�','TPC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048770','Ƽ�Ǿ���īƮ�δн�','TPC','TPC Mechatronics Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217880','ƿ��','ƿ��','TILON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084730','��ũ����','��ũ����','Thinkware Systems Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046210','�ĳ���','�ĳ���','PANAGENE Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034230','�Ķ���̽�','�Ķ���̽�','Paradise Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033540','�Ķ���','�Ķ���','Paratech Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043200','�ķ�','�ķ�','PARU CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214450','�ĸ�����ġ','�ĸ�����ġ','PharmaResearch');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217950','�ĸ�����ġ���̿�','�ĸ�����ġ���̿�','PHARMA RESEARCH BIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208340','�ĸ��','�ĸ��','PharmAbcine Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005690','�Ĺ̼�������','�Ĺ̼�','Pharmicell');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('177830','�Ĺ�����','�Ĺ�����','PAVONINE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037070','�ļ���','�ļ���','PASECO CO.LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('150900','�ļ�','�ļ�','FASOO Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037030','�Ŀ���','�Ŀ���','POWERNET TECHNOLOGIES CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047310','�Ŀ�������','�Ŀ�������','POWER LOGICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('266870','�Ŀ�Ǯ����','�Ŀ�Ǯ����','Power Fulx');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('170790','���̿���ũ','���̿���ũ','Piolink, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049120','���ε�ؾ�','���ε�ؾ�','FINE DNC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038950','���ε�����','���ε�����','FINEDIGITAL Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('106240','������ũ�н�','������ũ�н�','FINE TECHNIX CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131760','������','������','FINETEK CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065690','��Ŀ��','��Ŀ��','PAKERS CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140860','��ũ�ý��۽�','��ũ�ý��۽�','Park Systems Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091700','��Ʈ��','��Ʈ��','PARTRON CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038160','�Ž���','�Ž���','PAXNet, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('202960','�ǵ���Ƽ��','�ǵ���Ƽ��','PANDORA TV CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032800','��Ÿ����','��Ÿ����','Fantagio Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('318010','�ʽ���','�ʽ���','Pharmsville Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036580','�ʽ��ں�����','�ʽ���','FARMSCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027710','�ʽ��丮','�ʽ��丮','FarmStory CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004720','�������̾𽺺�����','�������̾�','PharmGen Science');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225590','�м��÷���','�м��÷���','Fashion Platform Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054300','�ҽ�Ÿ������������','�ҽ�Ÿ������������','Panstar Enterprise Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068050','�ҿ������θ�Ʈ','�ҿ������θ�Ʈ','PAN ENTERTAINMENT CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028670','�ҿ��Ǻ�����','�ҿ���','PanOcean');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222110','����','����','Pangen Biotech Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010820','�۽��غ�����','�۽���','FIRSTEC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016800','�۽ý�������','�۽ý�','Fursys');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263750','�޾��','�޾��','PearlAbyss Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251970','�����ڸ���','�����ڸ���','PUM-TECH KOREA CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001020','�������ڸ��ƺ�����','�������ڸ���','PaperCorea Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('327610','������̿��޵�','������̿��޵�','Femtobiomed');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('087010','��Ʈ��','��Ʈ��','Peptron, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090080','��ȭ��� �ֽ�ȸ�� ������','��ȭ���','Pyung Hwa Industrial Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010770','��ȭȦ����������','��ȭȦ����','Pyung Hwa Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119500','����Ż','����Ż','FORMETAL CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016670','����Ƽ�ؾ�','����Ƽ�ؾ�','Pobis TNC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056730','������ũ','������ũ','Fourth-Link Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058430','�����ڰ��Ǻ�����','�����ڰ���','POSCO COATED & COLOR STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005490','�����ں�����','POSCO','POSCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('022100','�����ھ��̾�Ƽ','������ ICT','POSCO ICT COMPANY LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047050','���������ͳ��ųκ�����','���������ͳ��ų�','POSCO INTERNATIONAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003670','�������ɹ�Į������','�������ɹ�Į','POSCO CHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189690','���ÿ���','���ÿ���','FORCS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('318020','����Ʈ�����','����Ʈ�����','POINT MOBILE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('256630','����Ʈ�����Ͼ','����Ʈ�����Ͼ','POINT ENGINEERING Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('141020','��Ƽ��','��Ƽ��','Fortis, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('354230','��������Ʈ','��������Ʈ','foxSoft');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041020','���󸮽����ǽ�','���󸮽����ǽ�','Polaris Office');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123010','���󸮽�����','���󸮽�����','POLARIS WORKS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007630','���罺���̿��ʺ�����','���罺���̿���','POLUS BioPharm Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290720','Ǫ�峪��','Ǫ�峪��','FOODNAMOO, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005670','Ǫ����','Ǫ����','FOODWELL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094940','Ǫ�����','Ǫ�����','PULOON TECHNOLOGY INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007330','Ǫ����ȣ��������','Ǫ����������','PureunMutualSavingsBank');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017810','Ǯ����������','Ǯ����','PULMUONE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093380','ǳ��','ǳ��','PUNGKANG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023900','ǳ����������','ǳ������','PungkukAlcholnd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103140','ǳ�� ������','ǳ��','POONGSAN CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005810','ǳ��Ȧ����������','ǳ��Ȧ����','POONGSAN HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('195440','ǻ��','ǻ��','Fusion Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214270','ǻ�Ľ�Ʈ����Ʈ����','ǻ�Ľ�Ʈ����Ʈ����','Futurestream Networks Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('220100','ǻ����','ǻ����','FutureChem Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035200','�����Ľ�Ʈ','�����Ľ�Ʈ','PLUMB FAST CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('334970','������Ƽ�����̿�������','������Ƽ�����̿�������','Prestige Biologics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950210','������Ƽ�����̿��ĸ�KDR','������Ƽ�����̿��ĸ�','PRESTIGE BIOPHARMA LIMITED KDR');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('203690','���ν��׹ͽ�','���ν��׹ͽ�','PROSTEMICS CO.LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('303360','�����׿���','�����׿���','PROTEOMETECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053610','������','������','PROTEC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('335810','�����������̿�','�����������̿�','Precision Biosensor Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053160','��������','��������','FreeMs Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('075130','�÷�Ƽ��','�÷�Ƽ��','PLANTYNET Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222670','�÷����λ������','�÷����λ������','Plumbline Life Sciences');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001500','���������Ǻ�����','����������','HYUNDAI MOTOR SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011760','�������۷��̼Ǻ�����','�������۷��̼�','HYUNDAI CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227840','�������۷��̼�Ȧ����������','�������۷��̼�Ȧ����','HYUNDAI CORPORATION HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126560','����ǻó�ݺ�����','����ǻó��','Hyundai Futurenet');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001450','�����ػ�ȭ�纸�躸����','�����ػ�','Hyundai MARINE & FIRE INSURANCE CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057050','����Ȩ���κ�����','����Ȩ����','HYUNDAI HOME SHOPPING NETWORK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092300','������','������','HYUNWOO INDUSTRIAL CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053660','��������','��������','HYUNJIN MATERIALS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011080','�������̾ؾ�','����I&C','HYUNGJI Innovation and Creative Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093240','��������Ʈ������','��������Ʈ','HYUNGJI ELITE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003010','���κ�����','����','HaeinCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111110','ȣ���Ǿ�������','ȣ���Ǿ�','Hojeon');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008775','ȣ�ڽŶ�1�켱��','ȣ�ڽŶ��','HotelShilla(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008770','ȣ�ڽŶ�����','ȣ�ڽŶ�','HotelShilla');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060560','Ȩ��ŸȦ����','Ȩ��ŸȦ����','Home Center Holdings Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064240','Ȩĳ��Ʈ','Ȩĳ��Ʈ','homecast CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039610','ȭ�����','ȭ�����','HS VALVE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002460','ȭ�����������','ȭ�����','HwasungIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('378850','ȭ�¾˾ؿ��̺�����','ȭ�¾˾ؿ���','HWASEUNG R&A CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241590','ȭ�¿��������������','ȭ�¿�����������','HWASEUNG ENTERPRISE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006060','ȭ���δ���Ʈ��������','ȭ���δ�','HSIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013520','ȭ�����۷��̼Ǻ�����','ȭ�����۷��̼�','Hwaseung Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010690','ȭ�ź�����','ȭ��','Hwashin');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126640','ȭ������','ȭ������','HWASHIN PRECISION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('133820','ȭ�κ���ƿ������','ȭ�κ���ƿ','FINEBESTEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('061250','ȭ�Ͼ�ǰ','ȭ�Ͼ�ǰ','HWAIL PHARM. CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010660','ȭõ��躸����','ȭõ���','HWACHEON MACHINERY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000850','ȭõ���������','ȭõ���','HwacheonMachineTool');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016580','ȯ�����ຸ����','ȯ������','WhaninPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032560','Ȳ�ݿ���Ƽ������','Ȳ�ݿ���Ƽ','Hwang Kum Steel & Technology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004800','ȿ��������','ȿ��','Hyosung');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094280','ȿ������Ƽ���� ������','ȿ��ITX','HYOSUNG ITX Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097870','ȿ�����غ�','ȿ�����غ�','Hyosung ONB Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298040','ȿ���߰���������','ȿ���߰���','HYOSUNG HEAVY INDUSTRIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298050','ȿ��÷�ܼ��纸����','ȿ��÷�ܼ���','HYOSUNG ADVANCED MATERIALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298020','ȿ��Ƽ�ؾ�������','ȿ��Ƽ�ؾ�','HYOSUNG TNC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298000','ȿ��ȭ�к�����','ȿ��ȭ��','HYOSUNG CHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093370','�ļ� ������','�ļ�','FOOSUNG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050090','�ִн�����','�ִн�����','PHOENIX MATERIALS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('081660','�ٶ�Ȧ����������','�ٶ�Ȧ����','Fila Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290270','�޳׽ÿ�','�޳׽ÿ�','Hunesion co.,ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005870','�޴ϵ���ũ�����������','�޴ϵ�','HuneedTechnologies');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('284420','�޷�','�޷�','Hurum');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090710','�޸��κ�','�޸��κ�','Hyulim ROBOT Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('205470','�޸��ý�','�޸��ý�','HUMASIS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115160','�޸ƽ�','�޸ƽ�','HUMAX CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028080','�޸ƽ�Ȧ����','�޸ƽ�Ȧ����','Humax Holdings Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032860','�޸տ�','�޸տ�','Human N');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200670','�޸޵�','�޸޵�','Humedix Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('212310','�޺���','�޺���','HUVEXEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079980','�޺񽺺�����','�޺�','HUVIS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065510','�޺���','�޺���','Huvitz Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005010','�޽�ƿ������','�޽�ƿ','HUSTEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('243070','�޿½�','�޿½�','Huons Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084110','�޿½��۷ι�','�޿½��۷ι�','Huons Global Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145020','����','����','Hugel, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069260','���ͽ�������','���ͽ�','HuchemsFineChemicalCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024060','�ﱸ����','�ﱸ����','HeunguOil');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010240','�ﱹ','�ﱹ','HEUNGKUK METALTECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189980','�ﱹ��������','�ﱹ��������','HYUNGKUK F&B Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000545','�ﱹȭ���ػ���1�켱��','�ﱹȭ���','HeungkukFire&MarineIns(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000547','�ﱹȭ���ػ���2�켱��(����)','�ﱹȭ��2��B','HeungkukFire&MarineIns(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000540','�ﱹȭ���ػ��躸����','�ﱹȭ��','HeungkukFire&MarineInsurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003280','����ؿ����','����ؿ�','HeungaShipping');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037440','�����հ����繫��','��','Heerim Architects & Planners');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238490','����','����','HIMS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('237820','�÷��̵�','�÷��̵�','PlayD Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023770','�÷�������','�÷�������','PLAYWITH Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('300080','�ø���','�ø���','FLITTO Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('150440','�ǳ���','�ǳ���','Finotek');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032580','�ǵ�����','�ǵ�����','Fidelix Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051380','�Ǿ���Ʈ','�Ǿ���Ʈ','PC Direct, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241820','�Ǿ���','�Ǿ���','PCL. Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('178920','�Ǿ���÷�ܼ���','PI÷�ܼ���','PI Advanced Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('237750','�Ǿؾ���ũ','�Ǿؾ���ũ','PNC Technologies Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024850','�ǿ�������','�ǿ�������','PSMC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('319660','�ǿ�������','�ǿ�������','PSK INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031980','�ǿ�������Ȧ����','�ǿ�������Ȧ����','PSK HOLDINGS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002230','�ǿ�����','�ǿ�����','PS Tec. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057880','�ǿ���ġ��','�ǿ���ġ��','PHC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043370','�ǿ���ġ����','�ǿ���ġ����','PHA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('242350','�ǿ��������۴�','�ǿ��������۴�','PNIcompany');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('239890','�ǿ�����ġ��ũ','�ǿ�����ġ��ũ','P&H TECH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347740','�ǿ������Ǻ��ӻ󿬱���Ÿ','�ǿ������Ǻ��ӻ󿬱���Ÿ','P&K Skin Research Center Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('137400','�ǿ�Ƽ','�ǿ�Ƽ','People & Technology, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024940','�ǿ�ǳ��','PNǳ��','PNPOONGNYUN CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('128660','�����̸�Ż','�����̸�Ż','PJ METAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006140','����������','����������','PJ ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('304840','���ù��̿�','���ù��̿�','PeopleBio, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('062970','���Ǿ���','���Ǿ���','PPI. INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('087600','�ȼ��÷���','�ȼ��÷���','Pixelplus. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033180','�ʷ轺������','�ʷ轺','Feelux Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161580','�ʿ�ƽ��','�ʿ�ƽ��','PHILOPTICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347770','�˽�','�˽�','PIMS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('163730','�ΰ�','�ΰ�','Finger Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('332710','�ϳ�����14ȣ����μ�����','�ϳ�����14ȣ����','Hana Financial Fourteen Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('341160','�ϳ�����15ȣ����μ�����','�ϳ�����15ȣ����','Hana Financial Fifteenth Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('343510','�ϳ�����16ȣ����μ�����','�ϳ�����16ȣ����','Hana Financial Sixteen Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('363260','�ϳ�����17ȣ����μ�����','�ϳ�����17ȣ����','Hana Financial Seventeen Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086790','�ϳ��������ֺ�����','�ϳ���������','HanaFinancialGroupInc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299030','�ϳ����','�ϳ����','HANA TECHNOLOGY CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067310','�ϳ�����ũ��','�ϳ�����ũ��','Hana Micron Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('372290','�ϳ��ӽ�Ʈ7ȣ����μ�����','�ϳ��ӽ�Ʈ7ȣ����','Hana Must Seven Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307160','�ϳ��ӽ�Ʈ��6ȣ����μ�����','�ϳ��ӽ�Ʈ��6ȣ����','Hana Must Sixth Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('166090','�ϳ���Ƽ������','�ϳ���Ƽ������','Hana Materials Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293480','�ϳ����ຸ����','�ϳ�����','Hana Pharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039130','�ϳ��������','�ϳ�����','HANATOUR SERVICE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136480','�ϸ�','�ϸ�','HARIM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003380','�ϸ�����','�ϸ�����','Harim Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('172580','���̰�����12ȣ������������ȸ��','���̰��12ȣ','Hi Gold Ocean Kmarin No.12 Ship Investment Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('153360','���̰�����3ȣ��������ȸ��','���̰��3ȣ','Hi Gold Ocean No.3 Ship Investment Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('149980','���̷δ�','���̷δ�','Hironic Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013030','���̷��ڸ���','���̷��ڸ���','HY-LOK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('352820','���̺꺸����','���̺�','HYBE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126700','���̺����ý���','���̺����ý���','HyVISION SYSTEM.INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('106080','���̼Ҵ�','���̼Ҵ�','HYSONIC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071090','���̽�ƿ ������','���̽�ƿ','HISTEEL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340120','������5ȣ����μ�����','������5ȣ����','HI Special Purpose Acquisition Company V');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('221840','�������װ�','�������װ�','HIZEAERO Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('106190','��������','��������','HIGH TECH PHARM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019490','����Ʈ�о����������','����Ʈ��','HitronSystems');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000087','����Ʈ����2�켱��(����)','����Ʈ����2��B','HITEJINRO(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000080','����Ʈ���κ�����','����Ʈ����','HITEJINRO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000145','����Ʈ����Ȧ����1�켱��','����Ʈ����Ȧ������','HITEJINROHOLDINGS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000140','����Ʈ����Ȧ����������','����Ʈ����Ȧ����','HITEJINROHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066130','����','����','HAATZ Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004590','�ѱ�����','�ѱ�����','KoreaFurniture');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036460','�ѱ��������纸����','�ѱ���������','KoreaGasCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039340','�ѱ�����Ƽ����','�ѱ�����TV','Korea Business News CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005430','�ѱ����׺�����','�ѱ�����','KoreaAirportService');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034950','�ѱ������','�ѱ������','Korea Ratings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010040','�ѱ���ȭ������','�ѱ���ȭ','KOREAREFRACTORIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025540','�ѱ����ڰ���������','�ѱ�����','KoreaElectricTerminal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222980','�ѱ��Ƴ�Ƽ','�ѱ��Ƴ�Ƽ','Mcnulty Korea Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('331660','�ѱ��̶�Ŭ���û�','�ѱ��̶�Ŭ���û�','KOREA MIRACLE PEOPLE COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('318000','�ѱ����̿���','�ѱ����̿���','KOREA BIO-GEN Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096300','�ѱ���Ʈ���ε��갳��Ư���ڻ�1ȣ����ȸ��','��Ʈ������1','Vietnam Real Estate Development Fund1');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('256840','�ѱ��񿣾�','�ѱ��񿣾�','BNC Korea Co, Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004090','�ѱ���������������','�ѱ�����','KOREA PETROLEUM INDUSTRIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025550','�ѱ�����','�ѱ�����','HANKUK STEEL WIRE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002200','�ѱ������������������','�ѱ���������','KoreaExportPackagingIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002960','�ѱ�������������','�ѱ�������','HankookShellOil');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017890','�ѱ����ݻ��','�ѱ�����','KoreaAlcoholIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000240','�ѱ������۴Ϻ�����','�ѱ������۴�','HANKOOK & COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033270','�ѱ�������Ƽ������ ������','������Ƽ������','Korea United Pharm. Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080720','�ѱ����Ͽ�����','�ѱ����Ͽ�����','UNION KOREA PHARM CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123890','�ѱ��ڻ��Ź������','�ѱ��ڻ��Ź','KAIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015760','�ѱ����°��纸����','�ѱ�����','KoreaElectricPower');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052690','�ѱ����±�� ������','�������','KEPCO Engineering & Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063570','�ѱ����ڱ���','�ѱ����ڱ���','NICE Total Cash Management Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041460','�ѱ���������','�ѱ���������','Korea Electronic Certification Authority Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006200','�ѱ�����Ȧ����������','�ѱ�����Ȧ����','KEC HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101680','�ѱ����б��','�ѱ����б��','HNK MACHINE TOOL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039740','�ѱ���������','�ѱ���������','Korea Information Engineering Services');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053300','�ѱ���������','�ѱ���������','KOREA INFORMATION CERTIFICATE AUTHORITY, INCORPORATED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025770','�ѱ��������','�ѱ��������','KoreaInformation&Communication');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('310870','�ѱ���8ȣ����μ�����','�ѱ���8ȣ����','Korea No.8 Special Purpose Acquisition Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('368770','�ѱ���9ȣ����μ�����','�ѱ�9ȣ����','Korea No.9 Special Purpose Acquisition Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009540','�ѱ������ؾ纸����','�ѱ������ؾ�','KOREA SHIPBUILDING & OFFSHORE ENGINEERING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023350','�ѱ����ձ��������','�ѱ����ձ��','Korea Engineering Consultants Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025890','�ѱ��ְ�������','�ѱ��ְ�','HankookSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000970','�ѱ���ö������������','�ѱ���ö��','KoreaCastIronPipeInd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104700','�ѱ�ö��������','�ѱ�ö��','KISCO Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017960','�ѱ�ī��������','�ѱ�ī��','HankukCarbon');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023760','�ѱ�ĳ��Ż','�ѱ�ĳ��Ż','Han Kook Capital Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054040','�ѱ���ǻ��','�ѱ���ǻ��','KOREA COMPUTER INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050540','�ѱ����۷��̼�','�ѱ����۷��̼�','HANKOOK Corporation Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161890','�ѱ��ݸ�������','�ѱ��ݸ�','KOLMAR KOREA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024720','�ѱ��ݸ�Ȧ����������','�ѱ��ݸ�Ȧ����','KOLMAR KOREA HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021650','�ѱ�ť��','�ѱ�ť��','CUBIC KOREA INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161390','�ѱ�Ÿ�̾����ũ�����������','�ѱ�Ÿ�̾����ũ�����','HANKOOK TIRE & TECHNOLOGY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053590','�ѱ���ũ�����','�ѱ���ũ�����','HANKOOK Technology Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034830','�ѱ�������Ź������','�ѱ�������Ź','KOREIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('152550','�ѱ�����ANKOR�����ؿ��ڿ�����Ư���ڻ�����ȸ��1ȣ(��������)','�ѱ�ANKOR����','KIM ANKOR Oilfield Overseas Resources Development Fund[1]');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('168490','�ѱ�����Parallel�����ؿ��ڿ�����Ư���ڻ�����ȸ��1ȣ','�ѱ��з���','KIM Parallel Oilfield Overseas Resources Development Fund[1]');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071055','�ѱ����ڱ�������1�켱��','�ѱ��������ֿ�','KOREA INVESTMENT HOLDINGS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071050','�ѱ����ڱ������ֺ�����','�ѱ���������','KOREA INVESTMENT HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007280','�ѱ�Ư������������','�ѱ�Ư������','KOREASTEELSHAPES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032300','�ѱ��ĸ�','�ѱ��ĸ�','KOREA PHARMA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037230','�ѱ���Ű��','�ѱ���Ű��','HANKUK PACKAGE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010100','�ѱ�����������������','�ѱ�������','KoreaFlange');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047810','�ѱ��װ����ֻ��������','�ѱ��װ�����','KOREA AEROSPACE INDUSTRIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123690','�ѱ�ȭ��ǰ������','�ѱ�ȭ��ǰ','HANKOOKCOSMETICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003350','�ѱ�ȭ��ǰ����������','�ѱ�ȭ��ǰ����','HankookCosmeticsManufacturing');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030520','�ѱ۰���ǻ��','�ѱ۰���ǻ��','HANCOM INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052600','�ѳ�Ʈ','�ѳ�Ʈ','HANNET CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011500','�ѳ�ȭ��������','�ѳ�ȭ��','HANNONGCHEMICALSINC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002390','�ѵ�������','�ѵ�','HANDOK Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('256150','�ѵ�ũ����','�ѵ�ũ����','Handok Clean Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014790','�Ѷ�����','�Ѷ�','Halla Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092460','�Ѷ���̿�����','�Ѷ�IMS','HANLA IMS Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060980','�Ѷ�Ȧ����������','�Ѷ�Ȧ����','Halla Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053690','�ѹ̱۷ι������繫�Һ�����','�ѹ̱۷ι�','HanmiGlobal Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042700','�ѹ̹ݵ�ü������','�ѹ̹ݵ�ü','HANMISemiconductorCO.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008930','�ѹ̻��̾𽺺�����','�ѹ̻��̾�','Hanmi Science');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('128940','�ѹ̾�ǰ������','�ѹ̾�ǰ','HanmiPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047080','�Ѻ�����Ʈ','�Ѻ�����Ʈ','HANBIT SOFT Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009240','�ѻ�������','�ѻ�','HANSSEM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020000','�Ѽ�������','�Ѽ�','HandsomeCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003680','�Ѽ����������','�Ѽ����','HansungEnterprise');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105630','�Ѽ��Ǿ�������','�Ѽ��Ǿ�','HANSAE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069640','�Ѽ������̺�����','�Ѽ�������','HANSAEMK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016450','�Ѽ�����24Ȧ����������','�Ѽ�����24Ȧ����','HansaeYes24Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010420','�Ѽ�PNS������','�Ѽ�PNS','HANSOLPNS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009180','�Ѽַ�����ƽ��������','�Ѽַ�����ƽ��','Hansol Logistics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('070590','�Ѽ���Ƽť��','�Ѽ���Ƽť��','Hansol Inticube Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('213500','�Ѽ�����������','�Ѽ�����','Hansol Paper Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014680','�Ѽ��ɹ�Į������','�Ѽ��ɹ�Į','HansolChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004710','�Ѽ���ũ�н�������','�Ѽ���ũ�н�','HansolTechnics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004150','�Ѽ�Ȧ����������','�Ѽ�Ȧ����','Hansol Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025750','�Ѽ�Ȩ���ں�����','�Ѽ�Ȩ����','HansolHomeDeco');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226440','�Ѽ۳׿���','�Ѽ۳׿���','HANSONGNEOTECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042520','�ѽ����̿��޵�','�ѽ����̿��޵�','HANS BIOMED CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004960','�ѽŰ���������','�ѽŰ���','HanshinConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011700','�ѽű�����������','�ѽű��','HanshinMachinery');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078350','�Ѿ������','�Ѿ������','HANYANG DIGITECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045100','�Ѿ��̿���','�Ѿ��̿���','HANYANG ENG CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001755','�Ѿ�����1�켱��','�Ѿ����ǿ�','HanyangSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001750','�Ѿ����Ǻ�����','�Ѿ�����','HanyangSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018880','�ѿ½ý��ۺ�����','�ѿ½ý���','Hanon Systems');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009420','�ѿù��̿��ĸ�������','�ѿù��̿��ĸ�','HANALL BIOPHARMA CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014130','���ͽ�������������','���ͽ�������','HanExpress');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046110','���ϳ�Ʈ����','���ϳ�Ʈ����','HANIL NETWORKS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024740','���ϴ�������','���ϴ���','HanilForgingIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005860','���ϻ��','���ϻ��','HANIL FEED Co.Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('300720','���Ͻø�Ʈ������','���Ͻø�Ʈ','HANILCEMENT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123840','��������','��������','HANIL VACUUM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002220','����ö��������','����ö��','HanilIron&Steel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006390','��������ø�Ʈ������','��������ø�Ʈ','HANIL HYUNDAI CEMENT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003300','����Ȧ����������','����Ȧ����','HANILHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007770','����ȭ�а���','����ȭ��','HANIL CHEMICAL IND. CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051600','����KPS ������','����KPS','KEPCO Plant Service & Engineering');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('130660','����������ߺ�����','�������','Korea Electric Power Industrial Development');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('107640','���߿��ÿ���','���߿��ÿ���','HanJung Natural Connectivity System.co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002320','����������','����','HanjinTransportation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097230','�����߰��� ������','�����߰���','HANJIN HEAVY INDUSTRIES & CONSTRUCTION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003480','�����߰���Ȧ����������','�����߰���Ȧ����','HanjinHeavyInd&ConstHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('18064K','����Į1�켱��','����Į��','HANJINKAL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('180640','����Į������','����Į','HANJINKAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005110','��â������','��â','Hanchang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079170','��â���','��â���','Hanchang Industry Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009460','��â����������','��â����','HanchangPaper');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086960','����MDS','����MDS','Hancom MDS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054920','��������','��������','Hancom WITH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002680','��ž','��ž','Hantop Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066110','����','����','HANP INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000885','��ȭ1�켱��','��ȭ��','Hanwha(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00088K','��ȭ3�켱��(����)','��ȭ3��B','HANWHA(3PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000880','��ȭ������','��ȭ','Hanwha');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088350','��ȭ�����躸����','��ȭ����','HANWHA LIFE INSURANCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000370','��ȭ���غ��躸����','��ȭ���غ���','Hanwha General Insurance Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009835','��ȭ�ַ��1�켱��','��ȭ�ַ�ǿ�','HANWHA SOLUTIONS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009830','��ȭ�ַ�Ǻ�����','��ȭ�ַ��','HANWHA SOLUTIONS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272210','��ȭ�ý��ۺ�����','��ȭ�ý���','HANWHA SYSTEMS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317320','��ȭ��������̱���μ�����','��ȭ��������̽���','Hanwha Sbi Special Purpose Acquisition Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012450','��ȭ����ν����̽�������','��ȭ����ν����̽�','HANWHA AEROSPACE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003535','��ȭ��������1�켱��','��ȭ�������ǿ�','HANWHA INVESTMENT & SECURITIES(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003530','��ȭ�������Ǻ�����','��ȭ��������','HANWHA INVESTMENT & SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340440','��ȭ�÷�����1ȣ����μ�����','��ȭ�÷�����1ȣ����','Hanwha Plus No 1 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('195870','�ؼ��𿡽�������','�ؼ��𿡽�','HAESUNG DS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034810','�ؼ����','�ؼ����','Haesung Industrial Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('076610','�ؼ���ƽ��','�ؼ���ƽ��','Haesung Optics Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101530','����������ǰ�ֽ�ȸ��','����������ǰ','Haitai Confectionery and Foods Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('220180','�ڵ����Ʈ','�ڵ����Ʈ','HANDYSOFT, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('143210','�������۷��̼Ǻ�����','�������۷��̼�','HANDS CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008800','�ೲ��','�ೲ��','HAENGNAM INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900270','��ͱ׷�����ȸ��','��ͱ׷�','HENG SHENG GROUP COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084990','�︯���̽�','�︯���̽�','Helixmith Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000725','����Ǽ�1�켱��','����Ǽ���','HyundaiEngineering&Construction(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267270','����Ǽ���躸����','����Ǽ����','HYUNDAI CE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000720','����Ǽ�������','����Ǽ�','HyundaiEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('170030','�������','�������','HYUNDAI INDUSTRIAL CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005440','����׸�Ǫ�庸����','����׸�Ǫ��','HYUNDAIGREENFOOD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086280','����۷κ񽺺�����','����۷κ�','HYUNDAIGLOVIS Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064350','������ۺ�����','�������','HYUNDAI ROTEM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079430','���븮��Ʈ������','���븮��Ʈ','HYUNDAILIVART');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012330','�����񽺺�����','������','HyundaiMobis');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('319400','���빫����','���빫����','HYUNDAI MOVEX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010620','�����������������','�����������','HyundaiMipoDockyard');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052260','������̿�����','������̿�����','HYUNDAI BIOLAND Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048410','������̿����̾�','������̿�','HYUNDAI BIOSCIENCE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069960','�����ȭ��������','�����ȭ��','HYUNDAIDEPARTMENTSTORECO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004565','����������ƿ1�켱��','����������ƿ��','HYUNDAI BNG STEEL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004560','����������ƿ������','����������ƿ','HYUNDAI BNG STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016790','������','������','HYUNDAI FEED Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004310','�����ǰ������','�����ǰ','Hyundai pharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322000','���뿡�����ַ�Ǻ�����','���뿡�����ַ��','HYUNDAI ENERGY SOLUTIONS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041440','���뿡������','���뿡������','HYUNDAI EVERDIGM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039010','���뿡��ġƼ','���뿡��ġƼ','HYUNDAI HT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017800','���뿤�������ͺ�����','���뿤������','HyundaiElevator');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307950','������信��������','������信��','HyundaiAutoever');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011210','�������ƺ�����','��������','HYUNDAI WIA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090850','����������','����������','HYUNDAI EZWEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267260','�����Ϸ�Ʈ��������','�����Ϸ�Ʈ��','HYUNDAI ELECTRIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005385','�����ڵ���1�켱��','��������','HyundaiMotor(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005387','�����ڵ���2�켱��(����)','������2��B','HyundaiMotor(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005389','�����ڵ���3�켱��(����)','������3��B','HyundaiMotor(3PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005380','�����ڵ���������','������','HyundaiMotor');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004020','������ö ������','������ö','HYUNDAI STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267250','�����߰������ֺ�����','�����߰�������','HYUNDAI HEAVY INDUSTRIES HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096040','��Ʈ��','��Ʈ��','E-TRON CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('134060','��ǻ��','��ǻ��','e-future.Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001840','��ȭ����','��ȭ����','EehwaConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000760','��ȭ���������','��ȭ���','RIFA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024810','��ȭ�������','��ȭ����','EHWA TECHNOLOGIES INFORMATION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014990','�ε���������','�ε���','In the F');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041830','�ιٵ�','�ιٵ�','InBody Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('352940','�ι��̿�','�ι��̿�','ENBIOCO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101140','�ι��̿���������','�ι��̿���','INBIOGEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('216400','�ι��������̿��ھ�','�ι��������̿��ھ�','INVITES BIOCORE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079950','�κ��Ͼ�','�κ��Ͼ�','INVENIA Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('277410','�λ갡','�λ갡','INSAN Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060150','�μ��̿�Ƽ','�μ��̿�Ƽ','INSUN ENVIRONMENTAL NEW TECHNOLOGY CO.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033230','�μ�����','�μ�����','INSUNG INFORMATION CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006490','�ν��ں�����','�ν��ں�','Inscobee');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037330','�������÷���','�������÷�','INZI DISPLAY COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023800','������Ʈ�ѽ�������','������Ʈ�ѽ�','InziControls');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034590','��õ���ð��� ������','��õ���ð���','INCHEON CITY GAS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('211050','��ī��������','��ī��������','INCAR FINANCIAL SERVICE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083640','����','����','INCON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('216050','��ũ�ν�','��ũ�ν�','Incross Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049070','��ž��','��ž��','INTOPS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119610','���ͷ���','���ͷ���','INTEROJO CO. LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017250','���Ϳ�','���Ϳ�','IntermCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('129260','��������������','��������','INTERGIS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('240340','�����ڽ�','�����ڽ�','Interkos');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035080','������ũ','������ũ','Interpark Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051370','�����÷���','�����÷���','INTERFLEX CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064290','�����÷���','�����÷���','INTEKPLUS CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189300','���ڸ�����ũ�������','���ڸ�����ũ','INTELLIAN TECHNOLOGIES Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('150840','��Ʈ�θ޵�','��Ʈ�θ޵�','IntroMedic Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048530','��Ʈ�й��̿���ũ�����','��Ʈ�й��̿�','iNtRON Biotechnology, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023810','���Ѻ�����','����','INFAC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('175140','������ũ','������ũ','INFOMARK Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115310','��������','��������','INFOvine co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039290','������ũ','������ũ','InfoBank Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071200','���Ǵ�Ʈ�ｺ�ɾ�','���Ǵ�Ʈ�ｺ�ɾ�','INFINITT Healthcare');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101930','��ȭ����','��ȭ����','Inhwa Precision Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('249420','�ϵ����ຸ����','�ϵ�����','ILDONG PHARM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000230','�ϵ�Ȧ����������','�ϵ�Ȧ����','ILDONG HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013360','�ϼ��Ǽ�������','�ϼ��Ǽ�','IlsungConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003120','�ϼ��žຸ����','�ϼ��ž�','IlsungPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068330','�ϽŹ��̿����̽�','�ϽŹ��̿�','ilShinbiobase Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003200','�ϽŹ���������','�ϽŹ���','IlshinSpinning');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007110','�Ͻż��纸����','�Ͻż���','IlshinStone');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058450','�Ͼ�','�Ͼ�','ILYA CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007575','�Ͼ��ǰ1�켱��','�Ͼ��ǰ��','IlyangPharmaceutical(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007570','�Ͼ��ǰ������','�Ͼ��ǰ','IlyangPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008500','�����Ǿ�������','�����Ǿ�','IljeongIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019540','������ũ','������ũ','IljiTechnology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('081000','�������̾Ƹ�� ������','�������̾�','ILJIN DIAMOND CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020760','�������÷��̺�����','��������','ILJIN DISPLAY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020150','������Ƽ���������','������Ƽ������','ILJIN MATERIALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103590','�������� ������','��������','ILJIN ELECTRIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094820','�����Ŀ�','�����Ŀ�','ILJIN POWER CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015860','����Ȧ����������','����Ȧ����','ILJINHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226320','�����ѺҺ�����','�����Ѻ�','ITSHANBUL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950140','�ױۿ�左','�ױۿ�左','Englewood Lab, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049550','��ũ��ũ','��ũ��ũ','INKTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('254120','�ں�','�ں�','XAVIS CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('221610','�ھȹ��̿�','�ھȹ��̿�','JAANHBIO, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('219550','�ھ��ڽ���ƽ','�ھ��ڽ���ƽ','JAANH COSMETICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043910','�ڿ��� ȯ��','�ڿ���ȯ��','Nature and Environment Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234920','���̱�','���̱�','Zaigle Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('289220','���̾�Ʈ����','���̾�Ʈ����','GIANTSTEP Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317400','���̿����ص�����','���̿����ص�','XI S&D');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033240','��ȭ���ں�����','��ȭ����','JahwaElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('174880','�����ũ','�����ũ','JangWonTech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049630','�翵�ַ���','�翵�ַ���','JAEYOUNG SOLUTEC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000950','���溸����','����','Chonbang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120780','��������','��������','JEONWOO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('110020','�������̿���','�������̿���','JEONJINBIO CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208140','���ٿ�','���ٿ�','JUNGDAWN Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('022220','����ְ�','����ְ�','JEONGSAN AIKANG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040420','�������̿�����','�������̿�����','JLS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045510','�������ý�','�������ý�','ZUNGWON EN-SYS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065620','������','������','JENAX Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217190','���ʼ�','���ʼ�','Genesem Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095700','���ؽ�','���ؽ�','Genexine, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072520','���ٹ��̿�','���ٹ��̿�','GenNBio Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122310','���뷹��','���뷹��','GENORAY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('361390','������','������','Genohco, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066830','������','������','GENOTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225220','������','������','GENOLUTION INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123330','����','����','Genic Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('159580','����������','����������','Zero to Seven Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('147830','������','������','CHERYONG INDUSTRIAL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033100','��������','��������','CHERYONG ELECTRIC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079370','���콺','���콺','ZEUS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067290','���̴������ž�','JW�ž�','JW SHINYAK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054950','���̺��̿�','���̺��̿�','JVM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090470','���̽���','���̽���','JASTECH, Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('287410','���̽ý��޵�Į','���̽ý��޵�Į','Jeisys Medical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('137950','���̾��ɹ�Į','���̾��ɹ�Į','JC Chemical Corporation, LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033320','���̾����ý���','���̾����ý���','JCH Systems, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348950','���̾˱۷ι�����������','���̾˱۷ι�����','JR GLOBAL REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204270','���̾�Ƽ��','���̾�Ƽ��','JNTC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('194370','���̿������۷��̼Ǻ�����','���̿������۷��̼�','JS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026040','���̿���Ƽ��','���̿���Ƽ��','J.ESTINA Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126880','���̿���������','���̿���������','JNK HEATERS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322510','���̿�����','���̿�����','JLK, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033050','���̿�����','���̿�����','JEONGMOON INFORMATION CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094970','���̿�Ƽ','���̿�Ƽ','JMT CO.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035900','���̿����ǿ������θ�Ʈ','JYP Ent.','JYP Entertainment Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058420','���̿���','���̿���','J way Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025620','�������ڽ���ƽ������','�������ڽ���ƽ','Jayjun Cosmetic');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036420','��������Ʈ��������','��������Ʈ��','Jcontentree corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089790','����Ƽ','����Ƽ','JT Corporation.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950170','����Ƽ��','JTC','JTC Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030000','���ϱ�ȹ������','���ϱ�ȹ','CheilWorldwide');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052670','���Ϲ��̿�','���Ϲ��̿�','CHEIL BIO CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('271980','���Ͼ�ǰ������','���Ͼ�ǰ','JEIL PHARM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001560','���Ͽ�������������','���Ͽ���','CHEILGRINDINGWHEELIND.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('199820','�����������','�����������','CHEIL ELECTRIC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023440','������������','��������','JeilSteelMfg');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038010','������ũ�뽺','������ũ�뽺','JEIL TECHNOS CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002620','�����ĸ�Ȧ����������','�����ĸ�Ȧ����','JEIL PHARMA HOLDINGS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080220','���ֹݵ�ü','���ֹݵ�ü','Jeju Semiconductor Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006220','�������ຸ����','��������','Jeju Bank');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089590','�����װ�������','�����װ�','JEJUAIR, CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('216080','���׸�','���׸�','JETEMA Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('229000','��ť����','��ť����','Gencurix Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082270','���齺&ī��','���齺','GemVax & KAEL Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064800','���齺��ũ','���齺��ũ','Gemvaxlink Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041590','���齺����','���齺����','Gemvaxzio Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044060','�������̿�����','����ILI','JOKWANG I.L.I CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004910','��������Ʈ������','��������Ʈ','ChokwangPaint');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004700','��������������','��������','ChokwangLeather');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001550','��������','����','Chobi');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000480','������ȭ������','������ȭ','ChosunRefractories');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120030','�������� ������','��������','CHOSUN WELDING POHANG Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034940','��������','��������','ChoA Pharmaceutical Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067000','���̽�Ƽ','���̽�Ƽ','JoyCity Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018470','���Ͼ˹̴�������','���Ͼ˹̴�','CHOILALUMINUM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002600','���ﺸ����','����','CHOHEUNG CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063160','���ٴ���̿�������','���ٴ���̿�','CKDBioCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('185750','���ٴ纸����','���ٴ�','CHONGKUNDANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001630','���ٴ�Ȧ����������','���ٴ�Ȧ����','CHONGKUNDANG HOLDINGS CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033340','���������','���������','GOOD PEOPLE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036930','�ּ������Ͼ','�ּ������Ͼ','JUSUNG ENGINEERING Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('185190','�ֽ�ȸ�� ������','������','Suppro Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('158300','�ֽ�ȸ�� ��������Ƽ','��������Ƽ�̿���','Solution Advanced Technology Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086460','�ֽ�ȸ�� ������������ƽ��','������������ƽ��','SNP Genetics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226400','�ֽ�ȸ�� �����׿���','�����׿���','OSTEONIC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('070960','�ֽ�ȸ�� ������Ʈ','������Ʈ','YONG PYONG RESORT CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084440','�ֽ�ȸ�� �����','�����','UBION CO.LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187420','�ֽ�ȸ�� ������Ŀ��','������Ŀ��','GenoFocus, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189350','�ֽ�ȸ�� �ڼ�','�ڼ�','Coset Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023450','�ֽ�ȸ�絿���ռ�','�����ռ�','DONGNAMCHEMICALCO,.LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002380','�ֽ�ȸ�����̾���','KCC','KCC Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044380','�ֿ���ũ ������','�ֿ���ũ','JOOYONTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('239340','�����ͳ�','�����ͳ�','ZUMinternet Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024110','�߼ұ�����ຸ����','�������','INDUSTRIALBANKOFKOREA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072020','�߾ӹ�ſ�����','�߾ӹ��','CHOONG ANG VACCINE LABORATORY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000440','�߾ӿ��ʺ�','�߾ӿ��ʺ�','Joong Ang Enervis Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('228760','�����Ʈ��','�����Ʈ��','Genomictree Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('314130','��������۴�','��������۴�','Genome&Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013890','������������','������','ZINUS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043610','���Ϲ���','���Ϲ���','GENIE MUSIC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263860','���Ͼ�','���Ͼ�','GENIANS, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('303030','����ƽ��','����ƽ��','Zinitix Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036180','��������������','��������������','GW Vitek CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208350','����������ť��Ƽ','����������ť��Ƽ','Jiransecurity Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114570','������Ʈ�۷ι�','������Ʈ�۷ι�','G-SMATT GLOBAL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299480','�������ｺ�ɾ�','�������ｺ�ɾ�','G&E Healthcare');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051160','�������Ʈ','�������Ʈ','GAEASOFT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001250','�������۷ι�������','GS�۷ι�','GS Global Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007070','�����������Ϻ�����','GS������','GS Retail');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053050','��������','��������','GSE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028150','������Ȩ����','GSȨ����','GS Home Shopping Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('130500','������ġ�ż���','GH�ż���','GH Advanced Materials Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119850','������������','������������','GnCenergy Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270520','������������','������������','G Enone Energy Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065060','������','������','Great New wave Coming Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204840','��������','��������','GL Pharm Tech Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013870','�������ڸ��ƺ�����','�������ڸ���','GMB Korea');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071320','����������纸����','�����������','Korea District Heating');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('135160','������','������','GOC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111820','������Ŀ�ӽ�','������Ŀ�ӽ�','GY COMMERCE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010580','���ں�����','����','JICO CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035000','�����˺�����','������','G��R Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115450','��Ʈ�����Ƽ','��Ʈ�����Ƽ','G-treeBNT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('219750','��Ƽ�����Ͻ�','��Ƽ�����Ͻ�','GTG Wellness Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088790','���� ������','����','JINDO.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018120','���ι�ȿ','���ι�ȿ','JinroDistillers');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109820','����Ʈ����','����Ʈ����','GENEMATRIX INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086060','�����̿���','�����̿���','Gene Bio Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036890','����Ƽ�̾�','����Ƽ�̾�','JINSUNG T.E.C.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003780','������������','������','Chinyang Industry');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007370','��������','��������','JIN YANG PHARMACETICAL. CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010640','���������췹ź������','��������','ChinYangPolyurethane');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100250','����Ȧ����������','����Ȧ����','Chinyang Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051630','����ȭ�к�����','����ȭ��','ChinYangChemicalCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272450','���������','������','JIN AIR');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011000','����������к�����','�����������','GeneOneLifeScience');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('250030','���ڽ���','���ڽ���','JINCOSTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002785','������1�켱��(����)','��������B','CHINHUNG INT(1PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002787','������2�켱��(����)','������2��B','CHINHUNG INT (2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002780','������������','������','ChinhungInternational');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('233990','������','������','JILGYUNGYI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085660','�����̿���','�����̿���','Chabiotech Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900250','���̳�ũ����Ż�ż���Ȧ����','ũ����Ż�ż���','China Crystal New Material Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009310','�������Ͼ������','�������Ͼ','Charm Engineering');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094850','����������','����������','Very Good Tour Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004650','â�ؿ�ź��','â�ؿ�ź��','Changhae Ethanol Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('311690','õ��','õ��','ChunLab,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('278280','õ��','õ��','Chunbo Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000650','õ�ϰ�Ӻ�����','õ�ϰ��','ChunilExpress');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140290','û���Ǽ� �ֽ�ȸ��','û���Ǽ�','CHUNGKWANG CONSTRUCTION CO., LtD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096240','û�㷯��','û�㷯��','Chungdahm Learning, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013720','û�����','û�����','CheongboIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066360','ü���η�','ü���η�','Cherrybro Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033250','ü�ý�������','ü�ý�','CHASYS Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047820','�ʷϹ�̵��','�ʷϹ�̵��','CHOROKBAEM MEDIA CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052300','�ʷϹ����۴�','�ʷϹ����۴�','CHOROKBAEM COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094360','Ĩ���ع̵��','Ĩ���ع̵��','Chips&Media, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016920','ī��','ī��','Cas');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('284620','ī�̳뽺�޵�','ī�̳뽺�޵�','KAINOS MEDICINE, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293490','īī��������','īī��������','Kakao Games Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035720','īī��������','īī��','Kakao');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042000','ī��24','ī��24','Cafe24 Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006380','ī���κ�����','ī����','CAPRO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317530','ĳ������Ʈ','ĳ������Ʈ','CARRIESOFT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071850','ĳ�����ڸ���','ĳ�����ڸ���','CASTEC KOREA CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('180400','ĵ����','ĵ����','Cancer Rop Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050110','ķ�ý�','ķ�ý�','CammSys Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109070','���������','������','CONBUZZ');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900310','�÷�����Ȧ����','�÷�����','Coloray International Investment Co., Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078340','������','������','Com2uS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307930','���۴�������Ʈ�ʽ�','���۴�����','COMPANY K PARTNERS LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263700','�ɾ��','�ɾ��','Carelabs Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('327970','�ɾ���Ƿ���','�ɾ���Ƿ���','KAREROOM MEDICAL EQUIPMENT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214370','�ɾ���','�ɾ���','Caregen Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('221980','���̵���','���̵���','KDCHEM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900280','���̸��ݼ��������������Ѱ���','��缾��','Cayman Golden Century Wheel Group Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043290','���̸�','���̸�','Korea Materials & Analysis Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001620','���̺���̵����Ǿ�������','���̺���̵����Ǿ�','KBI DONGKOOK IND');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024840','���̺���̸�Ż','KBI��Ż','KBI METAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317030','���̺���17ȣ����μ�����','���̺�17ȣ����','KB No.17 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323940','���̺���18ȣ����μ�����','���̺���18ȣ����','KB No.18 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('330990','���̺���19ȣ����μ�����','���̺���19ȣ����','KB No.19 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('342550','���̺���20ȣ����μ�����','���̺���20ȣ����','KB No.20 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192250','���̻���','���̻���','KSIGN CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009440','���̾��׸�Ȧ����������','KC�׸�Ȧ����','KC Green Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029460','���̾�������','���̾�','KC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('112190','���̾����','KC���','KC INDUSTRY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021320','���̾����Ǽ�','KCC�Ǽ�','KCC ENGINEERING & CONSTRUCTION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('344820','���̾����۶󽺺�����','���̾����۶�','KCC GLASS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036670','���̾�����','KCI','KCI Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115500','���̾�����','���̾�����','Korea Computer & Systems Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119650','���̾���Ʈ��������','KC��Ʈ��','KC Cottrell');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('281820','���̾��غ�����','���̾���','KCTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089150','���̾�Ƽ','���̾�Ƽ','Korea Computer Terminal Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025880','���̾��ǵ�','���̾��ǵ�','KC FEED CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093320','���̾��̿�����','���̾��̿�����','KINX, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044450','���̿������� �ؿ� ������','KSS�ؿ�','KSS LINE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073010','���̿�����','���̿�����','KSP CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060720','���̿���ġ����','KH����','KH VATEC Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226360','���̿���ġ�̿�Ƽ','KH E&T','KH E&T');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105330','���̿�������','���̿�������','KNW Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058400','���̿���','KNN','KOREA NEW NETWORK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272110','���̿�����','���̿�����','KnJ Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039420','���̿���','���̿���','KL-Net Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083550','���̿�','���̿�','KM CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032500','���̿�������','���̿�������','KMW CO. LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122450','���̿�����ġ','KMH','KMH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052900','���̿�����ġ������','KMH������','KMH HITECH CO.,LTD');
REM INSERTING into KHY.USERS
SET DEFINE OFF;
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('admin','admin',to_date('2021/05/01-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'admin');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('ggg','ggg1',to_date('2021/04/09-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'ggg');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('dd','asd',to_date('2021/04/03-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'ff');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('sssss','sssss',to_date('2021/04/12-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'dgd');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('aaa','sss',null,'ddd');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('fff','asd',to_date('2021/04/09-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'asd');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('asd','asd',to_date('2021/04/20-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'asd');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('22d','asd',to_date('2021/04/21-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'fsf');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('ffff','fff',to_date('2021/04/22-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'fff');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('111','ggg',to_date('2021/04/12-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'ddd');
Insert into KHY.USERS (USER_ID,USER_PW,USER_BIRTH,USER_NAME) values ('222','222',to_date('2021/04/15-00:00:00','YYYY/MM/DD-HH24:MI:SS'),'asd');
REM INSERTING into KHY.BBSVIEW
SET DEFINE OFF;
Insert into KHY.BBSVIEW (NUM,"bbs_id","author_id","writedate","content","hashtag","likecount","commentcount","user_like") values (1,108,'admin',to_date('2021/05/14-21:44:36','YYYY/MM/DD-HH24:MI:SS'),'�۾��� �׽�Ʈ1 �����׽�Ʈ1','�ؽ��±�1#�ؽ��±�2#�ؽ��±�3',1,2,0);
REM INSERTING into KHY.BBS_HASH_VIEW
SET DEFINE OFF;
Insert into KHY.BBS_HASH_VIEW ("id","user_id","writedate","content","hash_title") values (108,'admin',to_date('2021/05/14-21:44:36','YYYY/MM/DD-HH24:MI:SS'),'�۾��� �׽�Ʈ1 �����׽�Ʈ1','�ؽ��±�1#�ؽ��±�2#�ؽ��±�3');
REM INSERTING into KHY.IMAGEVIEW
SET DEFINE OFF;
Insert into KHY.IMAGEVIEW (ID,"image") values (108,'0');
REM INSERTING into KHY.VHASHTAG
SET DEFINE OFF;
Insert into KHY.VHASHTAG (ID,HASHTAG) values (108,'�ؽ��±�1#�ؽ��±�2#�ؽ��±�3');
--------------------------------------------------------
--  DDL for Index BBS_HASH_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KHY"."BBS_HASH_PK" ON "KHY"."BBS_HASH" ("HASH_BBS_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index BBS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KHY"."BBS_PK" ON "KHY"."BBS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index COMMENTS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KHY"."COMMENTS_PK" ON "KHY"."COMMENTS" ("COMMENT_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HASHTAG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KHY"."HASHTAG_PK" ON "KHY"."HASHTAG" ("HASH_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HASHTAG_UK1
--------------------------------------------------------

  CREATE UNIQUE INDEX "KHY"."HASHTAG_UK1" ON "KHY"."HASHTAG" ("HASH_TITLE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IMAGE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KHY"."IMAGE_PK" ON "KHY"."IMAGE" ("FILE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index LIKEBBS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KHY"."LIKEBBS_PK" ON "KHY"."LIKEBBS" ("LIKE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index STOCK_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KHY"."STOCK_PK" ON "KHY"."STOCK" ("CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index USERS_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "KHY"."USERS_PK" ON "KHY"."USERS" ("USER_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Procedure HASG_TAG_PR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "KHY"."HASG_TAG_PR" (v_userid     IN users.user_id%TYPE,
                                         v_content    IN bbs.content%TYPE,
                                         v_hash_title IN VARCHAR2,
                                         v_hash_count IN NUMBER,
                                         v_bbs_id OUT NUMBER)
IS
  TYPE va_title IS varray(20) OF VARCHAR2(50);
  TYPE va_id IS varray(20) OF NUMBER;
  v_check_hash_id hashtag.hash_id%TYPE;
  v_check_bbs_id  bbs.id%TYPE;
  title           VA_TITLE := Va_title('', '', '', '', '','', '', '', '', '','', '', '', '', '','', '', '', '', '');
  hashid          VA_ID := Va_id(0, 0, 0, 0, 0,0, 0, 0, 0, 0,0, 0, 0, 0, 0,0, 0, 0, 0, 0);
BEGIN
 IF v_hash_count != 0 THEN
    BEGIN
        FOR i IN 1..v_hash_count LOOP
            Title(i) := Regexp_substr(v_hash_title, '[^#]+', 1, i);
        END LOOP;
    END;

    BEGIN
        FOR i IN 1..v_hash_count LOOP
            BEGIN
                SELECT hash_id
                INTO   v_check_hash_id
                FROM   hashtag
                WHERE  hash_title = Title(i);

                Hashid(i) := v_check_hash_id;
            EXCEPTION
                WHEN no_data_found THEN
                  v_check_hash_id := hashtag_seq.NEXTVAL;

                  INSERT INTO hashtag
                  VALUES     (v_check_hash_id,
                              Title(i));

                  Hashid(i) := v_check_hash_id;
                COMMIT;
            END;
        END LOOP;
    END;
END IF;
    BEGIN
        v_check_bbs_id := bbs_seq.NEXTVAL;

        INSERT INTO bbs
                    (id,
                     user_id,
                     content,
                     writedate
                     )
        VALUES     (v_check_bbs_id,
                    v_userid,
                    v_content,
                    SYSDATE
                    );
       COMMIT;
       v_bbs_id:=v_check_bbs_id;
    END;


 IF v_hash_count != 0 THEN
    BEGIN
        FOR i IN 1..v_hash_count LOOP
            INSERT INTO bbs_hash
                        (hash_id,
                         bbs_id,
                         hash_bbs_id)
            VALUES     (Hashid(i),
                        v_check_bbs_id,
                        bbs_hash_seq.NEXTVAL);

            COMMIT;
        END LOOP;
        COMMIT;
    END;
END IF;

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure HASH_TAG
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "KHY"."HASH_TAG" 
(
   
   v_1 IN VARRAY,
   count IN NUMBER
)
IS
 TYPE va_type IS VARRAY(10) of Number(20);
 vva_test va_type;

BEGIN

for i in 1 .. v_1.count loop
BEGIN
    insert into hashtag values(hashtag_seq.nextval,v_1(i));
EXCEPTION 
    WHEN OTHERS THEN
        BEGIN
            ROLLBACK;
        END;
END;
end loop;

COMMIT;

END hash_tag;

/
--------------------------------------------------------
--  DDL for Procedure LIKEPUSH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "KHY"."LIKEPUSH" (v_user_id     IN users.user_id%TYPE,
                                         v_bbs_id    IN bbs.id%TYPE,
                                         v_result out NUMBER,
                                         v_result2 out NUMBER)
IS
 
  v_check_bbs_id bbs.id%TYPE;
  v_count Number;
BEGIN


    BEGIN
            BEGIN
            SELECT
                bbs_id
                into v_check_bbs_id
            FROM
                likebbs b
            where b.bbs_id =v_bbs_id and b.user_id =v_user_id;


            EXCEPTION
                WHEN no_data_found THEN


                    INSERT INTO likebbs (
                        like_id,
                        user_id,
                        bbs_id
                    ) VALUES (
                        LIKEBBS_SEQ.nextval,
                        v_user_id,
                        v_bbs_id
                    );
                 v_result := 1;
                 select nvl(max(count(*)),0) into v_count from likebbs where bbs_id = v_bbs_id group by bbs_id;
                 v_result2:=v_count;
                COMMIT;
                return;
            END;

            DELETE FROM likebbs
                WHERE
                     user_id = v_user_id
                    AND bbs_id = v_bbs_id;
                     v_result := 0;
                 select nvl(max(count(*)),0) into v_count from likebbs where bbs_id = v_bbs_id group by bbs_id;
                   v_result2:=v_count;
    END;



    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Procedure UPDATE_PR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "KHY"."UPDATE_PR" (v_userid     IN users.user_id%TYPE,
                                       v_content    IN bbs.content%TYPE,
                                       v_hash_title IN VARCHAR2,
                                       v_hash_count IN NUMBER,
                                       v_bbs_id  IN NUMBER)
IS
  TYPE va_title IS varray(20) OF VARCHAR2(50);
  TYPE va_id IS varray(20) OF NUMBER;
  v_check_hash_id hashtag.hash_id%TYPE;
  v_check_bbs_id  bbs.id%TYPE;
  title           VA_TITLE := Va_title('', '', '', '', '','', '', '', '', '','', '', '', '', '','', '', '', '', '');
  hashid          VA_ID := Va_id(0, 0, 0, 0, 0,0, 0, 0, 0, 0,0, 0, 0, 0, 0,0, 0, 0, 0, 0);
BEGIN
 IF v_hash_count != 0 THEN
    BEGIN
        FOR i IN 1..v_hash_count LOOP
            Title(i) := Regexp_substr(v_hash_title, '[^#]+', 1, i);
        END LOOP;
    END;

    BEGIN
        FOR i IN 1..v_hash_count LOOP
            BEGIN
                SELECT hash_id
                INTO   v_check_hash_id
                FROM   hashtag
                WHERE  hash_title = Title(i);

                Hashid(i) := v_check_hash_id;
            EXCEPTION
                WHEN no_data_found THEN
                  v_check_hash_id := hashtag_seq.NEXTVAL;

                  INSERT INTO hashtag
                  VALUES     (v_check_hash_id,
                              Title(i));

                  Hashid(i) := v_check_hash_id;
                COMMIT;
            END;
        END LOOP;
    END;
END IF;
    BEGIN

    UPDATE bbs
        SET
        content = v_content,
        writedate = SYSDATE

    WHERE
        id = v_bbs_id;

       COMMIT;

    END;


 IF v_hash_count != 0 THEN
    BEGIN  -- ��λ����� 
    DELETE FROM bbs_hash WHERE bbs_id=v_bbs_id;
    DELETE FROM IMAGE WHERE bbs_id=v_bbs_id;
    END;

    BEGIN
        FOR i IN 1..v_hash_count LOOP
            INSERT INTO bbs_hash --�ٽ� INSERT
                        (hash_id,
                         bbs_id,
                         hash_bbs_id)
            VALUES     (Hashid(i),
                        v_bbs_id,
                        bbs_hash_seq.NEXTVAL);

            COMMIT;
        END LOOP;
        COMMIT;
    END;
END IF;

    COMMIT;
END;

/
--------------------------------------------------------
--  DDL for Function FUNC_NAME
--------------------------------------------------------

  CREATE OR REPLACE FUNCTION "KHY"."FUNC_NAME" 
	(v_pay number)
	RETURN VARCHAR2
is
v_star varchar2(100);
begin
	for i in 1..(v_pay/100)
	loop
		v_star := v_star || '*';
	end loop;
	RETURN v_star;
end;

/
--------------------------------------------------------
--  Constraints for Table BBS
--------------------------------------------------------

  ALTER TABLE "KHY"."BBS" ADD CONSTRAINT "BBS_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KHY"."BBS" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "KHY"."BBS" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table BBS_HASH
--------------------------------------------------------

  ALTER TABLE "KHY"."BBS_HASH" ADD CONSTRAINT "BBS_HASH_PK" PRIMARY KEY ("HASH_BBS_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KHY"."BBS_HASH" MODIFY ("HASH_BBS_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "KHY"."COMMENTS" ADD CONSTRAINT "COMMENTS_PK" PRIMARY KEY ("COMMENT_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KHY"."COMMENTS" MODIFY ("COMMENT_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table HASHTAG
--------------------------------------------------------

  ALTER TABLE "KHY"."HASHTAG" ADD CONSTRAINT "HASHTAG_PK" PRIMARY KEY ("HASH_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KHY"."HASHTAG" ADD CONSTRAINT "HASHTAG_UK1" UNIQUE ("HASH_TITLE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KHY"."HASHTAG" MODIFY ("HASH_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IMAGE
--------------------------------------------------------

  ALTER TABLE "KHY"."IMAGE" ADD CONSTRAINT "IMAGE_PK" PRIMARY KEY ("FILE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KHY"."IMAGE" MODIFY ("FILE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table LIKEBBS
--------------------------------------------------------

  ALTER TABLE "KHY"."LIKEBBS" ADD CONSTRAINT "LIKEBBS_PK" PRIMARY KEY ("LIKE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KHY"."LIKEBBS" MODIFY ("LIKE_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table STOCK
--------------------------------------------------------

  ALTER TABLE "KHY"."STOCK" ADD CONSTRAINT "STOCK_PK" PRIMARY KEY ("CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "KHY"."STOCK" MODIFY ("CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table USERS
--------------------------------------------------------

  ALTER TABLE "KHY"."USERS" MODIFY ("USER_ID" NOT NULL ENABLE);
 
  ALTER TABLE "KHY"."USERS" ADD CONSTRAINT "USERS_PK" PRIMARY KEY ("USER_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BBS
--------------------------------------------------------

  ALTER TABLE "KHY"."BBS" ADD CONSTRAINT "BBS_FK1" FOREIGN KEY ("USER_ID")
	  REFERENCES "KHY"."USERS" ("USER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table BBS_HASH
--------------------------------------------------------

  ALTER TABLE "KHY"."BBS_HASH" ADD CONSTRAINT "BBS_HASH_FK1" FOREIGN KEY ("BBS_ID")
	  REFERENCES "KHY"."BBS" ("ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "KHY"."BBS_HASH" ADD CONSTRAINT "BBS_HASH_FK2" FOREIGN KEY ("HASH_ID")
	  REFERENCES "KHY"."HASHTAG" ("HASH_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMMENTS
--------------------------------------------------------

  ALTER TABLE "KHY"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK1" FOREIGN KEY ("BBS_ID")
	  REFERENCES "KHY"."BBS" ("ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "KHY"."COMMENTS" ADD CONSTRAINT "COMMENTS_FK2" FOREIGN KEY ("COMMENT_AUTHOR")
	  REFERENCES "KHY"."USERS" ("USER_ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IMAGE
--------------------------------------------------------

  ALTER TABLE "KHY"."IMAGE" ADD CONSTRAINT "IMAGE_FK1" FOREIGN KEY ("BBS_ID")
	  REFERENCES "KHY"."BBS" ("ID") ON DELETE CASCADE ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table LIKEBBS
--------------------------------------------------------

  ALTER TABLE "KHY"."LIKEBBS" ADD CONSTRAINT "LIKEBBS_FK1" FOREIGN KEY ("BBS_ID")
	  REFERENCES "KHY"."BBS" ("ID") ON DELETE CASCADE ENABLE;
 
  ALTER TABLE "KHY"."LIKEBBS" ADD CONSTRAINT "LIKEBBS_FK2" FOREIGN KEY ("USER_ID")
	  REFERENCES "KHY"."USERS" ("USER_ID") ON DELETE CASCADE ENABLE;
