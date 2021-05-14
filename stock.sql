--------------------------------------------------------
--  파일이 생성됨 - 금요일-5월-14-2021   
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
Insert into KHY.BBS (ID,USER_ID,CONTENT,WRITEDATE,LIKE_ID) values (108,'admin','글쓰기 테스트1 수정테스트1',to_date('2021/05/14-21:44:36','YYYY/MM/DD-HH24:MI:SS'),null);
REM INSERTING into KHY.BBS_HASH
SET DEFINE OFF;
Insert into KHY.BBS_HASH (HASH_ID,BBS_ID,HASH_BBS_ID) values (147,108,77);
Insert into KHY.BBS_HASH (HASH_ID,BBS_ID,HASH_BBS_ID) values (148,108,78);
Insert into KHY.BBS_HASH (HASH_ID,BBS_ID,HASH_BBS_ID) values (149,108,79);
REM INSERTING into KHY.COMMENTS
SET DEFINE OFF;
Insert into KHY.COMMENTS (COMMENT_ID,BBS_ID,COMMENT_CONTENT,COMMENT_AUTHOR,COMMENT_WRITEDATE) values (318,108,'댓글쓰기 수정','admin',to_date('2021/05/14-21:44:07','YYYY/MM/DD-HH24:MI:SS'));
Insert into KHY.COMMENTS (COMMENT_ID,BBS_ID,COMMENT_CONTENT,COMMENT_AUTHOR,COMMENT_WRITEDATE) values (319,108,'성','222',to_date('2021/05/14-21:58:26','YYYY/MM/DD-HH24:MI:SS'));
REM INSERTING into KHY.HASHTAG
SET DEFINE OFF;
Insert into KHY.HASHTAG (HASH_ID,HASH_TITLE) values (149,'해시태그3');
Insert into KHY.HASHTAG (HASH_ID,HASH_TITLE) values (147,'해시태그1');
Insert into KHY.HASHTAG (HASH_ID,HASH_TITLE) values (148,'해시태그2');
REM INSERTING into KHY.IMAGE
SET DEFINE OFF;
REM INSERTING into KHY.LIKEBBS
SET DEFINE OFF;
Insert into KHY.LIKEBBS (LIKE_ID,USER_ID,BBS_ID) values (84,'admin',108);
REM INSERTING into KHY.STOCK
SET DEFINE OFF;
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033130','디지틀조선일보','디지틀조선','DigitalChosun');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105740','디케이락','디케이락','DK-Lok Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263020','디케이앤디','디케이앤디','DK&D');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290550','디케이티','디케이티','DK Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007340','디티알오토모티브보통주','디티알오토모티브','DTR AUTOMOTIVE CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187220','디티앤씨','디티앤씨','DT&C.co.,ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026890','디피씨보통주','디피씨','DigitalPowerCommunications');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('163430','디피코','디피코','DPECO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131180','딜리','딜리','DILLI ILLUSTRATE INC.,');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317120','라닉스','라닉스','RANIX INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042510','라온시큐어','라온시큐어','RaonSecure Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('232680','라온테크','라온테크','RAONTEC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('300120','라온피플','라온피플','LaonPeople Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('171120','라이온켐텍','라이온켐텍','LION CHEMTECH CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069540','라이트론','라이트론','LIGHTRON INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('285770','라이프사이언스테크놀로지','라이프사이언스테크놀로지','Life Science Technology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347700','라이프시맨틱스','라이프시맨틱스','Life Semantics Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214260','라파스','라파스','Raphas Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115390','락앤락보통주','락앤락','LOCK&LOCK CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200350','래몽래인','래몽래인','RaemongRaein.Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('171010','램테크놀러지','램테크놀러지','RAM TECHNOLOGY CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084650','랩지노믹스','랩지노믹스','LabGenomics. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217500','러셀','러셀','RUSSELL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092590','럭스피아','럭스피아','Luxpia');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033600','럭슬','럭슬','LUXL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('141080','레고켐바이오사이언스','레고켐바이오','LegoChem Biosciences Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060300','레드로버','레드로버','REDROVER CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038390','레드캡투어','레드캡투어','RedcapTour Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('294140','레몬','레몬','LEMON COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('228670','레이','레이','Ray Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('228850','레이언스','레이언스','RAYENCE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('281740','레이크머티리얼즈','레이크머티리얼즈','Lake Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('277810','레인보우로보틱스','레인보우로보틱스','Rainbow Robotics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('179720','렌딩머신','렌딩머신','LendingMachine Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215100','로보로보','로보로보','RoboRobo Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090360','로보스타','로보스타','Robostar Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238500','로보쓰리','로보쓰리','Robo3');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108490','로보티즈','로보티즈','ROBOTIS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900260','로스웰인터내셔널','로스웰','Rothwell International Co., Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067730','로지시스','로지시스','LOGISYS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071280','로체시스템즈','로체시스템즈','RORZE SYSTEMS CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032350','롯데관광개발 보통주','롯데관광개발','LOTTE TOUR DEVELOPMENT CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('330590','롯데리츠보통주','롯데리츠','LOTTE REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000400','롯데손해보험보통주','롯데손해보험','LotteNon-LifeInsurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023530','롯데쇼핑 보통주','롯데쇼핑','LOTTE SHOPPING CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004000','롯데정밀화학보통주','롯데정밀화학','LOTTE Fine Chemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('286940','롯데정보통신보통주','롯데정보통신','LOTTE DATA COMMUNICATION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('280360','롯데제과보통주','롯데제과','LOTTE CONF');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00499K','롯데지주1우선주','롯데지주우','Lotte Corporation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004990','롯데지주보통주','롯데지주','Lotte Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005305','롯데칠성음료1우선주','롯데칠성우','LotteChilsungBeverage(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005300','롯데칠성음료보통주','롯데칠성','LotteChilsungBeverage');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011170','롯데케미칼보통주','롯데케미칼','LOTTE CHEMICAL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002270','롯데푸드보통주','롯데푸드','LotteFood');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071840','롯데하이마트보통주','롯데하이마트','LOTTE Himart');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038060','루멘스','루멘스','LUMENS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('162120','루켄테크놀러지스','루켄테크놀러지스','LUKEN Technologies');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('253610','루트락','루트락','Rootloc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085370','루트로닉','루트로닉','Lutronic Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('08537M','루트로닉3우선주(전환)','루트로닉3우C','Lutronic(3PC)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060240','룽투코리아','룽투코리아','LONGTU KOREA Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058470','리노공업','리노공업','LEENO Industrial Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039980','리노스','리노스','LEENOS CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019570','리더스 기술투자','리더스 기술투자','Leaders Technology Investment Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016100','리더스코스메틱','리더스코스메틱','LEADERS COSMETICS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012700','리드코프','리드코프','The LEADCORP, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('302550','리메드','리메드','REMED CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029480','릭스솔루션','릭스솔루션','Lix Solution Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('277070','린드먼아시아인베스트먼트','린드먼아시아','Lindeman Asia Investment Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042500','링네트','링네트','RingNet Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('219420','링크제니시스','링크제니시스','Linkgenesis Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027740','마니커보통주','마니커','MANIKER');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('195500','마니커에프앤지','마니커에프앤지','Maniker F&G');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222810','마이더스AI','마이더스AI','Midas AI Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('305090','마이크로디지탈','마이크로디지탈','Micro Digital Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('147760','마이크로프랜드','마이크로프랜드','Micro Friend Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('169330','마크로밀엠브레인','엠브레인','Macromill Embrain Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038290','마크로젠','마크로젠','Macrogen, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204320','만도보통주','만도','Mando Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001080','만호제강보통주','만호제강','ManhoRope&Wire');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('220630','맘스터치앤컴퍼니','맘스터치','MOM''S TOUCH&Co.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267980','매일유업','매일유업','Maeil Dairies Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005990','매일홀딩스','매일홀딩스','MAEIL HOLDINGS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('127160','매직마이크로','매직마이크로','MAGICMICRO CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093520','매커스','매커스','MAKUS, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('141070','맥스로텍','맥스로텍','MAXROTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088980','맥쿼리한국인프라투융자회사 보통주','맥쿼리인프라','Macquarie Korea Infrastructure Fund');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100590','머큐리','머큐리','Mercury Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067280','멀티캠퍼스','멀티캠퍼스','Multicampus Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072870','메가스터디','메가스터디','MegaStudy Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215200','메가스터디교육','메가스터디교육','MegaStudyEdu Co. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('133750','메가엠디','메가엠디','MegaMD Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('235980','메드팩토','메드팩토','MedPacto, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200580','메디쎄이','메디쎄이','MEDYSSEY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041920','메디아나','메디아나','MEDIANA Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('233250','메디안디노스틱','메디안디노스틱','Median Diagnostics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014100','메디앙스','메디앙스','Medience Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('236340','메디젠휴먼케어','메디젠휴먼케어','Medizen Humancare');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054180','메디콕스','메디콕스','MEDICOX Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086900','메디톡스','메디톡스','Medy-Tox Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078160','메디포스트','메디포스트','MEDIPOST CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065650','메디프론디비티','메디프론','Medifron DBT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138040','메리츠금융지주회사보통주','메리츠금융지주','Meritz Financial Group');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008560','메리츠증권보통주','메리츠증권','MERITZ SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000060','메리츠화재해상보험보통주','메리츠화재','Meritz Fire & Marine Insurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021880','메이슨캐피탈','메이슨캐피탈','MASON CAPITAL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140410','메지온','메지온','Mezzion Pharma Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241770','메카로','메카로','MECARO.CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090370','메타랩스보통주','메타랩스','METALABS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('059210','메타바이오메드','메타바이오메드','META BIOMED.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058110','멕아이씨에스','멕아이씨에스','MEKICS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096640','멜파스','멜파스','Melfas Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017180','명문제약 보통주','명문제약','MyungMoon Pharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('257370','명성티엔에스','명성티엔에스','Mstns Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009900','명신산업보통주','명신산업','MYOUNG SHIN INDUSTRY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267060','명진홀딩스','명진홀딩스','Myungjin Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012690','모나리자보통주','모나리자','Monalisa');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005360','모나미보통주','모나미','Monami');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080420','모다이노칩','모다이노칩','Moda-InnoChips Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080160','모두투어네트워크','모두투어','MODETOUR NETWORK INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204210','모두투어리츠보통주','모두투어리츠','MODETOURREIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100030','모바일리더','모바일리더','Mobileleader Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('087260','모바일어플라이언스','모바일어플라이언스','MOBILE APPLIANCE, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101330','모베이스','모베이스','MOBASE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012860','모베이스전자','모베이스전자','MOBASE ELECTRONICS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348030','모비릭스','모비릭스','MOBIRIX Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('250060','모비스','모비스','Mobiis Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033200','모아텍','모아텍','MOATECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009680','모토닉보통주','모토닉','MOTONIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('118990','모트렉스','모트렉스','MOTREX CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006920','모헨즈','모헨즈','Mohenz. Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001810','무림에스피','무림SP','MOORIM SP CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009200','무림페이퍼보통주','무림페이퍼','MOORIM PAPER');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009580','무림피앤피보통주','무림P&P','Moorim P&P');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322970','무진메디','무진메디','Moogene Medi');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('098120','(주)마이크로컨텍솔루션','마이크로컨텍솔','Micro Contact Solution Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131100','(주)스카이이앤엠','스카이이앤엠','SKY E&M Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009520','(주)포스코엠텍','포스코엠텍','POSCO M-TECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095570','AJ네트웍스보통주','AJ네트웍스','AJ Networks Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006840','AK홀딩스보통주','AK홀딩스','AK Holdings, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('282330','BGF리테일보통주','BGF리테일','BGF Retail');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027410','BGF보통주','BGF','BGF');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138930','BNK금융지주보통주','BNK금융지주','BNK Financial Group Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001465','BYC1우선주','BYC우','BYC(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001460','BYC보통주','BYC','BYC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001045','CJ1우선주','CJ우','CJ(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00104K','CJ4우선주(전환)','CJ4우(전환)','CJ(4PC)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001040','CJ보통주','CJ','CJ Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011155','CJ씨푸드1우선주','CJ씨푸드1우','CJSEAFOODCORPORATION(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011150','CJ씨푸드보통주','CJ씨푸드','CJSEAFOODCORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058820','CMG제약','CMG제약','CMG Pharmaceutical Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000590','CS홀딩스보통주','CS홀딩스','CSHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012030','DB Inc.보통주','DB','DB Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016610','DB금융투자보통주','DB금융투자','DB Financial Investment Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005830','DB손해보험보통주','DB손해보험','DB INSURANCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000995','DB하이텍1우선주','DB하이텍1우','DB HiTek Co.,LTD(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000990','DB하이텍보통주','DB하이텍','DB HiTek Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('139130','DGB금융지주보통주','DGB금융지주','DGB Financial Group');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001530','DI동일보통주','DI동일','DI DONGIL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000215','DL1우선주','DL우','DL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001880','DL건설보통주','DL건설','DLConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000210','DL보통주','DL','DL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('37550K','DL이앤씨1우선주','DL이앤씨우','DL E&C CO., LTD.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('375500','DL이앤씨보통주','DL이앤씨','DL E&C CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('155660','DSR보통주','DSR','DSR CORP');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069730','DSR제강보통주','DSR제강','DSRWIRECORP');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017940','E1보통주','E1','E1Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('365550','ESR켄달스퀘어리츠보통주','ESR켄달스퀘어리츠','ESR KENDALL SQUARE REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050120','ES큐브','ES큐브','ES CUBE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007700','F&F보통주','F&F','F&F');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078935','GS1우선주','GS우','GS Holdings(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006360','GS건설보통주','GS건설','GS Engineering & Construction Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078930','GS보통주','GS','GS Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012630','HDC보통주','HDC','HDC HOLDINGS CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('294870','HDC현대산업개발보통주','HDC현대산업개발','HYUNDAI DEVELOPMENT COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003560','IHQ보통주','IHQ','IHQ');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('175330','JB금융지주보통주','JB금융지주','JB Financial Group Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234080','JW생명과학보통주','JW생명과학','JW LIFESCIENCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001065','JW중외제약1우선주','JW중외제약우','JWPHARMACEUTICAL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001067','JW중외제약2우선주(신형)','JW중외제약2우B','JWPHARMACEUTICAL(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001060','JW중외제약보통주','JW중외제약','JWPHARMACEUTICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096760','JW홀딩스 보통주','JW홀딩스','JW HOLDINGS CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105560','KB금융지주 보통주','KB금융','KB Financial Group');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024120','KB오토시스','KB오토시스','KB Autosys Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009070','KCTC 보통주','KCTC','KCTC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044180','KD','KD','KD Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016385','KG동부제철1우선주','KG동부제철우','KG DONGBUSTEEL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016380','KG동부제철보통주','KG동부제철','KG DONGBUSTEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001390','KG케미칼보통주','KG케미칼','KG Chemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001940','KISCO홀딩스보통주','KISCO홀딩스','KISCO Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025000','KPX케미칼보통주','KPX케미칼','KPXCHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092230','KPX홀딩스보통주','KPX홀딩스','KPXHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000040','KR모터스보통주','KR모터스','KR MOTORS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093050','LF보통주','LF','LF');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003555','LG1우선주','LG우','LG Corp.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034220','LG디스플레이보통주','LG디스플레이','LG Display');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003550','LG보통주','LG','LG Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001120','LG상사보통주','LG상사','LGInternational');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051905','LG생활건강1우선주','LG생활건강우','LGHOUSEHOLD&HEALTHCARE,LTD(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051900','LG생활건강보통주','LG생활건강','LGHOUSEHOLD&HEALTHCARE,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032640','LG유플러스보통주','LG유플러스','LG Uplus');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011070','LG이노텍보통주','LG이노텍','LG Innotek');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066575','LG전자1우선주','LG전자우','LGELECTRONICS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066570','LG전자보통주','LG전자','LGELECTRONICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051915','LG화학1우선주','LG화학우','LGCHEM,LTD(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051910','LG화학보통주','LG화학','LGCHEM,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079550','LIG넥스원보통주','LIG넥스원','LIG Nex1 Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010120','LS ELECTRIC보통주','LS ELECTRIC','LS ELECTRIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000680','LS네트웍스보통주','LS네트웍스','LSNetworks');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006260','LS보통주','LS','LS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023150','MH에탄올보통주','MH에탄올','MHETHANOL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035420','NAVER보통주','NAVER','NAVER');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('181710','NHN보통주','NHN','NHN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('338100','NH프라임리츠보통주','NH프라임리츠','NH Prime REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034310','NICE보통주','NICE','NICEHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008260','NI스틸보통주','NI스틸','NI STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004255','NPC1우선주','NPC우','NPC(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004250','NPC보통주','NPC','NPC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010060','OCI보통주','OCI','OCI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010955','S-Oil1우선주','S-Oil우','S-Oil(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010950','S-Oil보통주','S-Oil','S-OilCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950110','SBI핀테크솔루션즈','SBI핀테크솔루션즈','SBI FinTech Solutions Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101060','SBS미디어홀딩스보통주','SBS미디어홀딩스','SBS Media Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005090','SGC에너지보통주','SGC에너지','SGC Energy');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001380','SG글로벌보통주','SG글로벌','SG GLOBAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002360','SH에너지화학보통주','SH에너지화학','SH ENERGY & CHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009160','SIMPAC보통주','SIMPAC','SIMPACInc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123700','SJM보통주','SJM','SJM CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025530','SJM홀딩스보통주','SJM홀딩스','SJM HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('03473K','SK1우선주','SK우','SK(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011790','SKC보통주','SKC','SKC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018670','SK가스보통주','SK가스','SKGas');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001745','SK네트웍스1우선주','SK네트웍스우','SKNetworksCo.,Ltd(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001740','SK네트웍스보통주','SK네트웍스','SKNetworksCo.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('210980','SK디앤디보통주','SK디앤디','SK D&D Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034730','SK보통주','SK','SK Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096775','SK이노베이션 1우선주','SK이노베이션우','SK Innovation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096770','SK이노베이션 보통주','SK이노베이션','SK Innovation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001515','SK증권1우선주','SK증권우','SKSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001510','SK증권보통주','SK증권','SKSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('28513K','SK케미칼1우선주','SK케미칼우','SKCHEMICALS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('285130','SK케미칼보통주','SK케미칼','SKCHEMICALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017670','SK텔레콤보통주','SK텔레콤','SKTelecom');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064960','SNT모티브보통주','SNT모티브','SNT MOTIV');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100840','SNT에너지보통주','SNT에너지','SNTEnergy Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003570','SNT중공업보통주','SNT중공업','SNT DYNAMICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036530','SNT홀딩스보통주','SNT홀딩스','SNT Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005610','SPC삼립보통주','SPC삼립','SPC SAMLIP');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011810','STX보통주','STX','STX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('077970','STX엔진보통주','STX엔진','STXEngineCo.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071970','STX중공업보통주','STX중공업','STX Heavy Industries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084870','TBH글로벌보통주','TBH글로벌','TBH GLOBAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002710','TCC스틸보통주','TCC스틸','TCC STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024070','WISCOM보통주','WISCOM','WISCOM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079940','가비아','가비아','GABIA, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078890','가온미디어','가온미디어','KAON Media Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000500','가온전선보통주','가온전선','GAONCABLE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192410','감마누','감마누','Gamma Nu Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036620','감성코퍼레이션','감성코퍼레이션','GAMSUNG Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000860','강남제비스코보통주','강남제비스코','KANGNAM JEVISCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217730','강스템바이오텍','강스템바이오텍','KANGSTEM BIOTECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114190','강원','강원','KANGWON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035250','강원랜드보통주','강원랜드','Kangwon Land, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094480','갤럭시아머니트리','갤럭시아머니트리','GalaxiaMoneytree Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011420','갤럭시아에스엠보통주','갤럭시아에스엠','GALAXIA SM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063080','게임빌','게임빌','GAMEVIL. INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039240','경남스틸','경남스틸','Kyeong Nam Steel Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053950','경남제약','경남제약','KYUNG NAM PHARM.CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('223310','경남제약헬스케어','경남제약헬스케어','KYUNG NAM PHARM HEALTH CARE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002100','경농보통주','경농','Kyungnong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009450','경동나비엔보통주','경동나비엔','KYUNGDONGNAVIEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267290','경동도시가스보통주','경동도시가스','KYUNGDONG CITY GAS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012320','경동인베스트보통주','경동인베스트','KYUNGDONG INVEST');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011040','경동제약','경동제약','KyungdongPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000050','경방보통주','경방','Kyungbang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214390','경보제약보통주','경보제약','KYONGBO PHARMACEUTICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012610','경인양행보통주','경인양행','KyunginSynthetic');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009140','경인전자보통주','경인전자','KyunginElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024910','경창산업','경창산업','KyungchangIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013580','계룡건설산업보통주','계룡건설','KyeryongConstructionIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012205','계양전기1우선주','계양전기우','KeyangElectricMachinery(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012200','계양전기보통주','계양전기','KeyangElectricMachinery');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002140','고려산업보통주','고려산업','KoreaIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('198440','고려시멘트','고려시멘트','KOREA CEMENT co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049720','고려신용정보','고려신용정보','KORYO CREDIT INFORMATION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010130','고려아연보통주','고려아연','KoreaZinc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002240','고려제강보통주','고려제강','KISWire');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014570','고려제약','고려제약','KOREAN DRUG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348150','고바이오랩','고바이오랩','KoBioLabs, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('098460','고영테크놀러지','고영','Koh Young Technology Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035290','골드앤에스','골드앤에스','Gold&S');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038530','골드퍼시픽','골드퍼시픽','Gold Pacific Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215000','골프존','골프존','GOLFZON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121440','골프존뉴딘홀딩스','골프존뉴딘홀딩스','GOLFZON NEWDIN HOLDINGS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('183410','골프존데카','골프존데카','GolfzonDeca');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('076340','관악산업','관악산업','GWANAK CONSTRUCTION AND EQUIPMENT SERVICE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009290','광동제약보통주','광동제약','KwangdongPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014200','광림','광림','KANGLIM Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017040','광명전기보통주','광명전기','KWANG MYUNG ELECTRIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017900','광전자보통주','광전자','AUK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037710','광주신세계보통주','광주신세계','GwangjuShinsegae');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026910','광진실업','광진실업','KwangjinInd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090150','광진윈텍','광진윈텍','KWANGJIN WINTEC CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('355150','교보10호기업인수목적','교보10호스팩','Kyobo 10 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('331520','교보9호기업인수목적','교보9호스팩','Kyobo 9 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030610','교보증권보통주','교보증권','KYOBOSECURITIESCO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('339770','교촌에프앤비보통주','교촌에프앤비','KYOCHON FOOD&BEVERAGE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053270','구영테크','구영테크','GUYOUNGTECHNOLOGY COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007690','국도화학보통주','국도화학','KukdoChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005320','국동보통주','국동','Kukdong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066620','국보디자인','국보디자인','KUKBO DESIGN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001140','국보보통주','국보','KUKBO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043650','국순당','국순당','KOOK SOON DANG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006050','국영지앤엠','국영지앤엠','KUK YOUNG G&M');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060480','국일신동','국일신동','KUKIL METAL CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078130','국일제지','국일제지','KUK-IL PAPER MFG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307750','국전약품','국전약품','KUKJEON PHARMACEUTICAL Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002720','국제약품보통주','국제약품','Kukje Pharma');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('243870','굿센','굿센','Goodcen');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114090','그랜드코리아레저보통주','GKL','Grand Korea Leisure');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900290','그레이트리치과기유한공사','GRT','Great Rich Technologies Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204020','그리티','그리티','GRITEE, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083420','그린케미칼보통주','그린케미칼','GREEN CHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('186230','그린플러스','그린플러스','GREEN PLUS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014530','극동유화보통주','극동유화','KukdongOil&Chem.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083450','글로벌스탠다드테크놀로지','GST','Global Standard Technology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900070','글로벌에스엠테크리미티드','글로벌에스엠','Global SM Tech Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204620','글로벌텍스프리','글로벌텍스프리','Global Tax Free Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019660','글로본','글로본','GLOBON CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014285','금강공업1우선주','금강공업우','KUMKANG KIND(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014280','금강공업보통주','금강공업','KUMKANG KIND');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053260','금강철강','금강철강','KEUM KANG STEEL CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008870','금비보통주','금비','Kumbi');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045890','금빛','GV','GeumVit Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001570','금양보통주','금양','Kumyang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002995','금호건설1우선주','금호건설우','KUMHOE&C(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002990','금호건설보통주','금호건설','KUMHOE&C');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011785','금호석유화학1우선주','금호석유우','KumhoPetrochemical(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011780','금호석유화학보통주','금호석유','KumhoPetrochemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214330','금호에이치티보통주','금호에이치티','Kumho HT, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001210','금호전기보통주','금호전기','KumhoElectric');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073240','금호타이어보통주','금호타이어','KUMHOTIRECO.,INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036190','금화피에스시','금화피에스시','GEUMHWA PSC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049080','기가레인','기가레인','GIGALANE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035460','기산텔레콤','기산텔레콤','Kisan Telecom CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092440','기신정기 보통주','기신정기','KISHIN CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000270','기아보통주','기아','KIA CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013700','까뮤이앤씨보통주','까뮤이앤씨','CAMUS ENGINEERING & CONSTRUCTION Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('308100','까스텔바작','까스텔바작','Castelbajac Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004545','깨끗한나라1우선주','깨끗한나라우','KleanNara(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004540','깨끗한나라보통주','깨끗한나라','KleanNara');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187790','나노','나노','NANO. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('286750','나노브릭','나노브릭','NANOBRICK Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('151910','나노스','나노스','NANOS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121600','나노신소재','나노신소재','Advanced Nano Products Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('247660','나노씨엠에스','나노씨엠에스','NANOCMS CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039860','나노엔텍','나노엔텍','NanoenTek,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091970','나노캠텍','나노캠텍','Nano Chem Tech Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('244880','나눔테크','나눔테크','NANOOM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('288490','나라소프트','나라소프트','NARASOFT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051490','나라엠앤디','나라엠앤디','NARA MOLD & DIE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('190510','나무가','나무가','Namuga Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('242040','나무기술','나무기술','NAMU TECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089600','나스미디어','나스미디어','Nasmedia Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293580','나우아이비캐피탈','나우IB','NAU IB Capital');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('257990','나우코스','나우코스','NOWCOS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138610','나이벡','나이벡','NIBEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('130580','나이스디앤비','나이스디앤비','NICE D&B CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036800','나이스정보통신','나이스정보통신','NICE INFORMATION&TELECOMMUNICATION INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030190','나이스평가정보','NICE평가정보','NICE Information Service Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267320','나인테크','나인테크','Naintech. CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001260','남광토건보통주','남광토건','NamkwangEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008355','남선알미늄1우선주','남선알미우','NamsunAluminium(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008350','남선알미늄보통주','남선알미늄','NamsunAluminium');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004270','남성보통주','남성','Namsung');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003925','남양유업1우선주','남양유업우','NamyangDairyProducts(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003920','남양유업보통주','남양유업','NamyangDairyProducts');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025860','남해화학보통주','남해화학','NamhaeChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111710','남화산업','남화산업','Namhwa Industrial Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091590','남화토건','남화토건','Nam Hwa Construction Company, Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('168330','내츄럴엔도텍','내츄럴엔도텍','Naturalendo Tech Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094860','네오리진','네오리진','NEORIGIN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('253590','네오셈','네오셈','Neosem Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('212560','네오오토','네오오토','NEOOTO Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095660','네오위즈','네오위즈','NEOWIZ');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042420','네오위즈홀딩스','네오위즈홀딩스','NEOWIZ HOLDINDS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950220','네오이뮨텍(Reg.S)','네오이뮨텍(Reg.S)','NeoImmuneTech, Inc.(Reg.S)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('311390','네오크레마','네오크레마','Neo Cremar Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085910','네오티스','네오티스','NEO TECHNICAL SYSTEM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092730','네오팜','네오팜','Neopharm CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290660','네오펙트','네오펙트','NEOFECT Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('306620','네온테크','네온테크','Neontech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('153460','네이블커뮤니케이션즈','네이블','Nable Communications, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007390','네이처셀','네이처셀','NATURECELL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086220','네추럴에프앤피','네추럴FNP','Natural F&P');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033640','네패스','네패스','NEPES Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('330860','네패스아크','네패스아크','Nepes Ark Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005725','넥센1우선주','넥센우','NEXEN(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005720','넥센보통주','넥센','NEXEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002355','넥센타이어1우선주(신형)','넥센타이어1우B','NEXENTIRE(1PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002350','넥센타이어보통주','넥센타이어','NEXENTIRE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089140','넥스턴','넥스턴','NEXTURN Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065170','넥스트비티','넥스트BT','NEXT BT Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003580','넥스트사이언스보통주','넥스트사이언스','NEXT SCIENCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('137940','넥스트아이','넥스트아이','NextEye Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('160550','넥스트엔터테인먼트월드','NEW','Next Entertainment World Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348210','넥스틴','넥스틴','NEXTIN Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041140','넥슨지티','넥슨지티','Nexon GT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217270','넵튠','넵튠','Neptune Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225570','넷게임즈','넷게임즈','NAT GAMES Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251270','넷마블보통주','넷마블','Netmarble Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317860','노드메이슨','노드메이슨','Nordmason');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104620','노랑풍선','노랑풍선','Yellow Balloon Tour Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090355','노루페인트 1우선주','노루페인트우','NOROO PAINT(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290670','대보마그네틱','대보마그네틱','DAEBO MAGNETIC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078140','대봉엘에스','대봉엘에스','Daebongls co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001685','대상1우선주','대상우','Daesang(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001680','대상보통주','대상','Daesang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084695','대상홀딩스 1우선주','대상홀딩스우','Daesang Holdings(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084690','대상홀딩스 보통주','대상홀딩스','Daesang Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036480','대성미생물연구소','대성미생물','Daesung Microbiological Labs. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('128820','대성산업보통주','대성산업','DAESUNG INDUSTRIAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('117580','대성에너지보통주','대성에너지','DAESUNG ENERGY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025440','대성엘텍','대성엘텍','DAESUNG ELTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027830','대성창업투자','대성창투','Daesung Private Equity, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104040','대성파인텍','대성파인텍','Daesung Fine Tech. Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016710','대성홀딩스보통주','대성홀딩스','DAESUNG HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('332290','대신밸런스제7호기업인수목적','대신밸런스제7호스팩','Daishin Balance No.7 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336570','대신밸런스제8호기업인수목적','대신밸런스제8호스팩','Daishin Balance No.8 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('369370','대신밸런스제9호기업인수목적','대신밸런스제9호스팩','Daishin Balance No.9 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020180','대신정보통신','대신정보통신','DaishinInformation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003545','대신증권1우선주','대신증권우','DaishinSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003547','대신증권2우선주(신형)','대신증권2우B','DAISHINSECURITIES(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003540','대신증권보통주','대신증권','DaishinSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045390','대아티아이','대아티아이','DAEA TI CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009190','대양금속보통주','대양금속','DaiyangMetal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108380','대양전기공업','대양전기공업','DAYANG ELECTRIC CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006580','대양제지공업','대양제지','DaeyangPaperMfg');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014160','대영포장보통주','대영포장','DaeyoungPackaging');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047040','대우건설보통주','대우건설','DaewooEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009320','대우전자부품보통주','대우부품','DAEWOO ELECTRONIC COMPONENTS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042660','대우조선해양보통주','대우조선해양','DAEWOOSHIPBUILDING&MARINEENGINEERING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003090','대웅보통주','대웅','Daewoong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069620','대웅제약보통주','대웅제약','DAEWOONGPHARMACEUTICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007680','대원','대원','DAEWON CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000430','대원강업보통주','대원강업','DaewonKangup');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048910','대원미디어','대원미디어','DAEWON MEDIA CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005710','대원산업','대원산업','Daewonsanup');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006345','대원전선1우선주','대원전선우','DaewonCable(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006340','대원전선보통주','대원전선','DaewonCable');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003220','대원제약보통주','대원제약','DaewonPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024890','대원화성보통주','대원화성','DaewonChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290380','대유','대유','Dae Yu Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002880','대유에이텍','대유에이텍','DAYOU AUTOMOTIVE SEAT TECHNOLOGY CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290120','대유에이피','대유에이피','Dayou AP Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000300','대유플러스보통주','대유플러스','DAYOUPLUS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120240','대정화금','대정화금','Daejung Chemicals & Metals Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003310','대주산업','대주산업','Daejoo Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114920','대주이엔티 주식회사','대주이엔티','Daejoo Energy INnovation Technology Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078600','대주전자재료','대주전자재료','Daejoo Electronic Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015230','대창단조보통주','대창단조','DaechangForging');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012800','대창보통주','대창','DAECHANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096350','대창솔루션','대창솔루션','DAECHANG SOLUTION CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140520','대창스틸','대창스틸','DaeChang Steel CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131220','대한과학','대한과학','DAIHAN SCIENTIFIC CO., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010170','대한광통신','대한광통신','TAIHAN Fiberoptics Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060900','대한그린파워','대한그린파워','Daehan Green Power Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054670','대한뉴팜','대한뉴팜','DAEHAN NEW PHARM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001070','대한방직보통주','대한방직','TaihanTextile');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023910','대한약품공업','대한약품','DaihanPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006650','대한유화보통주','대한유화','KOREA PETRO CHEMICAL IND');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001440','대한전선보통주','대한전선','TaihanElectricWire');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084010','대한제강 보통주','대한제강','Daehan Steel Co. Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001795','대한제당1우선주','대한제당우','TS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001790','대한제당보통주','대한제당','TS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001130','대한제분보통주','대한제분','DaehanFlourMill');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003495','대한항공1우선주','대한항공우','KoreanAirLines(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003490','대한항공보통주','대한항공','KoreanAirLines');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005880','대한해운보통주','대한해운','KoreaLine');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003830','대한화섬보통주','대한화섬','DaehanSyntheticFibrer');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016090','대현보통주','대현','Daehyun');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069460','대호에이엘보통주','대호에이엘','DAEHOAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021040','대호특수강','대호특수강','dhSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090350','노루페인트 보통주','노루페인트','NOROO PAINT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000325','노루홀딩스1우선주','노루홀딩스우','NorooHoldings(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000320','노루홀딩스보통주','노루홀딩스','NorooHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('194700','노바렉스','노바렉스','NOVAREX Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('285490','노바텍','노바텍','NOVATECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('229500','노브메타파마','노브메타파마','NOVMETAPHARMA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('278650','노터스','노터스','KNOTUS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('144510','녹십자랩셀','녹십자랩셀','Green Cross Lab Cell Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006280','녹십자보통주','녹십자','Green Cross Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031390','녹십자셀','녹십자셀','GREEN CROSS CELL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('142280','녹십자엠에스','녹십자엠에스','Green Cross Medical Science Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234690','녹십자웰빙','녹십자웰빙','GREEN CROSS WellBeing Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005257','녹십자홀딩스2우선주(신형)','녹십자홀딩스2우','Green Cross Holdings Corporation(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005250','녹십자홀딩스보통주','녹십자홀딩스','Green Cross Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065560','녹원씨엔아이','녹원씨엔아이','Nokwon Commercials & Industries, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004370','농심보통주','농심','Nongshim');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072710','농심홀딩스보통주','농심홀딩스','NongshimHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('154030','농업회사법인 아시아종묘','아시아종묘','ASIA SEED Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054050','농업회사법인농우바이오','농우바이오','NONG WOO BIO CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040160','누리텔레콤','누리텔레콤','NURI Telecom Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069140','누리플랜','누리플랜','Nuriplan Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126870','뉴로스','뉴로스','NEUROS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060260','뉴보텍','뉴보텍','NUVOTEC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012340','뉴인텍','뉴인텍','NUIN TEK CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214870','뉴지랩파마','뉴지랩파마','NewGLAB Pharma');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270870','뉴트리','뉴트리','Newtree Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('144960','뉴파워프라즈마','뉴파워프라즈마','New Power Plasma Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900100','뉴프라이드코퍼레이션','뉴프라이드','New Pride Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085670','뉴프렉스','뉴프렉스','NEWFLEX TECHNOLOGY Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119860','다나와','다나와','DANAWA Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064260','다날','다날','DANAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093640','다믈멀티미디어','다믈멀티미디어','Tamul Multimedia, Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039560','다산네트웍스','다산네트웍스','DASAN Networks, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058730','다스코보통주','다스코','Development Advance Solution');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023590','다우기술보통주','다우기술','DaouTechnology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032190','다우데이타','다우데이타','DAOU DATA CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323350','다원넥스뷰','다원넥스뷰','DAWON NEXVIEW');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068240','다원시스','다원시스','DAWONSYS Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086080','다이노나','다이노나','DiNonA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('271850','다이오진','다이오진','DIOGENE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('343090','단디바이오사이언스','단디바이오','DanDiBio');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019680','대교보통주','대교','DAEKYO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019685','대교우선주(신형)','대교우B','DAEKYO(1PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006370','대구백화점보통주','대구백화점','DaeguDepartmentStore');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00806K','대덕1우선주','대덕1우','DAEDUCK Co.,LTD(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008060','대덕보통주','대덕','DAEDUCK Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353200','대덕전자보통주','대덕전자','DaeduckElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('35320K','대덕전자우선주','대덕전자1우','DaeduckElectronics(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('178600','대동고려삼 주식회사','대동고려삼','DAEDONG KOREA GINSENG CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000490','대동공업보통주','대동공업','Daedong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020400','대동금속','대동금속','DaedongMetal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008830','대동기어','대동기어','DaedongGear');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048470','대동스틸','대동스틸','DAE DONG STEEL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008110','대동전자보통주','대동전자','DAIDONGElECTRONICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004780','대륙제관','대륙제관','DaeryukCan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005750','대림B&Co보통주','대림B&Co','DAELIM B&Co');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017650','대림제지','대림제지','DaelimPaper');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006570','대림통상보통주','대림통상','DaelimTrading');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007720','대명소노시즌','대명소노시즌','DAEMYUNG SONOSEASON CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317850','대모엔지니어링','대모','DAEMO Engineering Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021045','대호특수강1우선주','대호특수강우','dhSteel(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067080','대화제약','대화제약','DAE HWA PHARM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161570','더 미동','THE MIDONG','THE MIDONG Co,. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298540','더네이쳐홀딩스','더네이쳐홀딩스','THE NATURE HOLDINGS CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192080','더블유게임즈보통주','더블유게임즈','DoubleUGames');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073570','더블유아이','WI','WI Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299170','더블유에스아이','더블유에스아이','WSI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089230','더이앤엠','THE E&M','THE E&M Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012510','더존비즈온보통주','더존비즈온','DOUZONE BIZON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('302920','더콘텐츠온','더콘텐츠온','TCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('213420','덕산네오룩스','덕산네오룩스','DUK SAN NEOLUX CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317330','덕산테코피아','덕산테코피아','Duksan Techopia Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('077360','덕산하이메탈','덕산하이메탈','DUK SAN HI METAL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004835','덕성1우선주','덕성우','Duksung(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004830','덕성보통주','덕성','Duksung');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090410','덕신하우징','덕신하우징','DUCKSHIN HOUSING CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024900','덕양산업보통주','덕양산업','DuckYangIndustry');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263600','덕우전자','덕우전자','DERKWOO ELECTRONICS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('194480','데브시스터즈','데브시스터즈','Devsisters corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348840','데이드림엔터테인먼트','데이드림엔터','Daydream');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263800','데이타솔루션','데이타솔루션','Datasolution, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('199150','데이터스트림즈','데이터스트림즈','Data Streams Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206560','덱스터스튜디오','덱스터','Dexter studios Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('261200','덴티스','덴티스','DENTIS CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145720','덴티움보통주','덴티움','DENTIUM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227420','도부마스크','도부마스크','DOBU MASK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067990','도이치모터스','도이치모터스','DEUTSCH MOTORS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002150','도화엔지니어링보통주','도화엔지니어링','DOHWA ENGINEERING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006620','동구바이오제약','동구바이오제약','DongKoo Bio & Pharma Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005160','동국산업','동국산업','DONGKUK INDUSTRIES COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('075970','동국알앤에스','동국알앤에스','DONGKUK REFRACTORIES & STEEL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100130','동국에스엔씨','동국S&C','DONGKUK STRUCTURES & CONSTRUCTION COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001230','동국제강보통주','동국제강','DongkukSteelMill');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086450','동국제약','동국제약','DongKook Pharmaceutical Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004140','동방보통주','동방','DongbangTransport&Logistics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099410','동방선기','동방선기','Dongbang Ship Machinery Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007590','동방아그로보통주','동방아그로','DongbangAgro');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005965','동부건설1우선주','동부건설우','Dongbu(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005960','동부건설보통주','동부건설','Dongbu Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026960','동서보통주','동서','DONGSUH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002210','동성제약보통주','동성제약','DongsungPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102260','동성케미컬보통주','동성케미컬','DONGSUNG CHEMICAL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033500','동성화인텍','동성화인텍','DONGSUNG FINETEC CO., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025950','동신건설','동신건설','DongshinEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000640','동아쏘시오홀딩스보통주','동아쏘시오홀딩스','Dong-A Socio Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('170900','동아에스티보통주','동아에스티','Donga ST');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088130','동아엘텍','동아엘텍','DONG A ELTEK Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028100','동아지질보통주','동아지질','Dong-Ah Geological Engineering Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('282690','동아타이어공업보통주','동아타이어','DONG AH TIRE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041930','동아화성','동아화성','DONG-A HWA SUNG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001525','동양1우선주','동양우','TONGYANG(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001527','동양2우선주(신형)','동양2우B','TONGYANG(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001529','동양3우선주(신형)','동양3우B','TONGYANG(3PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084670','동양고속보통주','동양고속','DONGYANG EXPRESS CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001520','동양보통주','동양','TONGYANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082640','동양생명보험보통주','동양생명','TONGYANG LIFE INSURANCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060380','동양에스텍','동양에스텍','Dongyang S·TEC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079960','동양이엔피','동양이엔피','DONGYANG E&P INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008970','동양철관보통주','동양철관','DongyangSteelPipe');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('228340','동양파일','동양파일','TONGYANG PILE, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092780','동양피스톤보통주','동양피스톤','DONGYANG PISTON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088910','동우팜투테이블','동우팜투테이블','DONGWOO FARM TO TABLE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094170','동운아나텍','동운아나텍','DONGWOON ANATECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049770','동원F&B보통주','동원F&B','DongwonF&B Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013120','동원개발','동원개발','DongwonDevelopment');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018500','동원금속보통주','동원금속','DONGWON METAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006040','동원산업보통주','동원산업','DongwonIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030720','동원수산보통주','동원수산','DongwonFisheries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014825','동원시스템즈1우선주','동원시스템즈우','Dongwon Systems Corporation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014820','동원시스템즈보통주','동원시스템즈','Dongwon Systems Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('163560','동일고무벨트보통주','동일고무벨트','DRB Industrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109860','동일금속','동일금속','DONGIL METAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032960','동일기연','동일기연','DongilTechnology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004890','동일산업보통주','동일산업','DONGILINDUSTRIESCO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002690','동일제강보통주','동일제강','DONG IL STEEL MFG CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023790','동일철강','동일철강','DongilSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005290','동진쎄미켐','동진쎄미켐','DONGJIN SEMICHEM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025900','동화기업','동화기업','DONGWHA ENTERPRISE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000020','동화약품보통주','동화약품','DongwhaPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000155','두산1우선주','두산우','DOOSAN(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000157','두산2우선주(신형)','두산2우B','DOOSAN(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241560','두산밥캣보통주','두산밥캣','Doosan Bobcat');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000150','두산보통주','두산','DOOSAN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042670','두산인프라코어보통주','두산인프라코어','Doosan Infracore');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034020','두산중공업보통주','두산중공업','DoosanHeavyIndustriesandConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('33626K','두산퓨얼셀1우선주','두산퓨얼셀1우','Doosan Fuel Cell(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('33626L','두산퓨얼셀2우선주(신형)','두산퓨얼셀2우B','Doosan Fuel Cell(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336260','두산퓨얼셀보통주','두산퓨얼셀','Doosan Fuel Cell');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016740','두올보통주','두올','DUAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073190','듀오백','듀오백','DUOBACK CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('176750','듀켐바이오','듀켐바이오','DuChemBio Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030350','드래곤플라이','드래곤플라이','Dragonfly GF Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('203650','드림시큐리티','드림시큐리티','Dream Security Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('223250','드림씨아이에스','드림씨아이에스','DreamCIS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060570','드림어스컴퍼니','드림어스컴퍼니','Dreamus Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192650','드림텍보통주','드림텍','DREAMTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217620','디딤','디딤','Didim Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187870','디바이스이엔지','디바이스이엔지','Device ENG CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('367340','디비금융제8호기업인수목적','DB금융스팩8호','DB Finance No.8 Special Purpose Acquisition Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('367360','디비금융제9호기업인수목적','DB금융스팩9호','DB Finance No.9 Special Purpose Acquisition Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066670','디스플레이테크','디스플레이텍','Display Tech Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024090','디씨엠보통주','디씨엠','DCMCorp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003160','디아이보통주','디아이','DI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092200','디아이씨 보통주','디아이씨','DAE-IL Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('110990','디아이티','디아이티','Digital Imaging Technology, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004840','디알비동일보통주','DRB동일','DRB Holding Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263690','디알젬','디알젬','DRGEM CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214680','디알텍','디알텍','DRTECH Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263720','디앤씨미디어','디앤씨미디어','D&C MEDIA CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241520','디에스씨인베스트먼트','DSC인베스트먼트','DSC Investment Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109740','디에스케이','디에스케이','DSK Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033430','디에스티','디에스티','DST Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131030','디에이치피코리아','디에이치피코리아','DHP KOREA.CO., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196490','디에이테크놀로지','디에이테크놀로지','DA Technology Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066900','디에이피','디에이피','DAP Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('127120','디엔에이링크','디엔에이링크','DNA Link, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092070','디엔에프','디엔에프','DNF Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068790','디엠에스','DMS','DMS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('134580','디엠티','디엠티','Digital Multimedia Technology Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039840','디오','디오','DIO Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013570','디와이보통주','디와이','DY Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('210540','디와이파워보통주','디와이파워','DY POWER Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104460','디와이피엔에프','디와이피엔에프','DYPNF CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079810','디이엔티','디이엔티','DE&T Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227100','디자인','디자인','DESIGN Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('113810','디젠스','디젠스','Dgenx Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043360','디지아이','디지아이','Digital Graphics Incorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('197140','디지캡','디지캡','DigiCAP');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('106520','디지탈옵틱','디지탈옵틱','Digital Optics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068930','디지털대성','디지털대성','Digital Daesung Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('143540','영우디에스피','영우디에스피','YoungWoo DSP Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111770','영원무역보통주','영원무역','Youngone Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009970','영원무역홀딩스보통주','영원무역홀딩스','YoungoneHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003520','영진약품보통주','영진약품','YUNGJIN PHARM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000670','영풍보통주','영풍','Youngpoong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036560','영풍정밀','영풍정밀','YOUNG POONG PRECISION CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006740','영풍제지보통주','영풍제지','YoungpoongPaperMfg');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012280','영화금속보통주','영화금속','YeonghwaMetal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('265560','영화테크','영화테크','Younghwa Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012160','영흥보통주','영흥','YOUNGWIRE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036000','예림당','예림당','YeaRimDang Publishing Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('250930','예선테크','예선테크','YeSUN Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053280','예스이십사','예스24','YES24 Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015360','예스코홀딩스보통주','예스코홀딩스','Yesco Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122640','예스티','예스티','YEST Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900300','오가닉티코스메틱스홀딩스컴퍼니리미티드','오가닉티코스메틱','ORGANIC TEA COSMETICS HOLDINGS COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045060','오공','오공','OKONG Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080520','오디텍','오디텍','ODTech');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007310','오뚜기보통주','오뚜기','Ottogi');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039830','오로라월드','오로라','AURORA WORLD Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322310','오로스테크놀로지','오로스테크놀로지','AUROS TECHNOLOGY, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046120','오르비텍','오르비텍','Orbitech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014940','오리엔탈정공','오리엔탈정공','ORIENTAL PRECISION & ENGINEERING CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002630','오리엔트바이오보통주','오리엔트바이오','ORIENTBIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065500','오리엔트정공','오리엔트정공','Orient Precision Industries Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('271560','오리온보통주','오리온','ORION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001800','오리온홀딩스보통주','오리온홀딩스','ORION Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010470','오리콤','오리콤','ORICOM Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053980','오상자이엘','오상자이엘','OSANGJAIEL Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052420','오성첨단소재','오성첨단소재','OSUNG ADVANCED MATERIALS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241790','오션브릿지','오션브릿지','OCEANBRIDGE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('329020','오션스톤','오션스톤','Ocean Stone');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039200','오스코텍','오스코텍','OSCOTEC Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031510','오스템','오스템','AUSTEM CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048260','오스템임플란트','오스템임플란트','OSSTEM IMPLANT.CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138080','오이솔루션','오이솔루션','OE Solutions Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080580','오킨스전자','오킨스전자','OKins Electronics Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067170','오텍','오텍','Autech Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('173130','오파스넷','오파스넷','OPASNET co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049480','오픈베이스','오픈베이스','Openbase, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('309930','오하임아이엔티','오하임아이엔티','OHEIM INT Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078590','온코퀘스트파마슈티컬','OQP','OncoQuest Pharmaceuticals Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('244460','올리패스','올리패스','OLIPASS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226950','올릭스','올릭스','Olix Pharmaceuticals, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057540','옴니시스템','옴니시스템','Omnisystem Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082210','옵트론텍','옵트론텍','OPTRONTEC Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109080','옵티시스','옵티시스','OPTICIS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('153710','옵티팜','옵티팜','Optipharm. CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051390','와이더블유','YW','YW COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('321820','와이더플래닛','와이더플래닛','Wider Planet Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057030','와이비엠넷','YBM넷','YBM NET, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122990','와이솔','와이솔','WiSoL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('232140','와이아이케이','와이아이케이','YIK Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065530','와이어블','와이어블','Wiable');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067900','와이엔텍','와이엔텍','Y-ENTEC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('155650','와이엠씨','와이엠씨','YMC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251370','와이엠티','와이엠티','YMT CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066430','와이오엠','와이오엠','Y-OPTICS MANUFACTURE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('193250','와이제이엠게임즈','와이제이엠게임즈','YJM Games Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('273060','와이즈버즈','와이즈버즈','Wise birds Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019210','와이지-원','와이지-원','YG-1 CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122870','와이지엔터테인먼트','와이지엔터테인먼트','YG Entertainment Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037270','와이지플러스보통주','YG PLUS','YG PLUS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040300','와이티엔','YTN','YTN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('332570','와이팜','와이팜','Wireless Amplifier Module Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079000','와토스 코리아','와토스코리아','WATOS COREA CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114630','우노앤컴퍼니','우노앤컴퍼니','UNO&COMPANY, Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('316140','우리금융지주보통주','우리금융지주','WooriFinancialGroup');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033660','우리금융캐피탈보통주','우리금융캐피탈','WOORI FINANCIAL CAPITAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032820','우리기술','우리기술','Woori Technology, Incorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041190','우리기술투자','우리기술투자','Woori Technology Investment Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115440','우리넷','우리넷','Woori-Net Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('118000','우리들휴브레인보통주','우리들휴브레인','WOORIDUL HUEBRAIN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046970','우리로','우리로','WOORIRO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082850','우리바이오','우리바이오','WOOREE BIO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215360','우리산업','우리산업','WOORY INDUSTRIAL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072470','우리산업홀딩스','우리산업홀딩스','WOORY INDUSTRIAL HOLDINGS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073560','우리손에프앤지 농업회사법인','우리손에프앤지','Woorison F&G CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('153490','우리이앤엘','우리이앤엘','WOOREE E&L CO.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037400','우리조명','우리조명','WOOREE LIGHTING CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010050','우리종합금융보통주','우리종금','Woori Investment Bank');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101170','우림기계','우림기계','WOORIM MACHINERY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006980','우성사료보통주','우성사료','WoosungFeed');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066590','우수AMS','우수AMS','WOOSU AMS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017370','우신시스템보통주','우신시스템','WooshinSystems');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103840','우양','우양','WOOYANG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046940','우원개발','우원개발','Woowon Development Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215380','우정바이오','우정바이오','WOOJUNG BIO, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065680','우주일렉트로닉스','우주일렉트로','UJU ELECTRONICS CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105840','우진보통주','우진','WOOJIN INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018620','우진비앤지','우진비앤지','WooGene B&G CO., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010400','우진아이엔에스보통주','우진아이엔에스','WOOJINI&S');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049800','우진플라임 보통주','우진플라임','WOOJIN PLAIMM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016880','웅진보통주','웅진','WOONGJIN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095720','웅진씽크빅 보통주','웅진씽크빅','WOONGJIN THINKBIG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005820','원림보통주','원림','Wonlim');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307280','원바이오젠','원바이오젠','Wonbiogen');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053080','원방테크','원방테크','WONBANG TECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032940','원익','원익','WonIk');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104830','원익머트리얼즈','원익머트리얼즈','WONIK Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('240810','원익아이피에스','원익IPS','WONIK IPS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014190','원익큐브','원익큐브','WONIK CUBE Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('074600','원익큐엔씨','원익QnC','WONIK QnC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131390','원익피앤이','원익피앤이','WONIK PNE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030530','원익홀딩스','원익홀딩스','WONIK HOLDINGS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012620','원일특강','원일특강','WonilSpecialSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('216280','원텍','원텍','WONTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122830','원포유','원포유','ONE4U');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008370','원풍','원풍','WonpoongCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008290','원풍물산','원풍물산','WonpungMulsan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101160','월덱스','월덱스','WORLDEX INDUSTRY & TRADING CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095270','웨이브일렉트로닉스','웨이브일렉트로','Wave Electronics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010600','웰바이오텍보통주','웰바이오텍','WELLBIOTEC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065950','웰크론','웰크론','Welcron Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('076080','웰크론한텍','웰크론한텍','WELCRON HANTEC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196700','웹스','웹스','WAPS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069080','웹젠','웹젠','Webzen Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053580','웹케시','웹케시','WebCash Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071460','위니아딤채','위니아딤채','WINIADIMCHAE Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044340','위닉스','위닉스','WINIX INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('330350','위더스제약','위더스제약','Withus Pharmaceutical. Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348350','위드텍','위드텍','WITHTECH, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('112040','위메이드','위메이드','Wemade Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101730','위메이드맥스','위메이드맥스','Wemade Max');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065370','위세아이텍','위세아이텍','WISE iTech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140660','위월드 주식회사','위월드','WIWORLD Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038620','위즈코프','위즈코프','WIZ CORP, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299900','위지윅스튜디오','위지윅스튜디오','WYSIWYG STUDIOS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036090','위지트','위지트','WIZIT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136540','윈스','윈스','Wins co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('320000','윈텍','윈텍','WINTEC Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097800','윈팩','윈팩','WINPAC INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192390','윈하이텍','윈하이텍','WINHITECH CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('313760','윌링스','윌링스','WILLINGS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008600','윌비스보통주','윌비스','TheWillBes');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900340','윙입푸드홀딩스','윙입푸드','WING YIP FOOD (CHINA) HOLDINGS GROUP LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014830','유니드 보통주','유니드','UNID');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036200','유니셈','유니셈','UNION SEMICONDUCTOR EQUIPMENT&MATERIALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018000','유니슨','유니슨','UNISON CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047400','유니온머티리얼보통주','유니온머티리얼','Union Materials Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000910','유니온보통주','유니온','Union');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('203450','유니온커뮤니티','유니온커뮤니티','Union community Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011330','유니켐보통주','유니켐','UNI CHEM.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('077500','유니퀘스트 보통주','유니퀘스트','Uniquest Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011320','유니크','유니크','UNICK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086390','유니테스트','유니테스트','UniTest Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241690','유니테크노','유니테크노','UNITEKNO Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('142210','유니트론텍','유니트론텍','Unitrontech Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121060','유니포인트','유니포인트','UNIPOINT Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048430','유라테크','유라테크','YURA TECH. CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206650','유바이오로직스','유바이오로직스','EuBiologics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089850','유비벨록스','유비벨록스','UbiVelox Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032620','유비케어','유비케어','UBCARE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('264450','유비쿼스','유비쿼스','Ubiquoss Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078070','유비쿼스홀딩스','유비쿼스홀딩스','Ubiquoss Holdings Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002920','유성기업보통주','유성기업','YoosungEnterprise');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024800','유성티엔에스','유성티엔에스','YOOSUNG T&S CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000700','유수홀딩스보통주','유수홀딩스','EUSU HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054930','유신','유신','Yooshin Engineering Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038340','유씨아이','UCI','UCI Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069330','유아이디','유아이디','U.I.DISPLAY CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049520','유아이엘','유아이엘','UIL Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('313750','유안타제4호기업인수목적','유안타제4호스팩','Yuanta 4 SPECIAL PURPOSE ACQUISITION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336060','유안타제5호기업인수목적','유안타제5호스팩','Yuanta 5 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340360','유안타제6호기업인수목적','유안타제6호스팩','Yuanta 6 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('367460','유안타제7호기업인수목적','유안타제7호스팩','Yuanta 7 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('367480','유안타제8호기업인수목적','유안타제8호스팩','Yuanta 8 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003475','유안타증권1우선주','유안타증권우','Yuanta Securities Korea(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003470','유안타증권보통주','유안타증권','Yuanta Securities Korea');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056090','유앤아이','유앤아이','U&I CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011690','유양디앤유보통주','유양디앤유','YUYANG D&U');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263770','유에스티','유에스티','UST CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('337840','유엑스엔','유엑스엔','UXN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072130','유엔젤보통주','유엔젤','UANGEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000225','유유제약1우선주','유유제약1우','YuyuPharma(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000227','유유제약2우선주(신형)','유유제약2우B','YuyuPharma(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000220','유유제약보통주','유유제약','YuyuPharma');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340930','유일에너테크','유일에너테크','YOUIL ENERGY TECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023410','유진기업','유진기업','EUGENE Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('321260','유진기업인수목적4호','유진스팩4호','EUGENE SEPCIAL PURPOSE ACQUISITION 4 CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('331380','유진기업인수목적5호','유진스팩5호','EUGENE SPECIAL PURPOSE ACQUISITION 5 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('373340','유진기업인수목적6호','유진스팩6호','EUGENE SPECIAL PURPOSE ACQUISITION 6 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056080','유진로봇','유진로봇','Yujin Robot Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084370','유진테크','유진테크','Eugene Technology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001200','유진투자증권보통주','유진투자증권','EUGENE INVESTMENT & SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('178780','유테크','유테크','U-Tech Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('221800','유투바이오','유투바이오','U2BIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('179900','유티아이','유티아이','UTI INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263050','유틸렉스','유틸렉스','Eutilex Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000105','유한양행1우선주','유한양행우','Yuhan(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000100','유한양행보통주','유한양행','Yuhan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003465','유화증권1우선주','유화증권우','YuhwaSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003460','유화증권보통주','유화증권','YuhwaSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('191410','육일씨엔에쓰','육일씨엔에쓰','RYUK-IL C&S., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008730','율촌화학보통주','율촌화학','YoulchonChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072770','율호','율호','Yulho');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008250','이건산업보통주','이건산업','EagonIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039020','이건홀딩스','이건홀딩스','EAGON HOLDINGS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025820','이구산업보통주','이구산업','LeekuIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060230','이그잭스','이그잭스','exax Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067920','이글루시큐리티','이글루시큐리티','Igloo Security, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044960','이글벳','이글벳','Eagle Veterinary Technology Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('302430','이노메트리','이노메트리','INNOMETRY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('279060','이노벡스','이노벡스','INNOVEX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214320','이노션보통주','이노션','INNOCEAN WORLDWIDE INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073490','이노와이어리스','이노와이어리스','InnoWireless Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086250','이노와이즈','이노와이즈','INNOWISE CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215790','이노인스트루먼트','이노인스트루먼트','INNO INSTRUMENT INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('344860','이노진','이노진','INNOGENE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246960','이노테라피','이노테라피','InnoTherapy Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088390','이녹스','이녹스','INNOX Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272290','이녹스첨단소재','이녹스첨단소재','INNOX Advanced Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053350','이니텍','이니텍','INITECH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258610','이더블유케이','이더블유케이','EWK Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336040','이도바이오','이도바이오','YIDOBIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215090','이디티','이디티','EHWA DEFENSE TECHNOLOGY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041520','이라이콤','이라이콤','e-LITECOM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('264850','이랜시스','이랜시스','Elensys Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054210','이랜텍','이랜텍','Elentec Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('164060','이루다','이루다','ILOODA Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065440','이루온','이루온','ELUON Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088260','이리츠코크렙기업구조조정부동산투자회사보통주','이리츠코크렙','E KOCREF CR-REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('139480','이마트보통주','이마트','E-MART Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115610','이미지스테크놀로지','이미지스','IMAGIS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('349720','이베스트기업인수목적5호','이베스트스팩5호','Ebest Special Purpose Acquisition No5 Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323210','이베스트이안기업인수목적1호','이베스트이안스팩1호','Ebest Ian Special Purpose Aquisition 1 Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078020','이베스트투자증권','이베스트투자증권','EBEST INVESTMENT & SECURITIES Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208850','이비테크','이비테크','EB TECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080010','이상네트웍스','이상네트웍스','eSANG Networks Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086890','이수앱지스','이수앱지스','ISU Abxis Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007660','이수페타시스보통주','이수페타시스','ISUPETASYS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005950','이수화학보통주','이수화학','IsuChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015020','이스타코보통주','이스타코','e-STARCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047560','이스트소프트','이스트소프트','ESTsoft Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900110','이스트아시아홀딩스인베스트먼트리미티드','이스트아시아홀딩스','East Asia Holdings Investment Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270020','이십일스토어','이십일스토어','21store');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067010','이씨에스텔레콤','이씨에스','ECS TELECOM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093230','이아이디보통주','이아이디','E Investment&Development');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('341310','이앤에치','이앤에치','E&H');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052190','이에스에이','이에스에이','ESA Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101360','이엔드디','이엔드디','E&D Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102710','이엔에프테크놀로지','이엔에프테크놀로지','ENF Technology Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066980','이엔코퍼레이션','이엔코퍼레이션','E& Corporation CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('074610','이엔플러스보통주','이엔플러스','ENPLUS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063760','이엘피','이엘피','ELP Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('087730','이엠네트웍스','이엠네트웍스','EM Networks Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123570','이엠넷','이엠넷','EMNET INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079190','이엠따블유','EMW','EMW Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('278990','이엠비','EMB','EMB');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083470','이엠앤아이','이엠앤아이','EMnI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095190','이엠코리아','이엠코리아','EMKOREA Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091120','이엠텍','이엠텍','EM-Tech. CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('232530','이엠티','이엠티','Energy Material Tech');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102460','이연제약보통주','이연제약','REYON PHARMACEUTICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039030','이오테크닉스','이오테크닉스','EO Technics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('294090','이오플로우','이오플로우','EOFlow Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('245620','이원다이애그노믹스','EDGC','Eone Diagnomics Genome Center Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088290','이원컴포텍','이원컴포텍','EWON COMFORTECH CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084680','이월드보통주','이월드','E-WORLD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('181340','이즈미디어','이즈미디어','isMedia Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037370','이지','EG','EG CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353810','이지바이오','이지바이오','EASY BIO, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('350520','이지스레지던스리츠보통주','이지스레지던스리츠','IGIS RESIDENCE REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('334890','이지스밸류플러스리츠보통주','이지스밸류리츠','IGIS Value Plus REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099750','이지케어텍','이지케어텍','ezCaretech Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035810','이지홀딩스','이지홀딩스','Easy Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('160600','이큐셀','이큐셀','EQUIPMENTS CELL CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092130','이크레더블','이크레더블','e-Credible Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033920','무학보통주','무학','Muhak');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008420','문배철강보통주','문배철강','MoonbaeSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('279600','미디어젠','미디어젠','MediaZen,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095500','미래나노텍','미래나노텍','MNTECH Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025560','미래산업보통주','미래산업','MiraeCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('218150','미래생명자원','미래생명자원','MILAE BIORESOURCES CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007120','미래아이앤지보통주','미래아이앤지','MiraeING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353490','미래에셋대우기업인수목적 5호','미래에셋대우스팩 5호','MIRAE ASSET DAEWOO SPECIAL PURPOSE ACQUISITION 5 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('328380','미래에셋대우기업인수목적3호','미래에셋대우스팩3호','MIRAE ASSET DAEWOO SPECIAL PURPOSE ACQUISITION 3 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('333430','미래에셋대우기업인수목적4호','미래에셋대우스팩4호','MIRAE ASSET DAEWOO SPECIAL PURPOSE ACQUISITION 4 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('357250','미래에셋맵스리츠보통주','미래에셋맵스리츠','Miraeasset Maps REIT 1');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094800','미래에셋맵스아시아퍼시픽부동산공모1호','맵스리얼티1','MIRAEASSETMAPS ASIAPACIFIC REAL ESTATE 1');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100790','미래에셋벤처투자','미래에셋벤처투자','Mirae Asset Venture Investment Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085620','미래에셋생명보험보통주','미래에셋생명','MIRAE ASSET Life Insurance CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006805','미래에셋증권1우선주','미래에셋증권우','MIRAE ASSET SECURITIES(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00680K','미래에셋증권2우선주(신형)','미래에셋증권2우B','MIRAE ASSET SECURITIES(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006800','미래에셋증권보통주','미래에셋증권','MIRAE ASSET SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208890','미래엔에듀파트너','미래엔에듀파트너','MiraeN Edupartner Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049950','미래컴퍼니','미래컴퍼니','meerecompany Incorporated');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('213090','미래테크놀로지','미래테크놀로지','MIRAE TECHNOLOGY, CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('207760','미스터블루','미스터블루','Mr. Blue Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225850','미애부','미애부','Miev');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002840','미원상사보통주','미원상사','MiwonCommercial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('268280','미원스페셜티케미칼보통주','미원에스씨','Miwon Specialty Chemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('107590','미원홀딩스 보통주','미원홀딩스','Miwon Holdings Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('134380','미원화학보통주','미원화학','Miwon Chemicals');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003650','미창석유공업보통주','미창석유','MichangOilInd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('059090','미코','미코','MiCo Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214610','미코바이오메드','미코바이오메드','MiCo BioMed Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('201490','미투온','미투온','Me2on Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950190','미투젠','미투젠','ME2ZEN Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214180','민앤지','민앤지','Minwise Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('155900','바다로19호선박투자회사','바다로19호','Badaro No.19 Ship Investment Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206640','바디텍메드','바디텍메드','Boditech Med Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018700','바른손','바른손','Barunson');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035620','바른손이앤에이','바른손이앤에이','Barunson Entertainment & Arts Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064520','바른전자','바른전자','Barun Electronics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053030','바이넥스','바이넥스','Binex Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('301300','바이브컴퍼니','바이브컴퍼니','VAIV company Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064550','바이오니아','바이오니아','BIONEER CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('314930','바이오다인','바이오다인','BIODYNE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208710','바이오로그디바이스','바이오로그디바이스','BIOLOG DEVICE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('142760','바이오리더스','바이오리더스','Bioleaders Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086820','바이오솔루션','바이오솔루션','Bio Solution Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038460','바이오스마트','바이오스마트','BioSmart Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('281310','바이오시네틱스','바이오시네틱스','BIOSYNECTICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('266470','바이오인프라생명과학','바이오인프라생명과학','BioInfra Life Science');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086040','바이오톡스텍','바이오톡스텍','Biotoxtech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('199290','바이오프로테크','바이오프로테크','BIOPROTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032980','바이온','바이온','BYON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222160','바이옵트로','바이옵트로','Bioptro');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043150','바텍','바텍','Value Added Technology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323990','박셀바이오','박셀바이오','Vaxcell-Bio Therapeutics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003610','방림보통주','방림','Pangrim');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267790','배럴','배럴','BARREL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001340','백광산업보통주','백광산업','PaikkwangIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046310','백금티앤에이','백금T&A','BG T&A Co.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035150','백산보통주','백산','Baiksan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066410','버킷스튜디오','버킷스튜디오','BUCKET STUDIO Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002410','범양건영보통주','범양건영','BUMYANG CONSTRUCTION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206400','베노홀딩스','베노홀딩스','Benoholdings, lnc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019010','베뉴지','베뉴지','VenueG Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('177350','베셀','베셀','Vessel Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299910','베스파','베스파','Vespa Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007210','벽산보통주','벽산','Byuksan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225530','보광산업','보광산업','BoKwang Industry Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('250000','보라티알','보라티알','BORATR CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002760','보락보통주','보락','Bolak');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003850','보령제약보통주','보령제약','BoryungPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006910','보성파워텍','보성파워텍','BOSUNG POWER TECHNOLOGY CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000890','보해양조보통주','보해양조','BohaeBrewery');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226340','본느','본느','Bonne Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('206950','볼빅','볼빅','Volvik');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008470','부-스타','부스타','BOOSTER CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003000','부광약품보통주','부광약품','BukwangPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001275','부국증권1우선주','부국증권우','BookookSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001270','부국증권보통주','부국증권','BookookSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026940','부국철강 보통주','부국철강','Bookook Steel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014470','부방','부방','Bubang Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015350','부산도시가스보통주','부산가스','BusanCityGas');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011390','부산산업보통주','부산산업','BusanIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005030','부산주공보통주','부산주공','PusanCastIron');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('338220','뷰노','뷰노','VUNO, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100120','뷰웍스','뷰웍스','Vieworks Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('337930','브랜드엑스코퍼레이션','브랜드엑스코퍼레이션','Brand X Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064480','브리지텍','브리지텍','BRIDGETEC Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('288330','브릿지바이오테라퓨틱스','브릿지바이오테라퓨틱스','BRIDGE BIOTHERAPEUTICS, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251630','브이원텍','브이원텍','V-ONE TECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018290','브이티지엠피','브이티지엠피','VT GMP Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263920','블러썸엠앤씨','블러썸엠앤씨','Blossom M&C Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044480','블루베리엔에프티','블루베리 NFT','Blueberry NFT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033560','블루콤','블루콤','BLUECOM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126340','비나텍','비나텍','VINA TECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121800','비덴트','비덴트','Vidente Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('148140','비디아이','비디아이','BDI Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082800','비보존 헬스케어','비보존 헬스케어','Vivozon Healthcare, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('318410','비비씨','비비씨','Best Bristle Company CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002070','비비안보통주','비비안','VIVIEN CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100220','비상교육 보통주','비상교육','VISANG EDUCATION INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200780','비씨월드제약','비씨월드제약','BCWORLDPHARM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('141000','비아트론','비아트론','Viatron Technologies, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090460','비에이치','비에이치','BH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083650','비에이치아이','비에이치아이','BHI Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215050','비엔디생활건강','비엔디생활건강','B&D Life Health CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086670','비엠티','비엠티','BMT Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('335890','비올','비올','VIOL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138580','비즈니스온커뮤니케이션','비즈니스온','BusinessOn Communication Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082920','비츠로셀','비츠로셀','VITZROCELL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054220','비츠로시스','비츠로시스','VitzroSys., Co. LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042370','비츠로테크','비츠로테크','Vitzro Tech Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030790','비케이탑스보통주','비케이탑스','BK TOPS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032850','비트컴퓨터','비트컴퓨터','BITComputer');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('148780','비플라이소프트','비플라이소프트','BFLYSOFT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238200','비피도','비피도','BIFIDO. Co. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093190','빅솔론','빅솔론','BIXOLON Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065450','빅텍','빅텍','VICTEK. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('210120','빅토리콘텐츠','빅텐츠','Victory Contents Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005180','빙그레보통주','빙그레','Binggrae');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072950','빛샘전자','빛샘전자','VISSEM Electronics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('266170','뿌리깊은나무들','뿌리깊은나무들','Redwoods');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('143240','사람인에이치알','사람인에이치알','SaraminHR Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003960','사조대림보통주','사조대림','SAJODAERIM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008040','사조동아원보통주','사조동아원','SAJODONGAONE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007160','사조산업보통주','사조산업','SajoIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014710','사조씨푸드보통주','사조씨푸드','SAJOSEAFOOD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006090','사조오양보통주','사조오양','OYANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100090','삼강엠앤티','삼강엠앤티','SAMKANG M&T Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122350','삼기','삼기','SAMKEE CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014970','삼륭물산','삼륭물산','Samryoong');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018310','삼목에스폼','삼목에스폼','SAMMOK S-FORM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053700','삼보모터스','삼보모터스','SAMBO MOTORS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009620','삼보산업','삼보산업','SAMBO Industrial Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023600','삼보판지','삼보판지','SAMBO CORRUGATED BOARD CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111870','삼본전자','삼본전자','SAMBON ELECTRONICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001470','삼부토건보통주','삼부토건','SambuEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006405','삼성SDI1우선주','삼성SDI우','SAMSUNG SDI(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006400','삼성SDI보통주','삼성SDI','SAMSUNG SDI CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006660','삼성공조보통주','삼성공조','SamsungClimateControlCo.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('291230','삼성기업인수목적2호','삼성스팩2호','SAMSUNG SPECIAL PURPOSE ACQUISITION 2 CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('02826K','삼성물산1우선주(신형)','삼성물산우B','SAMSUNG C&T CORPORATION(1PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028260','삼성물산보통주','삼성물산','SAMSUNG C&T CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('207940','삼성바이오로직스보통주','삼성바이오로직스','SAMSUNG BIOLOGICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032830','삼성생명보험보통주','삼성생명','Samsung Life Insurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018260','삼성에스디에스보통주','삼성에스디에스','SAMSUNG SDS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028050','삼성엔지니어링보통주','삼성엔지니어링','SamsungEngineering');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009155','삼성전기1우선주','삼성전기우','SamsungElectroMechanics(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009150','삼성전기보통주','삼성전기','SamsungElectroMechanics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005935','삼성전자1우선주','삼성전자우','SamsungElectronics(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005930','삼성전자보통주','삼성전자','SamsungElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001360','삼성제약','삼성제약','SAMSUNG PHARMACEUTICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010145','삼성중공업1우선주','삼성중공우','SamsungHeavyIndustries(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010140','삼성중공업보통주','삼성중공업','SamsungHeavyIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016360','삼성증권보통주','삼성증권','SamsungSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068290','삼성출판사보통주','삼성출판사','SAMSUNG PUBLISHING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029780','삼성카드 보통주','삼성카드','SAMSUNG CARD CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000815','삼성화재해상보험1우선주','삼성화재우','SamsungFire&MarineInsurance(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000810','삼성화재해상보험보통주','삼성화재','SamsungFire&MarineInsurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006110','삼아알미늄보통주','삼아알미늄','SamaAluminium');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009300','삼아제약','삼아제약','Sam-A Pharm. Co. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145995','삼양사1우선주','삼양사우','Samyang Corporation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145990','삼양사보통주','삼양사','Samyang Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003230','삼양식품보통주','삼양식품','SamyangFoods');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225190','삼양옵틱스','삼양옵틱스','SAMYANG OPTICS CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002170','삼양통상보통주','삼양통상','SamyangTongsang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272550','삼양패키징보통주','삼양패키징','SAMYANG PACKAGING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000075','삼양홀딩스1우선주','삼양홀딩스우','SAMYANGHOLDINGS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000070','삼양홀딩스보통주','삼양홀딩스','SAMYANGHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060310','삼에스코리아','3S','3S KOREA CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002810','삼영무역보통주','삼영무역','SamyungTrading');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054540','삼영엠텍','삼영엠텍','SAMYOUNG M-TEK CO. LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065570','삼영이엔씨','삼영이엔씨','Samyung ENC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005680','삼영전자공업보통주','삼영전자','SamyoungElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003720','삼영화학공업보통주','삼영화학','SamyoungChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023000','삼원강재 보통주','삼원강재','SAMWONSTEEL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004380','삼익THK보통주','삼익THK','SAMICK THK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002450','삼익악기보통주','삼익악기','SamickMusicalInstruments');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032280','삼일','삼일','SamIl');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002290','삼일기업공사','삼일기업공사','SAMIL ENTERPRISE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004440','삼일씨엔에스보통주','삼일씨엔에스','SAMIL C&S');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000520','삼일제약보통주','삼일제약','SamilPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009770','삼정펄프 보통주','삼정펄프','SAM JUNG PULP CO,.LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037460','삼지전자','삼지전자','SAMJI ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032750','삼진','삼진','Samjin');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054090','삼진엘앤디','삼진엘앤디','SAMJIN LND COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005500','삼진제약보통주','삼진제약','SamjinPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000250','삼천당제약','삼천당제약','SAM CHUN DANG PHARM CO. LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004690','삼천리보통주','삼천리','Samchully');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024950','삼천리자전거','삼천리자전거','SAMCHULY BICYCLE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038500','삼표시멘트','삼표시멘트','SAMPYO Cement Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017480','삼현철강','삼현철강','SAMHYUN STEEL Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010960','삼호개발 보통주','삼호개발','Samho Development Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046390','삼화네트웍스','삼화네트웍스','SAMHWA NETWORKS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004450','삼화왕관보통주','삼화왕관','SamhwaCrown&Closure');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009470','삼화전기보통주','삼화전기','SamwhaElectric');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011230','삼화전자공업보통주','삼화전자','SamwhaElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001820','삼화콘덴서공업보통주','삼화콘덴서','SamwhaCapacitor');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000390','삼화페인트공업보통주','삼화페인트','SamhwaPaintIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027580','상보','상보','SANG BO Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038540','상상인','상상인','Sangsangin Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307870','상상인이안제1호기업인수목적','상상인이안1호스팩','Sangsangin Ian No.1 Special Purpose Acquisition Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('329560','상상인이안제2호기업인수목적','상상인이안제2호스팩','Sangsangin Ian No.2 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101000','상상인인더스트리','상상인인더스트리','Sangsangin Industry Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001290','상상인증권보통주','상상인증권','SANGSANGININVESTMENT&SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041650','상신브레이크보통주','상신브레이크','SANGSINBRAKE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091580','상신이디피','상신이디피','SANGSIN ENERGY DISPLAY PRECISION CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263810','상신전자','상신전자','Sangshin Electronics Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089980','상아프론테크','상아프론테크','SANG-A FRONTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042940','상지카일룸','상지카일룸','Sangji Caelum, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042600','새로닉스','새로닉스','SERONICS. CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('075180','새론오토모티브','새론오토모티브','SaeronAutomotiveCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263540','샘코','샘코','Sacheon Aerospace Manufacturing Ind. Co. Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007540','샘표보통주','샘표','SEMPIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('248170','샘표식품보통주','샘표식품','SEMPIO FOODS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('294630','서남','서남','SuNAM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038070','서린바이오사이언스','서린바이오','SeouLinBioscience CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006730','서부티엔디','서부T&D','Seobu T&D Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079650','서산','서산','Seo San Co. Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100660','서암기계공업','서암기계공업','SEOAM MACHINERY INDUSTRY CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007860','서연보통주','서연','SEOYON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200880','서연이화보통주','서연이화','SEOYONEHWA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019770','서연탑메탈','서연탑메탈','SEOYON TOPMETAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017390','서울도시가스보통주','서울가스','SeoulCityGas');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043710','서울리거','서울리거','SEOULEAGUER CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092190','서울바이오시스','서울바이오시스','SEOUL VIOSYS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046890','서울반도체','서울반도체','SEOUL SEMICONDUCTOR CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004415','서울식품공업1우선주','서울식품우','SeoulFoodInd(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004410','서울식품공업보통주','서울식품','SeoulFoodInd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063170','서울옥션','서울옥션','Seoul Auction Co. Ltd..');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027040','서울전자통신','서울전자통신','SEOUL ELECTRONICS & TELECOM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018680','서울제약','서울제약','SEOUL PHARMA CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021050','서원보통주','서원','Seowon');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093920','서원인텍','서원인텍','SEOWONINTECH.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189860','서전기전','서전기전','SEOJEON ELECTRIC MACHINERY Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('178320','서진시스템','서진시스템','SEOJIN SYSTEM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122690','서진오토모티브','서진오토모티브','Seojin Automotive Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140070','서플러스글로벌','서플러스글로벌','SurplusGLOBAL,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011370','서한','서한','Seohan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065710','서호전기','서호전기','Seoho Electric Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008490','서흥보통주','서흥','SUHEUNG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035890','서희건설','서희건설','SEOHEE CONSTRUCTION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('357550','석경에이티','석경에이티','Sukgyung AT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003100','선광','선광','SUN KWANG Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123420','선데이토즈','선데이토즈','SundayToz Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007610','선도전기보통주','선도전기','SeondoElectric');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067370','선바이오','선바이오','SunBio');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002820','선앤엘보통주','SUN&L','SUN&L');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('171090','선익시스템','선익시스템','SUNIC SYSTEM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136490','선진보통주','선진','SUNJIN Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086710','선진뷰티사이언스','선진뷰티사이언스','SUNJIN BEAUTY SCIENCE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014620','성광벤드','성광벤드','SUNG KWANG BEND CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037350','성도이엔지','성도이엔지','SUNGDO Engineering & Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014915','성문전자1우선주','성문전자우','SungmoonElectronics(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014910','성문전자보통주','성문전자','SungmoonElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003080','성보화학보통주','성보화학','SungboChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004985','성신양회1우선주','성신양회우','SungshinCement(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004980','성신양회보통주','성신양회','SungshinCement');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011300','성안보통주','성안','Seongan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('081580','성우전자','성우전자','SUNGWOO ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045300','성우테크론','성우테크론','SUNGWOO TECHRON COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015750','성우하이텍','성우하이텍','SUNGWOO HITECH CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000180','성창기업지주보통주','성창기업지주','SungchangEnterpriseHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080470','성창오토텍','성창오토텍','SUNGCHANG AUTOTECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043260','성호전자','성호전자','SUNGHO ELECTRONICS CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('148150','세경하이테크','세경하이테크','Se Gyung Hi Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002420','세기상사보통주','세기상사','TheCentury');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053060','세동','세동','SAE DONG CO.LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017510','세명전기공업','세명전기','SemyungElectricMachinery');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214310','세미콘라이트','세미콘라이트','Semicon Light Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004365','세방1우선주','세방우','SEBANG(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004360','세방보통주','세방','SEBANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004490','세방전지보통주','세방전지','SEBANG GLOBAL BATTERY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011560','세보엠이씨','세보엠이씨','SEBO MANUFACTURING ENGINEERING CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001430','세아베스틸보통주','세아베스틸','SEAH BESTEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('306200','세아제강보통주','세아제강','SeAH Steel Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003030','세아제강지주보통주','세아제강지주','SeAH Steel Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019440','세아특수강보통주','세아특수강','SeAH SPECIAL STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058650','세아홀딩스보통주','세아홀딩스','SeAHHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013000','세우글로벌보통주','세우글로벌','Sewooglobal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100700','세운메디칼','세운메디칼','SEWOONMEDICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234100','세원','세원','Sewon Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024830','세원물산','세원물산','SewonCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091090','세원셀론텍 보통주','세원셀론텍','SEWON CELLONTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021820','세원정공보통주','세원정공','SewonPrecisionIndustry');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067830','세이브존I&C보통주','세이브존I&C','SAVEZONEI&C');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033530','세종공업보통주','세종공업','SEJONG INDUSTRIAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258830','세종메디칼','세종메디칼','SEJONG MEDICAL Co.Ltd.,');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036630','세종텔레콤','세종텔레콤','Sejong Telecom, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039310','세중','세중','SEJOONG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('075580','세진중공업보통주','세진중공업','SEJIN HEAVY INDUSTRIES CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067770','세진티에스','세진티에스','SEJIN T.S CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053450','세코닉스','세코닉스','SEKONIX CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234340','세틀뱅크','세틀뱅크','Settlebank Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027970','세하보통주','세하','seha');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145210','세화아이엠씨보통주','세화아이엠씨','SAEHWA IMC Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('252500','세화피앤씨','세화피앤씨','SEWHA P&C INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347000','센코','센코','SENKO Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('308170','센트랄모텍보통주','센트랄모텍','CENTRAL MOTEK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051980','센트럴바이오','센트럴바이오','CENTRALBIO Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012600','센트럴인사이트보통주','센트럴인사이트','CENTRAL INSIGHT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('331920','셀레믹스','셀레믹스','Celemics, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049180','셀루메드','셀루메드','CELLUMED CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299660','셀리드','셀리드','Cellid Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('268600','셀리버리','셀리버리','Cellivery Therapeutics, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108860','셀바스에이아이','셀바스AI','SELVAS AI Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208370','셀바스헬스케어','셀바스헬스케어','SELVAS Healthcare, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258250','셀젠텍','셀젠텍','CELLGENTEK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068270','셀트리온보통주','셀트리온','Celltrion');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068760','셀트리온제약','셀트리온제약','Celltrion Pharm Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091990','셀트리온헬스케어','셀트리온헬스케어','Celltrion Healthcare Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290690','소룩스','소룩스','Solux Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053110','소리바다','소리바다','SORIBADA INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950200','소마젠(Reg.S)','소마젠(Reg.S)','Psomagen, Inc.(Reg.S)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032680','소프트센','소프트센','SOFTCEN CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032685','소프트센1우선주','소프트센우','SOFTCEN CO., LTD.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258790','소프트캠프','소프트캠프','SOFTCAMP CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066910','손오공','손오공','SONOKONG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043100','솔고바이오메디칼','솔고바이오','Solco Biomedical Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('33637K','솔루스첨단소재1우선주','솔루스첨단소재1우','Solus Advanced Materials(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('33637L','솔루스첨단소재2우선주(신형)','솔루스첨단소재2우B','Solus Advanced Materials(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('336370','솔루스첨단소재보통주','솔루스첨단소재','Solus Advanced Materials');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('154040','솔루에타','솔루에타','Solueta Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('248070','솔루엠보통주','솔루엠','SOLUM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035610','솔본','솔본','SOLBORN, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('357780','솔브레인','솔브레인','Soulbrain Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036830','솔브레인홀딩스','솔브레인홀딩스','Soulbrain Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('304100','솔트룩스','솔트룩스','SALTLUX Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004430','송원산업보통주','송원산업','SongwonIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086980','쇼박스','쇼박스','SHOWBOX Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050960','수산아이앤티','수산아이앤티','SOOSAN INT Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017550','수산중공업보통주','수산중공업','SoosanHeavyIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084180','수성이노베이션','수성이노베이션','SOOSUNG INNOVATION. CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('253840','수젠텍','수젠텍','Sugentech, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058530','슈펙스비앤피','슈펙스비앤피','SUPEX BNP CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('236200','슈프리마','슈프리마','Suprema Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317770','슈프리마아이디','슈프리마아이디','Suprema ID Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094840','슈프리마에이치큐','슈프리마에이치큐','Suprema HQ Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192440','슈피겐코리아','슈피겐코리아','Spigen Korea Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099440','스맥','스맥','SMEC CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033790','스카이문스테크놀로지','스카이문스테크놀로지','Skymoons Technology, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('159910','스킨앤스킨','스킨앤스킨','Skin n Skin Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('158310','스타모빌리티','스타모빌리티','Star Mobility Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115570','스타플렉스','스타플렉스','STARFLEX CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258540','스템랩','스템랩','StemLab');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204630','스튜디오 산타클로스 엔터테인먼트','스튜디오산타클로스','STUDIO SANTA CLAUS ENTERTAINMENT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('253450','스튜디오드래곤 주식회사','스튜디오드래곤','Studio Dragon Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013810','스페코','스페코','Speco');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039670','스포츠서울','스포츠서울','The Sports Seoul');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049830','승일','승일','SEUNG IL Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020710','시공테크','시공테크','SIGONG TECH Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033170','시그네틱스','시그네틱스','Signetics Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('260870','시그넷이브이','시그넷이브이','SIGNET EV');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048870','시너지이노베이션','시너지이노베이션','Synergy Innovation Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025320','시노펙스','시노펙스','Synopex Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('134790','시디즈보통주','시디즈','Sidiz,Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('269620','시스웍','시스웍','SYSWORK CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131090','시큐브','시큐브','SECUVE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('232830','시큐센','시큐센','SECUCEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('139050','시티랩스','시티랩스','CITYLABS Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016590','신대양제지보통주','신대양제지','ShindaeyangPaper');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290520','신도기연','신도기연','Shindo Eng. Lab., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029530','신도리코보통주','신도리코','SINDOH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004970','신라교역보통주','신라교역','Silla');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001000','신라섬유','신라섬유','SillaTextile');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025870','신라에스지','신라에스지','SILLA SG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215600','신라젠','신라젠','SillaJen, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065350','신성델타테크','신성델타테크','SHINSUNG DELTA TECH CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011930','신성이엔지보통주','신성이엔지','SHINSUNG E&G');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005390','신성통상보통주','신성통상','ShinsungTongsang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034300','신세계건설','신세계건설','ShinsegaeEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004170','신세계보통주','신세계','Shinsegae Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035510','신세계아이앤씨 보통주','신세계 I&C','SHINSEGAE INFORMATION & COMMUNICATION Co');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031430','신세계인터내셔날보통주','신세계인터내셔날','SHINSEGAE INTERNATIONAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031440','신세계푸드보통주','신세계푸드','SHINSEGAE FOOD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006880','신송홀딩스보통주','신송홀딩스','SINGSONGHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002800','신신제약','신신제약','SINSIN PHARMACEUTICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005800','신영와코루보통주','신영와코루','ShinyoungWacoal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001725','신영증권1우선주','신영증권우','ShinyoungSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001720','신영증권보통주','신영증권','ShinyoungSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323280','신영해피투모로우제5호기업인수목적','신영스팩5호','Shinyoung HappyTomorrow No.5 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('344050','신영해피투모로우제6호기업인수목적','신영스팩6호','Shinyoung HappyTomorrow No.6 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009275','신원1우선주','신원우','Shinwon(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009270','신원보통주','신원','Shinwon');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017000','신원종합개발','신원종합개발','ShinwonConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002700','신일전자보통주','신일전자','SHINIL ELECTRONICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012790','신일제약','신일제약','SHINIL PHARMACEUTICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138070','신진에스엠','신진에스엠','SINJIN SM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226330','신테카바이오','신테카바이오','SyntekaBio,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019175','신풍제약1우선주','신풍제약우','ShinpoongPharmaceutical(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019170','신풍제약보통주','신풍제약','ShinpoongPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002870','신풍제지보통주','신풍제지','ShinpoongPaperMfg');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('055550','신한금융지주회사보통주','신한지주','ShinhanFinancialGroup Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293940','신한알파리츠보통주','신한알파리츠','Shinhan Alpha REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('333050','신한제6호기업인수목적','신한제6호스팩','Shinhan 6th Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('366330','신한제7호기업인수목적','신한제7호스팩','Shinhan 7th Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001770','신화실업보통주','신화실업','ShinhwaSilup');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056700','신화인터텍','신화인터텍','SHINWHA INTERTEK CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187270','신화콘텍','신화콘텍','Shin Hwa Contech Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004080','신흥보통주','신흥','Shinhung');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('243840','신흥에스이씨','신흥에스이씨','SHIN HEUNG ENERGY & ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108320','실리콘웍스','실리콘웍스','Silicon Works Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222800','심텍','심텍','SIMMTECH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036710','심텍홀딩스','심텍홀딩스','SIMMTECH HOLDINGS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('160980','싸이맥스','싸이맥스','CYMECHS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('356890','싸이버원','싸이버원','CyberOne Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217330','싸이토젠','싸이토젠','Cytogen, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102280','쌍방울','쌍방울','SBW');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003410','쌍용C&E보통주','쌍용C&E','SSANGYONGC&E');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003620','쌍용자동차보통주','쌍용차','SsangyongMotor');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010280','쌍용정보통신','쌍용정보통신','SsangYong Information & Communications');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004770','써니전자보통주','써니전자','SunnyElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217320','썬테크','썬테크','SUNTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208640','썸에이지','썸에이지','Thumbage Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222420','쎄노텍','쎄노텍','CENOTEC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037760','쎄니트','쎄니트','CENIT CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136510','쎄미시스코','쎄미시스코','Semisysco Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099320','쎄트렉아이','쎄트렉아이','Satrec Initiative Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015540','쎌마테라퓨틱스보통주','쎌마테라퓨틱스','THELMA Therapeutics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049960','쎌바이오텍','쎌바이오텍','CELL BIOTECH CO ., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050890','쏠리드','쏠리드','Solid, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066790','씨씨에스충북방송','씨씨에스','KOREA CABLE T.V CHUNG-BUK SYSTEM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222080','씨아이에스','씨아이에스','Creative & Innovative System Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004920','씨아이테크보통주','씨아이테크','CITECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('236030','씨알푸드','씨알푸드','SSIAL FOOD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103660','씨앗','씨앗','CIAAT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('245450','씨앤에스링크','씨앤에스링크','CNSLINK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023460','씨앤에이치','CNH','CNH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('264660','씨앤지하이테크','씨앤지하이테크','C&G Hi Tech Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('352700','씨앤투스성진','씨앤투스성진','CNTUS SUNGJIN CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065770','씨에스','CS','CS CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('297090','씨에스베어링','씨에스베어링','CS BEARING Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083660','씨에스에이코스믹','CSA 코스믹','CSA COSMIC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('112610','씨에스윈드보통주','씨에스윈드','CS Wind Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('286000','씨엔티드림','씨엔티드림','CNT Dream');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115530','씨엔플러스','씨엔플러스','CNPLUS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225330','씨엠에스에듀','씨엠에스에듀','CMS Edu Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056000','씨오더블유오엔','COWON','COWON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115480','씨유메디칼시스템','씨유메디칼','CU MEDICAL SYSTEMS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189330','씨이랩','씨이랩','XIIlab Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000120','씨제이대한통운보통주','CJ대한통운','CJ LOGISTICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079160','씨제이씨지브이 보통주','CJ CGV','CJ CGV');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035760','씨제이이엔엠','CJ ENM','CJ ENM CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097955','씨제이제일제당 주식회사 1우선주','CJ제일제당 우','CJ CheilJedang Corp(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097950','씨제이제일제당 주식회사 보통주','CJ제일제당','CJ CheilJedang Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051500','씨제이프레시웨이','CJ프레시웨이','CJ Freshway Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096530','씨젠','씨젠','Seegene Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900120','씨케이에이치푸드앤헬스리미티드','씨케이에이치','CKH Food & Health Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101240','씨큐브','씨큐브','CQV Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060590','씨티씨바이오','씨티씨바이오','CTC BIO, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('260930','씨티케이코스메틱스','씨티케이코스메틱스','CTK Cosmetics Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013990','아가방앤컴퍼니','아가방컴퍼니','AGABANG&COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123860','아나패스','아나패스','Anapass, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025980','아난티','아난티','Ananti Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008700','아남전자보통주','아남전자','AnamElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050320','아래스','아래스','RS Inc.,');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058220','아리온테크놀로지','아리온','ARION TECHNOLOGY INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('125210','아모그린텍','아모그린텍','AMOGREENTECH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002795','아모레G1우선주','아모레G우','AmoreG(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00279K','아모레G3우선주(전환)','아모레G3우(전환)','AMOREG(3PC)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002790','아모레G보통주','아모레G','AmoreG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090435','아모레퍼시픽 1우선주','아모레퍼시픽우','AMOREPACIFIC CORPORATION(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090430','아모레퍼시픽 보통주','아모레퍼시픽','AMOREPACIFIC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052710','아모텍','아모텍','Amotech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('074430','아미노로직스','아미노로직스','AMINOLOGICS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092040','아미코젠','아미코젠','Amicogen, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083930','아바코','아바코','AVACO CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('149950','아바텍','아바텍','AVATEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036010','아비코전자','아비코전자','ABCO ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002030','아세아보통주','아세아','ASIA HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('183190','아세아시멘트보통주','아세아시멘트','ASIACEMENT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002310','아세아제지보통주','아세아제지','AsiaPaperManufacturing');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050860','아세아텍','아세아텍','ASIA TECHNOLOGY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012170','아센디오보통주','아센디오','Ascendio');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246720','아스타','아스타','ASTA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067390','아스트','아스트','AeroSpace Technology of Korea, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('127710','아시아경제','아시아경제','The Asia Business Daily Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267850','아시아나IDT보통주','아시아나IDT','AsianaIDT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020560','아시아나항공 보통주','아시아나항공','Asiana Airlines');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227610','아우딘퓨쳐스','아우딘퓨쳐스','Outin Futures Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('143160','아이디스','아이디스','Intelligent Digital Integrated Security Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054800','아이디스홀딩스','아이디스홀딩스','IDIS Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('332370','아이디피','아이디피','IDP Corp., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122900','아이마켓코리아보통주','아이마켓코리아','iMarketKorea Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('339950','아이비김영','아이비김영','IBKIMYOUNG CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('335870','아이비케이에스제12호기업인수목적','IBKS제12호스팩','IBKS No.12 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('351340','아이비케이에스제13호기업인수목적','IBKS제13호스팩','IBKS No.13 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('351320','아이비케이에스제14호기업인수목적','IBKS제14호스팩','IBKS No.14 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('373200','아이비케이에스제15호기업인수목적','IBKS제15호스팩','IBKS No.15 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099190','아이센스','아이센스','i-SENS, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('289010','아이스크림에듀','아이스크림에듀','i-Scream Edu Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214430','아이쓰리시스템','아이쓰리시스템','i3system, Ind.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040910','아이씨디','아이씨디','ICD Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068940','아이씨케이','아이씨케이','ICK Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052860','아이앤씨테크놀로지','아이앤씨','I&C Technology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010780','아이에스동서보통주','아이에스동서','IS DONGSEO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095340','아이에스시','ISC','ISC Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069920','아이에스이커머스','아이에스이커머스','ISE Commerce Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038880','아이에이','아이에이','iA, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307180','아이엘사이언스','아이엘사이언스','IL SCIENCE CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101390','아이엠','아이엠','IM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052220','아이엠비씨','iMBC','iMBC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090740','아이엠이연이','아이엠이연이','IME YOUNYI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226350','아이엠텍','아이엠텍','IM Tech Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078860','아이오케이컴퍼니','아이오케이','IOKCOMPANY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114810','아이원스','아이원스','IONES Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031310','아이즈비전','아이즈비전','EYESVISION CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('185490','아이진','아이진','EyeGene,Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('059100','아이컴포넌트','아이컴포넌트','i-Components Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('149010','아이케이세미콘','아이케이세미콘','IK Semicon Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('262840','아이퀘스트','아이퀘스트','IQUEST Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('175250','아이큐어','아이큐어','Icure Pharmaceutical Incorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052460','아이크래프트','아이크래프트','iCRAFT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119830','아이텍','아이텍','ITEK, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052770','아이톡시','아이톡시','ITOXI Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('124500','아이티센','아이티센','ITCEN CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099520','아이티엑스에이아이','ITX-AI','ITX-AI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084850','아이티엠반도체','아이티엠반도체','ITM Semiconductor Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('223220','아이피몬스터','아이피몬스터','IP Monster');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027360','아주아이비투자','아주IB투자','AJU IB INVESTMENT CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032080','아즈텍더블유비이','아즈텍WB','AZTECH WB CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013310','아진산업','아진산업','A-JIN INDUSTRY CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('059120','아진엑스텍','아진엑스텍','AJINEXTEK Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('158430','아톤','아톤','ATON Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('149300','아퓨어스','아퓨어스','APURES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067160','아프리카티비','아프리카TV','AfreecaTV Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001540','안국약품','안국약품','AHN-GOOK PHARMACEUTICAL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053800','안랩','안랩','AHNLAB,INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251280','안지오랩','안지오랩','AngioLab');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065660','안트로젠','안트로젠','ANTEROGEN CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('297570','알로이스','알로이스','ALOYS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001780','알루코 보통주','알루코','ALUKO CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('260660','알리코제약','알리코제약','KOREA ARLICO PHARM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131370','알서포트','알서포트','RSUPPORT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140670','알에스오토메이션','알에스오토메이션','RS Automation Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('327260','알에프머트리얼즈','RF머트리얼즈','RF Materials');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096610','알에프세미','알에프세미','RFsemi Technologies,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('218410','알에프에이치아이씨','RFHIC','RFHIC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('061040','알에프텍','알에프텍','RFTECH CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('148250','알엔투테크놀로지','알엔투테크놀로지','RN2 Technologies Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347860','알체라','알체라','Alchera Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196170','알테오젠','알테오젠','Alteogen Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123750','알톤스포츠','알톤스포츠','Alton Sports Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085810','알티캐스트','알티캐스트','Alticast Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('117670','알파홀딩스','알파홀딩스','Alpha Holdings, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('291650','압타머사이언스','압타머사이언스','Aptamer Sciences Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293780','압타바이오','압타바이오','Aptabio Therapeutics Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267810','앙츠','앙츠','ANTZ');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018250','애경산업보통주','애경산업','AEKYUNG INDUSTRIAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161000','애경유화보통주','애경유화','Aekyung Petrochemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196300','애니젠','애니젠','ANYGEN CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('310200','애니플러스','애니플러스','ANIPLUS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('179530','애드바이오텍','애드바이오텍','ADBIOTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('205500','액션스퀘어','액션스퀘어','Action Square Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052790','액토즈소프트','액토즈소프트','ACTOZ SOFT CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131400','액트','액트','ACT CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290740','액트로','액트로','ActRo');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238090','앤디포스','앤디포스','NDFOS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092600','앤씨앤','앤씨앤','NC& Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('129890','앱코','앱코','ABKO CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('174900','앱클론 주식회사','앱클론','AbClon Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('255440','야스','야스','YAS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030960','양지사','양지사','Yangjisa');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102120','어보브반도체','어보브반도체','ABOV Semiconductor Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238120','얼라인드제네틱스','얼라인드','Aligned Genetics, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224810','엄지하우스','엄지하우스','EOMJIHOUSE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019990','에너토크','에너토크','ENERTORK LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011090','에넥스보통주','에넥스','Enex');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270660','에브리봇','에브리봇','Everybot');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038680','에스넷시스템','에스넷','S NET SYSTEMS.Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217480','에스디생명공학','에스디생명공학','SD BIOTECHNOLOGIES CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121890','에스디시스템','에스디시스템','SD system Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('099220','에스디엔','SDN','SDN Company Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097780','에스맥','에스맥','S-MAC CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('289080','에스브이인베스트먼트','SV인베스트먼트','SV INVESTMENT CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019550','에스비아이인베스트먼트','SBI인베스트먼트','SBI Investment KOREA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034120','에스비에스보통주','SBS','SEOULBROADCASTINGSYSTEM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046140','에스비에스콘텐츠허브','SBS콘텐츠허브','SBS Contents Hub Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042110','에스씨디','에스씨디','SCD CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036120','에스씨아이평가정보','SCI평가정보','SCI Information Service Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298060','에스씨엠생명과학','에스씨엠생명과학','SCM Lifescience Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065420','에스아이리소스','에스아이리소스','SI RESOURCES CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270210','에스알바이오텍','에스알바이오텍','SR biotek');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103230','에스앤더블류','에스앤더블류','S&W Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('260970','에스앤디','에스앤디','S&D');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900080','에스앤씨엔진그룹리미티드','에스앤씨엔진그룹','S&C Engine Group Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101490','에스앤에스텍','에스앤에스텍','S&S TECH CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950180','에스앤케이','SNK','SNK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095910','에스에너지','에스에너지','S-Energy CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('275630','에스에스알','에스에스알','SSR Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031330','에스에이엠티','에스에이엠티','SAMT CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060540','에스에이티','에스에이티','System and Application Technologies Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056190','에스에프에이','에스에프에이','SFA Engineering Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036540','에스에프에이반도체','SFA반도체','SFA Semicon Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080000','에스엔유프리시젼','에스엔유','SNU Precision Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091340','에스엔케이폴리텍','S&K폴리텍','S&K POLYTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005850','에스엘보통주','에스엘','SLCORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246250','에스엘에스바이오','에스엘에스바이오','SLS BIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063440','에스엠라이프디자인그룹','SM Life Design','SM Life Design Group Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299670','에스엠비나','에스엠비나','SMVINA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041510','에스엠엔터테인먼트','에스엠','SM ENTERTAINMENT CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048550','에스엠컬처앤콘텐츠','SM C&C','SM Culture & Contents Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007820','에스엠코어','에스엠코어','SMCore.Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109610','에스와이','에스와이','SY CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012750','에스원보통주','에스원','S-1');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('306040','에스제이그룹','에스제이그룹','SJ Group Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080440','에스제이케이','에스제이케이','SJK CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217910','에스제이켐','에스제이켐','SJ-CHEM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004060','에스지세계물산보통주','SG세계물산','SGCORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016250','에스지씨이테크건설','SGC이테크건설','SGC eTEC E&C Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049470','에스지에이','SGA','SGA Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('184230','에스지에이 솔루션즈','SGA솔루션즈','SGA Solutions Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224880','에스지에이클라우드서비스','SGA클라우드서비스','SGA CloudService');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040610','에스지엔지','SG&G','SG&G Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('255220','에스지이','SG','SG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036490','에스케이 머티리얼즈','SK머티리얼즈','SK Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006125','에스케이디스커버리1우선주','SK디스커버리우','SK Discovery Co.,Ltd.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006120','에스케이디스커버리보통주','SK디스커버리','SK Discovery Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068400','에스케이렌터카보통주','SK렌터카','SK RENT A CAR');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('302440','에스케이바이오사이언스보통주','SK바이오사이언스','SK BIOSCIENCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('326030','에스케이바이오팜보통주','SK바이오팜','SK BIOPHARMACEUTICALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224020','에스케이씨에스','에스케이씨에스','SKCS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307070','에스케이에이씨피씨제4호기업인수목적','SK4호스팩','SK ACPC NO.4 SPECIAL PURPOSE ACQUISITION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('337450','에스케이제5호기업인수목적','SK5호스팩','SK NO.5 SPECIAL PURPOSE ACQUISITION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340350','에스케이제6호기업인수목적','SK6호스팩','SK NO.6 SPECIAL PURPOSE ACQUISITION COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000660','에스케이하이닉스보통주','SK하이닉스','SK hynix');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096630','에스코넥','에스코넥','S Connect Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069510','에스텍','에스텍','ESTec Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041910','에스텍파마','에스텍파마','ESTECHPHARMA CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234300','에스트래픽','에스트래픽','STraffic Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039440','에스티아이','에스티아이','Systems Technology Incorporated');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('098660','에스티오','에스티오','STO Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052020','에스티큐브','에스티큐브','STCUBE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('237690','에스티팜','에스티팜','ST Pharm Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050760','에스폴리텍','에스폴리텍','S POLYTECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('288620','에스퓨얼셀','에스퓨얼셀','S-Fuelcell Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317830','에스피시스템스','에스피시스템스','SP SYSTEMS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058610','에스피지','에스피지','SPG CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043340','에쎈테크','에쎈테크','ESSEN TECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023960','에쓰씨엔지니어링보통주','에쓰씨엔지니어링','SC ENGINEERING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298690','에어부산보통주','에어부산','AirBusan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054630','에이디칩스','에이디칩스','Advanced Digital Chips Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200710','에이디테크놀로지','에이디테크놀로지','ADTechnology Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096690','에이루트','에이루트','Aroot Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078520','에이블씨엔씨보통주','에이블씨엔씨','ABLE C&C');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298380','에이비엘바이오','에이비엘바이오','ABL Bio Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('203400','에이비온','에이비온','ABION Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('195990','에이비프로바이오','에이비프로바이오','Abpro Bio Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003800','에이스침대','에이스침대','AceBed');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322190','에이스캠퍼','에이스캠퍼','ACE CAMPER');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088800','에이스테크놀로지','에이스테크','Ace Technologies Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241840','에이스토리','에이스토리','ASTORY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138360','에이씨티','에이씨티','ACT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039230','에이아이비트','에이아이비트','AIBIT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('312610','에이에프더블류','에이에프더블류','A.F.W Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015260','에이엔피보통주','에이엔피','AUTOMOBILE&PCB');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234070','에이원알폼','에이원알폼','A ONE ALFORM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140910','에이자기관리부동산투자회사보통주','에이리츠','A SELF-ADMINISTERED REAL ESTATE INVESTMENT TRUST INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039570','에이치디씨아이콘트롤스보통주','HDC아이콘트롤스','HDC I-CONTROLS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089470','에이치디씨현대이피보통주','HDC현대EP','HDC Hyundai Engineering Plastics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078150','에이치비테크놀러지','HB테크놀러지','HB Technology CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072990','에이치시티','에이치시티','HCT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036640','에이치알에스','HRS','HRS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082740','에이치에스디엔진보통주','HSD엔진','HSD Engine');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044990','에이치엔에스하이텍','에이치엔에스하이텍','H&S');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('176440','에이치엔티일렉트로닉스','에이치엔티','HNT Electronics Company Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028300','에이치엘비','에이치엘비','HLB INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067630','에이치엘비생명과학','에이치엘비생명과학','HLB Life Science CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047920','에이치엘비제약','에이치엘비제약','HLB PHARMACEUTICAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043220','에이치엘비파워','에이치엘비파워','HLB POWER Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('239610','에이치엘사이언스','에이치엘사이언스','HLSCIENCE Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353070','에이치엠씨아이비제4호기업인수목적','에이치엠씨제4호스팩','HMCIB No.4 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353060','에이치엠씨아이비제5호기업인수목적','에이치엠씨제5호스팩','HMCIB No.5 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011200','에이치엠엠보통주','HMM','HMM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044780','에이치케이','에이치케이','HK CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071670','에이테크솔루션','에이테크솔루션','A-Tech Solution CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045660','에이텍','에이텍','ATEC CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224110','에이텍티앤','에이텍티앤','ATEC T& CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('230980','에이트원','에이트원','AIIT ONE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021080','에이티넘인베스트먼트','에이티넘인베스트','Atinum Investment Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089530','에이티세미콘','에이티세미콘','AT semicon Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200470','에이팩트','에이팩트','APACT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073070','에이팸','에이팸','APAM CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('207490','에이펙스인텍','에이펙스인텍','APEX INTEC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('262260','에이프로','에이프로','A PRO Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003060','에이프로젠제약보통주','에이프로젠제약','Aprogen pharmaceuticals,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007460','에이프로젠케이아이씨보통주','에이프로젠 KIC','Aprogen KIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109960','에이프로젠헬스케어앤게임즈','에이프로젠 H&G','Aprogen Healthcare & Games Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('244920','에이플러스에셋보통주','에이플러스에셋','A Plus Asset');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('265520','에이피시스템','AP시스템','Advanced Process Systems Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054620','에이피에스홀딩스','APS홀딩스','APS Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('211270','에이피위성','AP위성','Asia Pacific Satellite Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089970','에이피티씨','에이피티씨','APTC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('230240','에치에프알','에치에프알','HFR, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064510','에코마이스터','에코마이스터','ECOMAISTER CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('230360','에코마케팅','에코마케팅','ECHOMARKETING Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038870','에코바이오홀딩스','에코바이오','EcoBio Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('128540','에코캡','에코캡','ECOCAB CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086520','에코프로','에코프로','ECOPRO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('247540','에코프로비엠','에코프로비엠','ECOPRO BM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038110','에코플라스틱','에코플라스틱','ECOPLASTIC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073540','에프알텍','에프알텍','FRTEK CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064850','에프앤가이드','에프앤가이드','FnGuide Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064090','에프앤리퍼블릭','에프앤리퍼블릭','FN REPUBLIC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036810','에프에스티','에프에스티','FINE SEMITECH Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('173940','에프엔씨엔터테인먼트','에프엔씨엔터','FNC ENTERTAINMENT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083500','에프엔에스테크','에프엔에스테크','FNS TECH. Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054940','엑사이엔씨','엑사이엔씨','EXA E&C, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950130','엑세스바이오','엑세스바이오','Access Bio, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('205100','엑셈','엑셈','EXEM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('070300','엑스큐어','엑스큐어','Xcure Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092870','엑시콘','엑시콘','Exicon Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317870','엔바이오니아','엔바이오니아','Envioneer Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067570','엔브이에이치코리아','엔브이에이치코리아','NVH KOREA INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('236810','엔비티','엔비티','NBT INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140610','엔솔바이오사이언스','엔솔바이오사이언스','Ensol Biosciences');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('333620','엔시스','엔시스','Nsys Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101400','엔시트론','엔시트론','N CITRON, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036570','엔씨소프트보통주','엔씨소프트','NCsoftCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217820','엔에스','엔에스','NS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138250','엔에스쇼핑보통주','엔에스쇼핑','NS Shopping Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031860','엔에스엔','엔에스엔','NSN Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238170','엔에스엠','엔에스엠','NSM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224760','엔에스컴퍼니','엔에스컴퍼니','NSCOMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('310840','엔에이치기업인수목적13호','엔에이치스팩13호','NH SPECIAL PURPOSE ACQUISITION 13 CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('353190','엔에이치기업인수목적16호','엔에이치스팩16호','NH SPECIAL PURPOSE ACQUISITION 16 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('359090','엔에이치기업인수목적17호','엔에이치스팩17호','NH SPECIAL PURPOSE ACQUISITION 17 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('365590','엔에이치기업인수목적18호','엔에이치스팩18호','NH SPECIAL PURPOSE ACQUISITION 18 COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104200','엔에이치엔벅스','NHN벅스','NHN BUGS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060250','엔에이치엔한국사이버결제','NHN한국사이버결제','NHN KCP Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005945','엔에이치투자증권1우선주','NH투자증권우','NH INVESTMENT & SECURITIES(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005940','엔에이치투자증권보통주','NH투자증권','NH INVESTMENT & SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('265740','엔에프씨','엔에프씨','NFC Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053290','엔이능률','NE능률','NE Neungyule, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('354200','엔젠바이오','엔젠바이오','NGeneBio Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093510','엔지브이아이','엔지브이아이','NGVI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208860','엔지스테크널러지','엔지스테크널러지','EnGIS Technologies, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('183490','엔지켐생명과학','엔지켐생명과학','ENZYCHEM LIFESCIENCES CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085310','엔케이 보통주','엔케이','NK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('182400','엔케이맥스','엔케이맥스','NKMAX Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009810','엔케이물산보통주','엔케이물산','NK MULSAN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069410','엔텔스','엔텔스','nTels Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227950','엔투텍','엔투텍','N2TECH CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('198080','엔피디','엔피디','NPD Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048830','엔피케이','엔피케이','NPK CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096870','엘디티','엘디티','LDT Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('276240','엘리비젼','엘리비젼','Elivision');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900140','엘브이엠씨홀딩스보통주','엘브이엠씨홀딩스','LVMC Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('061970','엘비세미콘','엘비세미콘','LB SEMICON CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138690','엘아이에스','엘아이에스','LIS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290650','엘앤씨바이오','엘앤씨바이오','L&C BIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066970','엘앤에프','엘앤에프','L&F CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('156100','엘앤케이바이오메드','엘앤케이바이오','L&K BIOMED CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('229640','엘에스전선아시아보통주','LS전선아시아','LS C&S ASIA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('311060','엘에이티','엘에이티','LAT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073110','엘엠에스','엘엠에스','LMS Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083310','엘오티베큠','엘오티베큠','LOT Vacuum. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('297890','엘이티','엘이티','LET CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108670','엘지하우시스','LG하우시스','LG HAUSYS, LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108675','엘지하우시스 1우선주','LG하우시스우','LG HAUSYS, LTD.(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037560','엘지헬로비전보통주','LG헬로비전','LG HelloVision');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037950','엘컴텍','엘컴텍','ELCOMTEC CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('170920','엘티씨','엘티씨','LTC Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058630','엠게임','엠게임','Mgame Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058970','엠로','엠로','EMRO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019590','엠벤처투자','엠벤처투자','M-VENTURE INVESTMENT, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097520','엠씨넥스','엠씨넥스','MCNEX Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('179290','엠아이텍','엠아이텍','MITECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225860','엠앤씨생명과학','엠앤씨생명과학','M&C Life Science');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009780','엠에스씨','엠에스씨','MSC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123040','엠에스오토텍','엠에스오토텍','MS AUTOTECH COMPANY, LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323230','엠에프엠코리아','엠에프엠코리아','MFM KOREA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032790','엠젠플러스','엠젠플러스','MGENPLUS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033160','엠케이전자','엠케이전자','MKElectron');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347890','엠투아이코퍼레이션','엠투아이','M2I CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033310','엠투엔','엠투엔','M2N Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('259630','엠플러스','엠플러스','mPlus Corp');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065150','엠피그룹','MP그룹','MP Group Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115960','연우','연우','YONWOO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060850','영림원소프트랩','영림원소프트랩','YoungLimWon SoftLab. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014440','영보화학보통주','영보화학','YoungboChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007530','영신금속공업','영신금속','YoungsinMetalIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225430','케이엠제약','케이엠제약','KMPHARMACEUTICAL Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092220','케이이씨 보통주','KEC','KEC Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046440','케이지모빌리언스','KG모빌리언스','KGMobilians Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035600','케이지이니시스','KG이니시스','KGINICIS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('151860','케이지이티에스','KG ETS','KG Eco Technology Services Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145270','케이탑리츠보통주','케이탑리츠','KTOPREITs');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030200','케이티보통주','KT','KTCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030210','케이티비투자증권보통주','KTB투자증권','KTB Investment & Securities Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060370','케이티서브마린','KT서브마린','KT Submarine Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053210','케이티스카이라이프','스카이라이프','KT Skylife Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058850','케이티씨에스보통주','KTcs','ktcs corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058860','케이티아이에스보통주','KTis','ktis Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033780','케이티앤지보통주','KT&G','KT&G Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036030','케이티하이텔','KTH','KTHitel Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064820','케이프','케이프','CAPE INDUSTRIES LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347140','케이프이에스제4호기업인수목적','케이프이에스제4호','CAPE-ES No.4 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('256940','케이피에스','케이피에스','KPS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024880','케이피에프','케이피에프','KPF');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114450','케이피엑스라이프사이언스','KPX생명과학','KPX LIFESCIENCE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042040','케이피엠테크','케이피엠테크','KPM TECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054410','케이피티유','케이피티유','Korea Plasma Technology U Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('274090','켄코아에어로스페이스','켄코아에어로스페이스','Kencoa Aerospace Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217600','켐온','켐온','CHEMON Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089010','켐트로닉스','켐트로닉스','CHEMTRONICS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('220260','켐트로스','켐트로스','Chemtros Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052400','코나아이','코나아이','KONA I CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033110','코너스톤네트웍스','코너스톤네트웍스','Cornerstone Networks CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046070','코다코','코다코','KODACO CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047770','코데즈컴바인','코데즈컴바인','Codes Combine Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078940','코드네이처','코드네이처','CODENATURE INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080530','코디','코디','KODI Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('224060','코디엠','코디엠','CODI-M Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('357120','코람코에너지플러스리츠보통주','코람코에너지리츠','KORAMCO ENERGY PLUS REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078650','코렌','코렌','KOLEN CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104540','코렌텍','코렌텍','Corentec Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027050','코리아나화장품','코리아나','COREANA COSMETICS CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290510','코리아센터','코리아센터','Koreacenter Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007815','코리아써키트1우선주','코리아써우','KoreaCircuit(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00781K','코리아써키트2우선주(신형)','코리아써키트2우B','KOREA CIRCUIT(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007810','코리아써키트보통주','코리아써키트','KoreaCircuit');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('190650','코리아에셋투자증권','코리아에셋투자증권','KOREA ASSET INVESTMENT SECURITIES CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101670','코리아에스이','코리아에스이','KOREA SE CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123410','코리아에프티','코리아에프티','KOREA FUEL-TECH CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003690','코리안리재보험보통주','코리안리','Korean Reinsurance Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036690','코맥스','코맥스','COMMAX Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049430','코메론','코메론','KOMELON CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('183300','코미코','코미코','KoMiCo Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041960','코미팜','코미팜','KOMIPHARM INTERNATIONAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089890','코세스','코세스','KOSES Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009730','코센','코센','KOSSEN Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082660','코스나인','코스나인','Cosnine Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192820','코스맥스보통주','코스맥스','COSMAX, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044820','코스맥스비티아이 주식회사 보통주','코스맥스비티아이','COSMAX BTI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222040','코스맥스엔비티','코스맥스엔비티','COSMAX NBT, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241710','코스메카코리아','코스메카코리아','COSMECCA KOREA CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005070','코스모신소재보통주','코스모신소재','CosmoAM&T');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005420','코스모화학보통주','코스모화학','COSMOCHEMICALCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069110','코스온','코스온','COSON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071950','코아스보통주','코아스','KOAS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('166480','코아스템','코아스템','CORESTEM Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045970','코아시아','코아시아','CoAsia Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('196450','코아시아옵틱스','코아시아옵틱스','CoAsia Optics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029960','코엔텍','코엔텍','Korea Environment Technology Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002025','코오롱1우선주','코오롱우','KOLON CORPORATION(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003075','코오롱글로벌1우선주','코오롱글로벌우','KolonGlobalCorporation(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003070','코오롱글로벌보통주','코오롱글로벌','KolonGlobalCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('144620','코오롱머티리얼보통주','코오롱머티리얼','KOLON MATERIALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002020','코오롱보통주','코오롱','KOLON CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('102940','코오롱생명과학','코오롱생명과학','KOLON LIFE SCIENCE Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120115','코오롱인더스트리1우선주','코오롱인더우','KOLON INDUSTRIES(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120110','코오롱인더스트리보통주','코오롱인더','KOLON INDUSTRIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950160','코오롱티슈진','코오롱티슈진','Kolon TissueGene, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('138490','코오롱플라스틱보통주','코오롱플라스틱','KOLON PLASTICS, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021240','코웨이보통주','코웨이','COWAY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033290','코웰패션','코웰패션','COWELL FASHION CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056360','코위버','코위버','COWEAVER Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('282880','코윈테크','코윈테크','COWINTECH Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('121850','코이즈','코이즈','KOYJ.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015710','코콤','코콤','KOCOM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052330','코텍','코텍','KORTEK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322780','코퍼스코리아','코퍼스코리아','COPUS KOREA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126600','코프라','코프라','KOPLA Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200130','콜마비앤에이치','콜마비앤에이치','KolmarBNH Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031820','콤텍시스템보통주','콤텍시스템','ComtecSystems');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192400','쿠쿠홀딩스보통주','쿠쿠홀딩스','Cuckoo Holdings Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('284740','쿠쿠홈시스보통주','쿠쿠홈시스','CUCKOO HOMESYS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317690','퀀타매트릭스','퀀타매트릭스','QuantaMatrix Incorporated');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060280','큐렉소','큐렉소','CUREXO, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015590','큐로보통주','큐로','CURO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040350','큐로컴','큐로컴','CUROCOM Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051780','큐로홀딩스','큐로홀딩스','CUROHOLDINGS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115180','큐리언트','큐리언트','Qurient Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043090','큐브앤컴퍼니','큐브앤컴퍼니','Cube&Company Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('182360','큐브엔터테인먼트','큐브엔터','CUBE ENTERTAINMENT, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066310','큐에스아이','큐에스아이','Q.S.I Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136660','큐엠씨','큐엠씨','QMC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016600','큐캐피탈파트너스','큐캐피탈','Q Capital Partners Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('26490K','크라운제과1우선주','크라운제과우','CROWN(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('264900','크라운제과보통주','크라운제과','CROWN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005745','크라운해태홀딩스1우선주','크라운해태홀딩스우','CROWNHAITAI Holdings(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005740','크라운해태홀딩스보통주','크라운해태홀딩스','CROWNHAITAI Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215570','크로넥스','크로넥스','CRONEX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043590','크로바하이텍','크로바하이텍','CLOVER HITECHNOLOGY CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114120','크루셜텍','크루셜텍','Crucialtec Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('110790','크리스에프앤씨','크리스에프앤씨','CreaS F&C Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083790','크리스탈지노믹스','크리스탈지노믹스','CrystalGenomics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045520','크린앤사이언스','크린앤사이언스','Clean & Science Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036170','클라우드에어','클라우드에어','Cloud Air Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214150','클래시스','클래시스','CLASSYS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('352770','클리노믹스','클리노믹스','Clinomics Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('237880','클리오','클리오','CLIO Cosmetics Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('139670','키네마스터','키네마스터','KineMaster Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020120','키다리스튜디오보통주','키다리스튜디오','KidariStudio');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('311270','키움제5호기업인수목적','키움제5호스팩','Kiwoom No.5 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039490','키움증권보통주','키움증권','KIWOOM Securities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054780','키이스트','키이스트','KEYEAST Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('219130','타이거일렉','타이거일렉','TigerElec Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('180060','탑선','탑선','TOPSUN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065130','탑엔지니어링','탑엔지니어링','Top Engineering Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014580','태경비케이보통주','태경비케이','TAEKYUNG BK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015890','태경산업보통주','태경산업','TaekyungIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006890','태경케미컬보통주','태경케미컬','TAEKYUNGCHEMICALCO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023160','태광','태광','T. K. CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003240','태광산업보통주','태광산업','TaekwangIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011280','태림포장보통주','태림포장','Tailim Packaging');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053620','태양','태양','TAEYANG Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004105','태양금속공업1우선주','태양금속우','TaeyangMetalIndustrial(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004100','태양금속공업보통주','태양금속','TaeyangMetalIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('116100','태양기계 주식회사','태양기계','Sun Machinery Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009410','태영건설보통주','태영건설','TAEYOUNG ENGINEERING & CONSTRUCTION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009415','태영건설우선주','태영건설우','TAEYOUNG ENGINEERING & CONSTRUCTION(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044490','태웅','태웅','TAEWOONG CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('124560','태웅로직스','태웅로직스','Taewoong Logistics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001420','태원물산보통주','태원물산','TaewonMulsan');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007980','태평양물산보통주','태평양물산','PAN-PACIFIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('191420','테고사이언스','테고사이언스','Tego Science, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073640','테라사이언스','테라사이언스','TERA SCIENCE Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('182690','테라셈','테라셈','TerraSem Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066700','테라젠이텍스','테라젠이텍스','THERAGEN ETEX CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095610','테스','테스','TES CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131970','테스나','테스나','TESNA Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('055490','테이팩스보통주','테이팩스','TAPEX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('308700','테크엔','테크엔','TECHEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089030','테크윙','테크윙','Techwing, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('258050','테크트랜스','테크트랜스','Tech Trans');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054450','텔레칩스','텔레칩스','Telechips Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091440','텔레필드','텔레필드','Telefield, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078000','텔코웨어 보통주','텔코웨어','TELCOWARE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200230','텔콘알에프제약','텔콘RF제약','TELCON RF PHARMACEUTICAL. Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214420','토니모리보통주','토니모리','TONYMOLY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('215480','토박스코리아','토박스코리아','TOEBOX KOREA, Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051360','토비스','토비스','TOVIS Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045340','토탈소프트뱅크','토탈소프트','TOTAL SOFT BANK LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('108230','톱텍','톱텍','TOPTEC COMPANY,LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079970','투비소프트','투비소프트','TOBESOFT Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('199800','툴젠','툴젠','ToolGen Incorporated');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105550','트루윈','트루윈','Truwin Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026150','특수건설','특수건설','TuksuConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322180','티라유텍','티라유텍','THiRA-UTECH CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('117730','티로보틱스','티로보틱스','T-Robotics co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033830','티비씨','티비씨','TAEGU BROADCASTING CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057680','티사이언티픽','티사이언티픽','T Scientific Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064760','티씨케이','티씨케이','TOKAI CARBON KOREA CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246710','티앤알바이오팹','티앤알바이오팹','T&R Biofab Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340570','티앤엘','티앤엘','T&L Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('277880','티에스아이','티에스아이','TSI Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131290','티에스이','티에스이','TSE CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('246690','티에스인베스트먼트','TS인베스트먼트','T.S.Investment Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317240','티에스트릴리온','TS트릴리온','TS Trillion Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019180','티에이치엔보통주','티에이치엔','THN CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('356860','티엘비','티엘비','TLB Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('062860','티엘아이','티엘아이','TLI Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002900','티와이엠보통주','TYM','TYM CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('36328K','티와이홀딩스1우선주','티와이홀딩스우','TY HOLDINGS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('363280','티와이홀딩스보통주','티와이홀딩스','TY HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('321550','티움바이오','티움바이오','TiumBio Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091810','티웨이항공보통주','티웨이항공','TWAYAIR');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004870','티웨이홀딩스보통주','티웨이홀딩스','T''way Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032540','티제이미디어','TJ미디어','TJ MEDIA CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('191600','티케이씨','티케이씨','TKC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104480','티케이케미칼','티케이케미칼','TK CHEMICAL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('309900','티티씨디펜스','티티씨디펜스','TTC DEFENCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('081150','티플랙스','티플랙스','Tplex Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('130740','티피씨','티피씨글로벌','TPC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048770','티피씨메카트로닉스','TPC','TPC Mechatronics Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217880','틸론','틸론','TILON');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084730','팅크웨어','팅크웨어','Thinkware Systems Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046210','파나진','파나진','PANAGENE Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034230','파라다이스','파라다이스','Paradise Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033540','파라텍','파라텍','Paratech Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043200','파루','파루','PARU CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214450','파마리서치','파마리서치','PharmaResearch');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217950','파마리서치바이오','파마리서치바이오','PHARMA RESEARCH BIO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208340','파멥신','파멥신','PharmAbcine Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005690','파미셀보통주','파미셀','Pharmicell');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('177830','파버나인','파버나인','PAVONINE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037070','파세코','파세코','PASECO CO.LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('150900','파수','파수','FASOO Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037030','파워넷','파워넷','POWERNET TECHNOLOGIES CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047310','파워로직스','파워로직스','POWER LOGICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('266870','파워풀엑스','파워풀엑스','Power Fulx');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('170790','파이오링크','파이오링크','Piolink, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049120','파인디앤씨','파인디앤씨','FINE DNC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038950','파인디지털','파인디지털','FINEDIGITAL Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('106240','파인테크닉스','파인테크닉스','FINE TECHNIX CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('131760','파인텍','파인텍','FINETEK CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065690','파커스','파커스','PAKERS CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140860','파크시스템스','파크시스템스','Park Systems Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('091700','파트론','파트론','PARTRON CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038160','팍스넷','팍스넷','PAXNet, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('202960','판도라티비','판도라티비','PANDORA TV CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032800','판타지오','판타지오','Fantagio Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('318010','팜스빌','팜스빌','Pharmsville Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036580','팜스코보통주','팜스코','FARMSCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('027710','팜스토리','팜스토리','FarmStory CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004720','팜젠사이언스보통주','팜젠사이언스','PharmGen Science');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225590','패션플랫폼','패션플랫폼','Fashion Platform Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054300','팬스타엔터프라이즈','팬스타엔터프라이즈','Panstar Enterprise Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068050','팬엔터테인먼트','팬엔터테인먼트','PAN ENTERTAINMENT CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028670','팬오션보통주','팬오션','PanOcean');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222110','팬젠','팬젠','Pangen Biotech Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010820','퍼스텍보통주','퍼스텍','FIRSTEC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016800','퍼시스보통주','퍼시스','Fursys');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263750','펄어비스','펄어비스','PearlAbyss Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('251970','펌텍코리아','펌텍코리아','PUM-TECH KOREA CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001020','페이퍼코리아보통주','페이퍼코리아','PaperCorea Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('327610','펨토바이오메드','펨토바이오메드','Femtobiomed');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('087010','펩트론','펩트론','Peptron, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090080','평화산업 주식회사 보통주','평화산업','Pyung Hwa Industrial Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010770','평화홀딩스보통주','평화홀딩스','Pyung Hwa Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119500','포메탈','포메탈','FORMETAL CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016670','포비스티앤씨','포비스티앤씨','Pobis TNC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('056730','포스링크','포스링크','Fourth-Link Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058430','포스코강판보통주','포스코강판','POSCO COATED & COLOR STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005490','포스코보통주','POSCO','POSCO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('022100','포스코아이씨티','포스코 ICT','POSCO ICT COMPANY LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047050','포스코인터내셔널보통주','포스코인터내셔널','POSCO INTERNATIONAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003670','포스코케미칼보통주','포스코케미칼','POSCO CHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189690','포시에스','포시에스','FORCS Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('318020','포인트모바일','포인트모바일','POINT MOBILE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('256630','포인트엔지니어링','포인트엔지니어링','POINT ENGINEERING Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('141020','포티스','포티스','Fortis, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('354230','폭스소프트','폭스소프트','foxSoft');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041020','폴라리스오피스','폴라리스오피스','Polaris Office');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123010','폴라리스웍스','폴라리스웍스','POLARIS WORKS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007630','폴루스바이오팜보통주','폴루스바이오팜','POLUS BioPharm Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290720','푸드나무','푸드나무','FOODNAMOO, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005670','푸드웰','푸드웰','FOODWELL CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094940','푸른기술','푸른기술','PULOON TECHNOLOGY INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007330','푸른상호저축은행','푸른저축은행','PureunMutualSavingsBank');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017810','풀무원보통주','풀무원','PULMUONE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093380','풍강','풍강','PUNGKANG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023900','풍국주정공업','풍국주정','PungkukAlcholnd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103140','풍산 보통주','풍산','POONGSAN CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005810','풍산홀딩스보통주','풍산홀딩스','POONGSAN HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('195440','퓨전','퓨전','Fusion Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214270','퓨쳐스트림네트웍스','퓨쳐스트림네트웍스','Futurestream Networks Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('220100','퓨쳐켐','퓨쳐켐','FutureChem Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035200','프럼파스트','프럼파스트','PLUMB FAST CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('334970','프레스티지바이오로직스','프레스티지바이오로직스','Prestige Biologics Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950210','프레스티지바이오파마KDR','프레스티지바이오파마','PRESTIGE BIOPHARMA LIMITED KDR');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('203690','프로스테믹스','프로스테믹스','PROSTEMICS CO.LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('303360','프로테옴텍','프로테옴텍','PROTEOMETECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053610','프로텍','프로텍','PROTEC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('335810','프리시젼바이오','프리시젼바이오','Precision Biosensor Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053160','프리엠스','프리엠스','FreeMs Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('075130','플랜티넷','플랜티넷','PLANTYNET Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222670','플럼라인생명과학','플럼라인생명과학','Plumbline Life Sciences');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001500','현대차증권보통주','현대차증권','HYUNDAI MOTOR SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011760','현대코퍼레이션보통주','현대코퍼레이션','HYUNDAI CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('227840','현대코퍼레이션홀딩스보통주','현대코퍼레이션홀딩스','HYUNDAI CORPORATION HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126560','현대퓨처넷보통주','현대퓨처넷','Hyundai Futurenet');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001450','현대해상화재보험보통주','현대해상','Hyundai MARINE & FIRE INSURANCE CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057050','현대홈쇼핑보통주','현대홈쇼핑','HYUNDAI HOME SHOPPING NETWORK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092300','현우산업','현우산업','HYUNWOO INDUSTRIAL CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053660','현진소재','현진소재','HYUNJIN MATERIALS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011080','형지아이앤씨','형지I&C','HYUNGJI Innovation and Creative Company Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093240','형지엘리트보통주','형지엘리트','HYUNGJI ELITE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003010','혜인보통주','혜인','HaeinCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111110','호전실업보통주','호전실업','Hojeon');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008775','호텔신라1우선주','호텔신라우','HotelShilla(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008770','호텔신라보통주','호텔신라','HotelShilla');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060560','홈센타홀딩스','홈센타홀딩스','Home Center Holdings Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064240','홈캐스트','홈캐스트','homecast CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039610','화성밸브','화성밸브','HS VALVE CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002460','화성산업보통주','화성산업','HwasungIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('378850','화승알앤에이보통주','화승알앤에이','HWASEUNG R&A CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241590','화승엔터프라이즈보통주','화승엔터프라이즈','HWASEUNG ENTERPRISE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006060','화승인더스트리보통주','화승인더','HSIndustries');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013520','화승코퍼레이션보통주','화승코퍼레이션','Hwaseung Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010690','화신보통주','화신','Hwashin');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126640','화신정공','화신정공','HWASHIN PRECISION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('133820','화인베스틸보통주','화인베스틸','FINEBESTEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('061250','화일약품','화일약품','HWAIL PHARM. CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010660','화천기계보통주','화천기계','HWACHEON MACHINERY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000850','화천기공보통주','화천기공','HwacheonMachineTool');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016580','환인제약보통주','환인제약','WhaninPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032560','황금에스티보통주','황금에스티','Hwang Kum Steel & Technology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004800','효성보통주','효성','Hyosung');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094280','효성아이티엑스 보통주','효성ITX','HYOSUNG ITX Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097870','효성오앤비','효성오앤비','Hyosung ONB Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298040','효성중공업보통주','효성중공업','HYOSUNG HEAVY INDUSTRIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298050','효성첨단소재보통주','효성첨단소재','HYOSUNG ADVANCED MATERIALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298020','효성티앤씨보통주','효성티앤씨','HYOSUNG TNC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('298000','효성화학보통주','효성화학','HYOSUNG CHEMICAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093370','후성 보통주','후성','FOOSUNG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050090','휘닉스소재','휘닉스소재','PHOENIX MATERIALS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('081660','휠라홀딩스보통주','휠라홀딩스','Fila Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('290270','휴네시온','휴네시온','Hunesion co.,ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005870','휴니드테크놀러지스보통주','휴니드','HuneedTechnologies');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('284420','휴럼','휴럼','Hurum');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090710','휴림로봇','휴림로봇','Hyulim ROBOT Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('205470','휴마시스','휴마시스','HUMASIS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115160','휴맥스','휴맥스','HUMAX CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028080','휴맥스홀딩스','휴맥스홀딩스','Humax Holdings Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032860','휴먼엔','휴먼엔','Human N');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('200670','휴메딕스','휴메딕스','Humedix Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('212310','휴벡셀','휴벡셀','HUVEXEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079980','휴비스보통주','휴비스','HUVIS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065510','휴비츠','휴비츠','Huvitz Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005010','휴스틸보통주','휴스틸','HUSTEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('243070','휴온스','휴온스','Huons Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084110','휴온스글로벌','휴온스글로벌','Huons Global Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('145020','휴젤','휴젤','Hugel, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069260','휴켐스보통주','휴켐스','HuchemsFineChemicalCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024060','흥구석유','흥구석유','HeunguOil');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010240','흥국','흥국','HEUNGKUK METALTECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189980','흥국에프엔비','흥국에프엔비','HYUNGKUK F&B Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000545','흥국화재해상보험1우선주','흥국화재우','HeungkukFire&MarineIns(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000547','흥국화재해상보험2우선주(신형)','흥국화재2우B','HeungkukFire&MarineIns(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000540','흥국화재해상보험보통주','흥국화재','HeungkukFire&MarineInsurance');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003280','흥아해운보통주','흥아해운','HeungaShipping');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037440','희림종합건축사사무소','희림','Heerim Architects & Planners');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('238490','힘스','힘스','HIMS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('237820','플레이디','플레이디','PlayD Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023770','플레이위드','플레이위드','PLAYWITH Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('300080','플리토','플리토','FLITTO Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('150440','피노텍','피노텍','Finotek');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032580','피델릭스','피델릭스','Fidelix Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051380','피씨디렉트','피씨디렉트','PC Direct, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('241820','피씨엘','피씨엘','PCL. Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('178920','피아이첨단소재','PI첨단소재','PI Advanced Materials Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('237750','피앤씨테크','피앤씨테크','PNC Technologies Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024850','피에스엠씨','피에스엠씨','PSMC Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('319660','피에스케이','피에스케이','PSK INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('031980','피에스케이홀딩스','피에스케이홀딩스','PSK HOLDINGS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002230','피에스텍','피에스텍','PS Tec. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('057880','피에이치씨','피에이치씨','PHC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043370','피에이치에이','피에이치에이','PHA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('242350','피엔아이컴퍼니','피엔아이컴퍼니','PNIcompany');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('239890','피엔에이치테크','피엔에이치테크','P&H TECH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347740','피엔케이피부임상연구센타','피엔케이피부임상연구센타','P&K Skin Research Center Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('137400','피엔티','피엔티','People & Technology, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024940','피엔풍년','PN풍년','PNPOONGNYUN CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('128660','피제이메탈','피제이메탈','PJ METAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006140','피제이전자','피제이전자','PJ ELECTRONICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('304840','피플바이오','피플바이오','PeopleBio, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('062970','피피아이','피피아이','PPI. INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('087600','픽셀플러스','픽셀플러스','Pixelplus. Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033180','필룩스보통주','필룩스','Feelux Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161580','필옵틱스','필옵틱스','PHILOPTICS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('347770','핌스','핌스','PIMS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('163730','핑거','핑거','Finger Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('332710','하나금융14호기업인수목적','하나금융14호스팩','Hana Financial Fourteen Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('341160','하나금융15호기업인수목적','하나금융15호스팩','Hana Financial Fifteenth Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('343510','하나금융16호기업인수목적','하나금융16호스팩','Hana Financial Sixteen Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('363260','하나금융17호기업인수목적','하나금융17호스팩','Hana Financial Seventeen Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086790','하나금융지주보통주','하나금융지주','HanaFinancialGroupInc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299030','하나기술','하나기술','HANA TECHNOLOGY CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067310','하나마이크론','하나마이크론','Hana Micron Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('372290','하나머스트7호기업인수목적','하나머스트7호스팩','Hana Must Seven Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307160','하나머스트제6호기업인수목적','하나머스트제6호스팩','Hana Must Sixth Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('166090','하나머티리얼즈','하나머티리얼즈','Hana Materials Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293480','하나제약보통주','하나제약','Hana Pharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039130','하나투어보통주','하나투어','HANATOUR SERVICE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('136480','하림','하림','HARIM Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003380','하림지주','하림지주','Harim Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('172580','하이골드오션12호국제선박투자회사','하이골드12호','Hi Gold Ocean Kmarin No.12 Ship Investment Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('153360','하이골드오션3호선박투자회사','하이골드3호','Hi Gold Ocean No.3 Ship Investment Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('149980','하이로닉','하이로닉','Hironic Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013030','하이록코리아','하이록코리아','HY-LOK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('352820','하이브보통주','하이브','HYBE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126700','하이비젼시스템','하이비젼시스템','HyVISION SYSTEM.INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('106080','하이소닉','하이소닉','HYSONIC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071090','하이스틸 보통주','하이스틸','HISTEEL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340120','하이제5호기업인수목적','하이제5호스팩','HI Special Purpose Acquisition Company V');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('221840','하이즈항공','하이즈항공','HIZEAERO Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('106190','하이텍팜','하이텍팜','HIGH TECH PHARM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019490','하이트론씨스템즈보통주','하이트론','HitronSystems');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000087','하이트진로2우선주(신형)','하이트진로2우B','HITEJINRO(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000080','하이트진로보통주','하이트진로','HITEJINRO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000145','하이트진로홀딩스1우선주','하이트진로홀딩스우','HITEJINROHOLDINGS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000140','하이트진로홀딩스보통주','하이트진로홀딩스','HITEJINROHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066130','하츠','하츠','HAATZ Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004590','한국가구','한국가구','KoreaFurniture');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036460','한국가스공사보통주','한국가스공사','KoreaGasCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039340','한국경제티브이','한국경제TV','Korea Business News CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005430','한국공항보통주','한국공항','KoreaAirportService');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034950','한국기업평가','한국기업평가','Korea Ratings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010040','한국내화보통주','한국내화','KOREAREFRACTORIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025540','한국단자공업보통주','한국단자','KoreaElectricTerminal');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('222980','한국맥널티','한국맥널티','Mcnulty Korea Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('331660','한국미라클피플사','한국미라클피플사','KOREA MIRACLE PEOPLE COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('318000','한국바이오젠','한국바이오젠','KOREA BIO-GEN Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096300','한국베트남부동산개발특별자산1호투자회사','베트남개발1','Vietnam Real Estate Development Fund1');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('256840','한국비엔씨','한국비엔씨','BNC Korea Co, Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004090','한국석유공업보통주','한국석유','KOREA PETROLEUM INDUSTRIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025550','한국선재','한국선재','HANKUK STEEL WIRE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002200','한국수출포장공업보통주','한국수출포장','KoreaExportPackagingIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002960','한국쉘석유보통주','한국쉘석유','HankookShellOil');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017890','한국알콜산업','한국알콜','KoreaAlcoholIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000240','한국앤컴퍼니보통주','한국앤컴퍼니','HANKOOK & COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033270','한국유나이티드제약 보통주','유나이티드제약','Korea United Pharm. Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080720','한국유니온제약','한국유니온제약','UNION KOREA PHARM CO.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123890','한국자산신탁보통주','한국자산신탁','KAIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015760','한국전력공사보통주','한국전력','KoreaElectricPower');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052690','한국전력기술 보통주','한전기술','KEPCO Engineering & Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063570','한국전자금융','한국전자금융','NICE Total Cash Management Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041460','한국전자인증','한국전자인증','Korea Electronic Certification Authority Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006200','한국전자홀딩스보통주','한국전자홀딩스','KEC HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101680','한국정밀기계','한국정밀기계','HNK MACHINE TOOL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039740','한국정보공학','한국정보공학','Korea Information Engineering Services');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053300','한국정보인증','한국정보인증','KOREA INFORMATION CERTIFICATE AUTHORITY, INCORPORATED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025770','한국정보통신','한국정보통신','KoreaInformation&Communication');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('310870','한국제8호기업인수목적','한국제8호스팩','Korea No.8 Special Purpose Acquisition Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('368770','한국제9호기업인수목적','한국9호스팩','Korea No.9 Special Purpose Acquisition Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009540','한국조선해양보통주','한국조선해양','KOREA SHIPBUILDING & OFFSHORE ENGINEERING');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023350','한국종합기술보통주','한국종합기술','Korea Engineering Consultants Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025890','한국주강보통주','한국주강','HankookSteel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000970','한국주철관공업보통주','한국주철관','KoreaCastIronPipeInd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('104700','한국철강보통주','한국철강','KISCO Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017960','한국카본보통주','한국카본','HankukCarbon');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023760','한국캐피탈','한국캐피탈','Han Kook Capital Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054040','한국컴퓨터','한국컴퓨터','KOREA COMPUTER INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050540','한국코퍼레이션','한국코퍼레이션','HANKOOK Corporation Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161890','한국콜마보통주','한국콜마','KOLMAR KOREA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024720','한국콜마홀딩스보통주','한국콜마홀딩스','KOLMAR KOREA HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021650','한국큐빅','한국큐빅','CUBIC KOREA INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('161390','한국타이어앤테크놀로지보통주','한국타이어앤테크놀로지','HANKOOK TIRE & TECHNOLOGY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053590','한국테크놀로지','한국테크놀로지','HANKOOK Technology Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034830','한국토지신탁보통주','한국토지신탁','KOREIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('152550','한국투자ANKOR유전해외자원개발특별자산투자회사1호(지분증권)','한국ANKOR유전','KIM ANKOR Oilfield Overseas Resources Development Fund[1]');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('168490','한국투자Parallel유전해외자원개발특별자산투자회사1호','한국패러랠','KIM Parallel Oilfield Overseas Resources Development Fund[1]');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071055','한국투자금융지주1우선주','한국금융지주우','KOREA INVESTMENT HOLDINGS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071050','한국투자금융지주보통주','한국금융지주','KOREA INVESTMENT HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007280','한국특수형강보통주','한국특수형강','KOREASTEELSHAPES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032300','한국파마','한국파마','KOREA PHARMA Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037230','한국팩키지','한국팩키지','HANKUK PACKAGE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010100','한국프랜지공업보통주','한국프랜지','KoreaFlange');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047810','한국항공우주산업보통주','한국항공우주','KOREA AEROSPACE INDUSTRIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123690','한국화장품보통주','한국화장품','HANKOOKCOSMETICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003350','한국화장품제조보통주','한국화장품제조','HankookCosmeticsManufacturing');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030520','한글과컴퓨터','한글과컴퓨터','HANCOM INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052600','한네트','한네트','HANNET CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011500','한농화성보통주','한농화성','HANNONGCHEMICALSINC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002390','한독보통주','한독','HANDOK Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('256150','한독크린텍','한독크린텍','Handok Clean Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014790','한라보통주','한라','Halla Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('092460','한라아이엠에스','한라IMS','HANLA IMS Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060980','한라홀딩스보통주','한라홀딩스','Halla Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053690','한미글로벌건축사사무소보통주','한미글로벌','HanmiGlobal Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042700','한미반도체보통주','한미반도체','HANMISemiconductorCO.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008930','한미사이언스보통주','한미사이언스','Hanmi Science');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('128940','한미약품보통주','한미약품','HanmiPharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047080','한빛소프트','한빛소프트','HANBIT SOFT Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009240','한샘보통주','한샘','HANSSEM CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020000','한섬보통주','한섬','HandsomeCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003680','한성기업보통주','한성기업','HansungEnterprise');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105630','한세실업보통주','한세실업','HANSAE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069640','한세엠케이보통주','한세엠케이','HANSAEMK');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016450','한세예스24홀딩스보통주','한세예스24홀딩스','HansaeYes24Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010420','한솔PNS보통주','한솔PNS','HANSOLPNS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009180','한솔로지스틱스보통주','한솔로지스틱스','Hansol Logistics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('070590','한솔인티큐브','한솔인티큐브','Hansol Inticube Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('213500','한솔제지보통주','한솔제지','Hansol Paper Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014680','한솔케미칼보통주','한솔케미칼','HansolChemical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004710','한솔테크닉스보통주','한솔테크닉스','HansolTechnics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004150','한솔홀딩스보통주','한솔홀딩스','Hansol Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025750','한솔홈데코보통주','한솔홈데코','HansolHomeDeco');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226440','한송네오텍','한송네오텍','HANSONGNEOTECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042520','한스바이오메드','한스바이오메드','HANS BIOMED CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004960','한신공영보통주','한신공영','HanshinConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011700','한신기계공업보통주','한신기계','HanshinMachinery');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078350','한양디지텍','한양디지텍','HANYANG DIGITECH CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045100','한양이엔지','한양이엔지','HANYANG ENG CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001755','한양증권1우선주','한양증권우','HanyangSecurities(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001750','한양증권보통주','한양증권','HanyangSecurities');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018880','한온시스템보통주','한온시스템','Hanon Systems');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009420','한올바이오파마보통주','한올바이오파마','HANALL BIOPHARMA CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014130','한익스프레스보통주','한익스프레스','HanExpress');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('046110','한일네트웍스','한일네트웍스','HANIL NETWORKS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024740','한일단조공업','한일단조','HanilForgingIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005860','한일사료','한일사료','HANIL FEED Co.Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('300720','한일시멘트보통주','한일시멘트','HANILCEMENT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123840','한일진공','한일진공','HANIL VACUUM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002220','한일철강보통주','한일철강','HanilIron&Steel');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006390','한일현대시멘트보통주','한일현대시멘트','HANIL HYUNDAI CEMENT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003300','한일홀딩스보통주','한일홀딩스','HANILHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007770','한일화학공업','한일화학','HANIL CHEMICAL IND. CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051600','한전KPS 보통주','한전KPS','KEPCO Plant Service & Engineering');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('130660','한전산업개발보통주','한전산업','Korea Electric Power Industrial Development');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('107640','한중엔시에스','한중엔시에스','HanJung Natural Connectivity System.co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002320','한진보통주','한진','HanjinTransportation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('097230','한진중공업 보통주','한진중공업','HANJIN HEAVY INDUSTRIES & CONSTRUCTION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003480','한진중공업홀딩스보통주','한진중공업홀딩스','HanjinHeavyInd&ConstHoldings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('18064K','한진칼1우선주','한진칼우','HANJINKAL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('180640','한진칼보통주','한진칼','HANJINKAL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005110','한창보통주','한창','Hanchang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079170','한창산업','한창산업','Hanchang Industry Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009460','한창제지보통주','한창제지','HanchangPaper');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086960','한컴MDS','한컴MDS','Hancom MDS Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054920','한컴위드','한컴위드','Hancom WITH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002680','한탑','한탑','Hantop Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066110','한프','한프','HANP INC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000885','한화1우선주','한화우','Hanwha(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('00088K','한화3우선주(신형)','한화3우B','HANWHA(3PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000880','한화보통주','한화','Hanwha');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088350','한화생명보험보통주','한화생명','HANWHA LIFE INSURANCE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000370','한화손해보험보통주','한화손해보험','Hanwha General Insurance Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009835','한화솔루션1우선주','한화솔루션우','HANWHA SOLUTIONS(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009830','한화솔루션보통주','한화솔루션','HANWHA SOLUTIONS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272210','한화시스템보통주','한화시스템','HANWHA SYSTEMS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317320','한화에스비아이기업인수목적','한화에스비아이스팩','Hanwha Sbi Special Purpose Acquisition Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012450','한화에어로스페이스보통주','한화에어로스페이스','HANWHA AEROSPACE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003535','한화투자증권1우선주','한화투자증권우','HANWHA INVESTMENT & SECURITIES(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003530','한화투자증권보통주','한화투자증권','HANWHA INVESTMENT & SECURITIES');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('340440','한화플러스제1호기업인수목적','한화플러스제1호스팩','Hanwha Plus No 1 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('195870','해성디에스보통주','해성디에스','HAESUNG DS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034810','해성산업','해성산업','Haesung Industrial Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('076610','해성옵틱스','해성옵틱스','Haesung Optics Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101530','해태제과식품주식회사','해태제과식품','Haitai Confectionery and Foods Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('220180','핸디소프트','핸디소프트','HANDYSOFT, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('143210','핸즈코퍼레이션보통주','핸즈코퍼레이션','HANDS CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008800','행남사','행남사','HAENGNAM INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900270','헝셩그룹유한회사','헝셩그룹','HENG SHENG GROUP COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084990','헬릭스미스','헬릭스미스','Helixmith Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000725','현대건설1우선주','현대건설우','HyundaiEngineering&Construction(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267270','현대건설기계보통주','현대건설기계','HYUNDAI CE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000720','현대건설보통주','현대건설','HyundaiEngineering&Construction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('170030','현대공업','현대공업','HYUNDAI INDUSTRIAL CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005440','현대그린푸드보통주','현대그린푸드','HYUNDAIGREENFOOD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086280','현대글로비스보통주','현대글로비스','HYUNDAIGLOVIS Co.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064350','현대로템보통주','현대로템','HYUNDAI ROTEM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079430','현대리바트보통주','현대리바트','HYUNDAILIVART');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('012330','현대모비스보통주','현대모비스','HyundaiMobis');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('319400','현대무벡스','현대무벡스','HYUNDAI MOVEX');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010620','현대미포조선보통주','현대미포조선','HyundaiMipoDockyard');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052260','현대바이오랜드','현대바이오랜드','HYUNDAI BIOLAND Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048410','현대바이오사이언스','현대바이오','HYUNDAI BIOSCIENCE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('069960','현대백화점보통주','현대백화점','HYUNDAIDEPARTMENTSTORECO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004565','현대비앤지스틸1우선주','현대비앤지스틸우','HYUNDAI BNG STEEL(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004560','현대비앤지스틸보통주','현대비앤지스틸','HYUNDAI BNG STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016790','현대사료','현대사료','HYUNDAI FEED Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004310','현대약품보통주','현대약품','Hyundai pharm');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322000','현대에너지솔루션보통주','현대에너지솔루션','HYUNDAI ENERGY SOLUTIONS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041440','현대에버다임','현대에버다임','HYUNDAI EVERDIGM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039010','현대에이치티','현대에이치티','HYUNDAI HT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017800','현대엘리베이터보통주','현대엘리베이','HyundaiElevator');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307950','현대오토에버보통주','현대오토에버','HyundaiAutoever');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011210','현대위아보통주','현대위아','HYUNDAI WIA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090850','현대이지웰','현대이지웰','HYUNDAI EZWEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267260','현대일렉트릭보통주','현대일렉트릭','HYUNDAI ELECTRIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005385','현대자동차1우선주','현대차우','HyundaiMotor(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005387','현대자동차2우선주(신형)','현대차2우B','HyundaiMotor(2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005389','현대자동차3우선주(신형)','현대차3우B','HyundaiMotor(3PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('005380','현대자동차보통주','현대차','HyundaiMotor');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004020','현대제철 보통주','현대제철','HYUNDAI STEEL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('267250','현대중공업지주보통주','현대중공업지주','HYUNDAI HEAVY INDUSTRIES HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096040','이트론','이트론','E-TRON CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('134060','이퓨쳐','이퓨쳐','e-future.Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001840','이화공영','이화공영','EehwaConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000760','이화산업보통주','이화산업','RIFA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024810','이화전기공업','이화전기','EHWA TECHNOLOGIES INFORMATION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('014990','인디에프보통주','인디에프','In the F');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041830','인바디','인바디','InBody Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('352940','인바이오','인바이오','ENBIOCO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101140','인바이오젠보통주','인바이오젠','INBIOGEN');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('216400','인바이츠바이오코아','인바이츠바이오코아','INVITES BIOCORE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079950','인베니아','인베니아','INVENIA Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('277410','인산가','인산가','INSAN Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060150','인선이엔티','인선이엔티','INSUN ENVIRONMENTAL NEW TECHNOLOGY CO.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033230','인성정보','인성정보','INSUNG INFORMATION CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006490','인스코비보통주','인스코비','Inscobee');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('037330','인지디스플레이','인지디스플레','INZI DISPLAY COMPANY LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023800','인지컨트롤스보통주','인지컨트롤스','InziControls');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034590','인천도시가스 보통주','인천도시가스','INCHEON CITY GAS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('211050','인카금융서비스','인카금융서비스','INCAR FINANCIAL SERVICE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083640','인콘','인콘','INCON Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('216050','인크로스','인크로스','Incross Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049070','인탑스','인탑스','INTOPS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119610','인터로조','인터로조','INTEROJO CO. LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('017250','인터엠','인터엠','IntermCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('129260','인터지스보통주','인터지스','INTERGIS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('240340','인터코스','인터코스','Interkos');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035080','인터파크','인터파크','Interpark Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051370','인터플렉스','인터플렉스','INTERFLEX CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064290','인텍플러스','인텍플러스','INTEKPLUS CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189300','인텔리안테크놀로지스','인텔리안테크','INTELLIAN TECHNOLOGIES Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('150840','인트로메딕','인트로메딕','IntroMedic Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('048530','인트론바이오테크놀로지','인트론바이오','iNtRON Biotechnology, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023810','인팩보통주','인팩','INFAC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('175140','인포마크','인포마크','INFOMARK Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115310','인포바인','인포바인','INFOvine co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039290','인포뱅크','인포뱅크','InfoBank Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071200','인피니트헬스케어','인피니트헬스케어','INFINITT Healthcare');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('101930','인화정공','인화정공','Inhwa Precision Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('249420','일동제약보통주','일동제약','ILDONG PHARM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000230','일동홀딩스보통주','일동홀딩스','ILDONG HOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013360','일성건설보통주','일성건설','IlsungConstruction');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003120','일성신약보통주','일성신약','IlsungPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('068330','일신바이오베이스','일신바이오','ilShinbiobase Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003200','일신방직보통주','일신방직','IlshinSpinning');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007110','일신석재보통주','일신석재','IlshinStone');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058450','일야','일야','ILYA CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007575','일양약품1우선주','일양약품우','IlyangPharmaceutical(1P)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007570','일양약품보통주','일양약품','IlyangPharmaceutical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('008500','일정실업보통주','일정실업','IljeongIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('019540','일지테크','일지테크','IljiTechnology');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('081000','일진다이아몬드 보통주','일진다이아','ILJIN DIAMOND CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020760','일진디스플레이보통주','일진디스플','ILJIN DISPLAY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('020150','일진머티리얼즈보통주','일진머티리얼즈','ILJIN MATERIALS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('103590','일진전기 보통주','일진전기','ILJIN ELECTRIC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094820','일진파워','일진파워','ILJIN POWER CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('015860','일진홀딩스보통주','일진홀딩스','ILJINHOLDINGS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226320','잇츠한불보통주','잇츠한불','ITSHANBUL');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950140','잉글우드랩','잉글우드랩','Englewood Lab, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049550','잉크테크','잉크테크','INKTEC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('254120','자비스','자비스','XAVIS CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('221610','자안바이오','자안바이오','JAANHBIO, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('219550','자안코스메틱','자안코스메틱','JAANH COSMETICS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043910','자연과 환경','자연과환경','Nature and Environment Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('234920','자이글','자이글','Zaigle Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('289220','자이언트스텝','자이언트스텝','GIANTSTEP Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317400','자이에스앤디보통주','자이에스앤디','XI S&D');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033240','자화전자보통주','자화전자','JahwaElectronics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('174880','장원테크','장원테크','JangWonTech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('049630','재영솔루텍','재영솔루텍','JAEYOUNG SOLUTEC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000950','전방보통주','전방','Chonbang');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120780','전우정밀','전우정밀','JEONWOO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('110020','전진바이오팜','전진바이오팜','JEONJINBIO CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208140','정다운','정다운','JUNGDAWN Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('022220','정산애강','정산애강','JEONGSAN AIKANG CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('040420','정상제이엘에스','정상제이엘에스','JLS CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('045510','정원엔시스','정원엔시스','ZUNGWON EN-SYS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065620','제낙스','제낙스','JENAX Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('217190','제너셈','제너셈','Genesem Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('095700','제넥신','제넥신','Genexine, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072520','제넨바이오','제넨바이오','GenNBio Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122310','제노레이','제노레이','GENORAY Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('361390','제노코','제노코','Genohco, Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066830','제노텍','제노텍','GENOTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('225220','제놀루션','제놀루션','GENOLUTION INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('123330','제닉','제닉','Genic Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('159580','제로투세븐','제로투세븐','Zero to Seven Inc');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('147830','제룡산업','제룡산업','CHERYONG INDUSTRIAL CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033100','제룡전기','제룡전기','CHERYONG ELECTRIC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('079370','제우스','제우스','ZEUS CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067290','제이더블유신약','JW신약','JW SHINYAK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('054950','제이브이엠','제이브이엠','JVM CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('090470','제이스텍','제이스텍','JASTECH, Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('287410','제이시스메디칼','제이시스메디칼','Jeisys Medical');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('137950','제이씨케미칼','제이씨케미칼','JC Chemical Corporation, LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033320','제이씨현시스템','제이씨현시스템','JCH Systems, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('348950','제이알글로벌리츠보통주','제이알글로벌리츠','JR GLOBAL REIT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204270','제이앤티씨','제이앤티씨','JNTC CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('194370','제이에스코퍼레이션보통주','제이에스코퍼레이션','JS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('026040','제이에스티나','제이에스티나','J.ESTINA Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('126880','제이엔케이히터','제이엔케이히터','JNK HEATERS Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('322510','제이엘케이','제이엘케이','JLK, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033050','제이엠아이','제이엠아이','JEONGMOON INFORMATION CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094970','제이엠티','제이엠티','JMT CO.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035900','제이와이피엔터테인먼트','JYP Ent.','JYP Entertainment Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058420','제이웨이','제이웨이','J way Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025620','제이준코스메틱보통주','제이준코스메틱','Jayjun Cosmetic');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036420','제이콘텐트리보통주','제이콘텐트리','Jcontentree corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089790','제이티','제이티','JT Corporation.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('950170','제이티씨','JTC','JTC Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('030000','제일기획보통주','제일기획','CheilWorldwide');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052670','제일바이오','제일바이오','CHEIL BIO CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('271980','제일약품보통주','제일약품','JEIL PHARM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001560','제일연마공업보통주','제일연마','CHEILGRINDINGWHEELIND.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('199820','제일전기공업','제일전기공업','CHEIL ELECTRIC CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023440','제일제강공업','제일제강','JeilSteelMfg');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('038010','제일테크노스','제일테크노스','JEIL TECHNOS CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002620','제일파마홀딩스보통주','제일파마홀딩스','JEIL PHARMA HOLDINGS INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('080220','제주반도체','제주반도체','Jeju Semiconductor Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006220','제주은행보통주','제주은행','Jeju Bank');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089590','제주항공보통주','제주항공','JEJUAIR, CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('216080','제테마','제테마','JETEMA Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('229000','젠큐릭스','젠큐릭스','Gencurix Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('082270','젬백스&카엘','젬백스','GemVax & KAEL Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('064800','젬백스링크','젬백스링크','Gemvaxlink Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('041590','젬백스지오','젬백스지오','Gemvaxzio Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044060','조광아이엘아이','조광ILI','JOKWANG I.L.I CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004910','조광페인트보통주','조광페인트','ChokwangPaint');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004700','조광피혁보통주','조광피혁','ChokwangLeather');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001550','조비보통주','조비','Chobi');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000480','조선내화보통주','조선내화','ChosunRefractories');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('120030','조선선재 보통주','조선선재','CHOSUN WELDING POHANG Co., Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('034940','조아제약','조아제약','ChoA Pharmaceutical Co., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('067000','조이시티','조이시티','JoyCity Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018470','조일알미늄보통주','조일알미늄','CHOILALUMINUM');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002600','조흥보통주','조흥','CHOHEUNG CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('063160','종근당바이오보통주','종근당바이오','CKDBioCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('185750','종근당보통주','종근당','CHONGKUNDANG');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001630','종근당홀딩스보통주','종근당홀딩스','CHONGKUNDANG HOLDINGS CORP.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033340','좋은사람들','좋은사람들','GOOD PEOPLE CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036930','주성엔지니어링','주성엔지니어링','JUSUNG ENGINEERING Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('185190','주식회사 수프로','수프로','Suppro Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('158300','주식회사 에스에이티','에스에이티이엔지','Solution Advanced Technology Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086460','주식회사 에스엔피제네틱스','에스엔피제네틱스','SNP Genetics');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226400','주식회사 오스테오닉','오스테오닉','OSTEONIC Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('070960','주식회사 용평리조트','용평리조트','YONG PYONG RESORT CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('084440','주식회사 유비온','유비온','UBION CO.LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('187420','주식회사 제노포커스','제노포커스','GenoFocus, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('189350','주식회사 코셋','코셋','Coset Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('023450','주식회사동남합성','동남합성','DONGNAMCHEMICALCO,.LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002380','주식회사케이씨씨','KCC','KCC Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044380','주연테크 보통주','주연테크','JOOYONTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('239340','줌인터넷','줌인터넷','ZUMinternet Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024110','중소기업은행보통주','기업은행','INDUSTRIALBANKOFKOREA');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('072020','중앙백신연구소','중앙백신','CHOONG ANG VACCINE LABORATORY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000440','중앙에너비스','중앙에너비스','Joong Ang Enervis Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('228760','지노믹트리','지노믹트리','Genomictree Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('314130','지놈앤컴퍼니','지놈앤컴퍼니','Genome&Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013890','지누스보통주','지누스','ZINUS');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043610','지니뮤직','지니뮤직','GENIE MUSIC CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263860','지니언스','지니언스','GENIANS, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('303030','지니틱스','지니틱스','Zinitix Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036180','지더블유바이텍','지더블유바이텍','GW Vitek CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('208350','지란지교시큐리티','지란지교시큐리티','Jiransecurity Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('114570','지스마트글로벌','지스마트글로벌','G-SMATT GLOBAL Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('299480','지앤이헬스케어','지앤이헬스케어','G&E Healthcare');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051160','지어소프트','지어소프트','GAEASOFT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001250','지에스글로벌보통주','GS글로벌','GS Global Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007070','지에스리테일보통주','GS리테일','GS Retail');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('053050','지에스이','지에스이','GSE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('028150','지에스홈쇼핑','GS홈쇼핑','GS Home Shopping Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('130500','지에이치신소재','GH신소재','GH Advanced Materials Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119850','지엔씨에너지','지엔씨에너지','GnCenergy Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('270520','지엔원에너지','지엔원에너지','G Enone Energy Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('065060','지엔코','지엔코','Great New wave Coming Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('204840','지엘팜텍','지엘팜텍','GL Pharm Tech Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013870','지엠비코리아보통주','지엠비코리아','GMB Korea');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071320','지역난방공사보통주','지역난방공사','Korea District Heating');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('135160','지오씨','지오씨','GOC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('111820','지와이커머스','지와이커머스','GY COMMERCE Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010580','지코보통주','지코','JICO CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035000','지투알보통주','지투알','GⅡR Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115450','지트리비앤티','지트리비앤티','G-treeBNT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('219750','지티지웰니스','지티지웰니스','GTG Wellness Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('088790','진도 보통주','진도','JINDO.CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('018120','진로발효','진로발효','JinroDistillers');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109820','진매트릭스','진매트릭스','GENEMATRIX INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('086060','진바이오텍','진바이오텍','Gene Bio Tech Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036890','진성티이씨','진성티이씨','JINSUNG T.E.C.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('003780','진양산업보통주','진양산업','Chinyang Industry');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('007370','진양제약','진양제약','JIN YANG PHARMACETICAL. CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('010640','진양폴리우레탄보통주','진양폴리','ChinYangPolyurethane');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('100250','진양홀딩스보통주','진양홀딩스','Chinyang Holdings Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('051630','진양화학보통주','진양화학','ChinYangChemicalCorporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272450','진에어보통주','진에어','JIN AIR');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('011000','진원생명과학보통주','진원생명과학','GeneOneLifeScience');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('250030','진코스텍','진코스텍','JINCOSTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002785','진흥기업1우선주(신형)','진흥기업우B','CHINHUNG INT(1PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002787','진흥기업2우선주(신형)','진흥기업2우B','CHINHUNG INT (2PB)');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('002780','진흥기업보통주','진흥기업','ChinhungInternational');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('233990','질경이','질경이','JILGYUNGYI');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('085660','차바이오텍','차바이오텍','Chabiotech Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900250','차이나크리스탈신소재홀딩스','크리스탈신소재','China Crystal New Material Holdings Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009310','참엔지니어링보통주','참엔지니어링','Charm Engineering');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094850','참좋은여행','참좋은여행','Very Good Tour Co.,Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('004650','창해에탄올','창해에탄올','Changhae Ethanol Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('311690','천랩','천랩','ChunLab,Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('278280','천보','천보','Chunbo Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('000650','천일고속보통주','천일고속','ChunilExpress');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('140290','청광건설 주식회사','청광건설','CHUNGKWANG CONSTRUCTION CO., LtD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('096240','청담러닝','청담러닝','Chungdahm Learning, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('013720','청보산업','청보산업','CheongboIndustrial');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('066360','체리부로','체리부로','Cherrybro Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('033250','체시스보통주','체시스','CHASYS Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('047820','초록뱀미디어','초록뱀미디어','CHOROKBAEM MEDIA CO.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052300','초록뱀컴퍼니','초록뱀컴퍼니','CHOROKBAEM COMPANY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('094360','칩스앤미디어','칩스앤미디어','Chips&Media, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('016920','카스','카스','Cas');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('284620','카이노스메드','카이노스메드','KAINOS MEDICINE, INC.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('293490','카카오게임즈','카카오게임즈','Kakao Games Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('035720','카카오보통주','카카오','Kakao');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('042000','카페24','카페24','Cafe24 Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('006380','카프로보통주','카프로','CAPRO');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317530','캐리소프트','캐리소프트','CARRIESOFT Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('071850','캐스텍코리아','캐스텍코리아','CASTEC KOREA CO.,LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('180400','캔서롭','캔서롭','Cancer Rop Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('050110','캠시스','캠시스','CammSys Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('109070','컨버즈보통주','컨버즈','CONBUZZ');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900310','컬러레이홀딩스','컬러레이','Coloray International Investment Co., Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('078340','컴투스','컴투스','Com2uS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('307930','컴퍼니케이파트너스','컴퍼니케이','COMPANY K PARTNERS LIMITED');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('263700','케어랩스','케어랩스','Carelabs Co.,Ltd');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('327970','케어룸의료산업','케어룸의료산업','KAREROOM MEDICAL EQUIPMENT');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('214370','케어젠','케어젠','Caregen Co.,LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('221980','케이디켐','케이디켐','KDCHEM CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('900280','케이만금세기차륜집단유한공사','골든센츄리','Cayman Golden Century Wheel Group Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('043290','케이맥','케이맥','Korea Materials & Analysis Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('001620','케이비아이동국실업보통주','케이비아이동국실업','KBI DONGKOOK IND');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('024840','케이비아이메탈','KBI메탈','KBI METAL CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('317030','케이비제17호기업인수목적','케이비17호스팩','KB No.17 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('323940','케이비제18호기업인수목적','케이비제18호스팩','KB No.18 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('330990','케이비제19호기업인수목적','케이비제19호스팩','KB No.19 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('342550','케이비제20호기업인수목적','케이비제20호스팩','KB No.20 Special Purpose Acquisition Company');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('192250','케이사인','케이사인','KSIGN CO., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('009440','케이씨그린홀딩스보통주','KC그린홀딩스','KC Green Holdings');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('029460','케이씨보통주','케이씨','KC');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('112190','케이씨산업','KC산업','KC INDUSTRY');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('021320','케이씨씨건설','KCC건설','KCC ENGINEERING & CONSTRUCTION CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('344820','케이씨씨글라스보통주','케이씨씨글라스','KCC GLASS Corporation');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('036670','케이씨아이','KCI','KCI Limited');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('115500','케이씨에스','케이씨에스','Korea Computer & Systems Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('119650','케이씨코트렐보통주','KC코트렐','KC Cottrell');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('281820','케이씨텍보통주','케이씨텍','KCTECH');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('089150','케이씨티','케이씨티','Korea Computer Terminal Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('025880','케이씨피드','케이씨피드','KC FEED CO., LTD.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('093320','케이아이엔엑스','케이아이엔엑스','KINX, Inc.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('044450','케이에스에스 해운 보통주','KSS해운','KSS LINE');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('073010','케이에스피','케이에스피','KSP CO., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('060720','케이에이치바텍','KH바텍','KH VATEC Co., LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('226360','케이에이치이엔티','KH E&T','KH E&T');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('105330','케이엔더블유','케이엔더블유','KNW Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('058400','케이엔엔','KNN','KOREA NEW NETWORK CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('272110','케이엔제이','케이엔제이','KnJ Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('039420','케이엘넷','케이엘넷','KL-Net Corp.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('083550','케이엠','케이엠','KM CORPORATION');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('032500','케이엠더블유','케이엠더블유','KMW CO. LTD');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('122450','케이엠에이치','KMH','KMH Co., Ltd.');
Insert into KHY.STOCK (CODE,LONG_NAME,SHORT_NAME,ENG_NAME) values ('052900','케이엠에이치하이텍','KMH하이텍','KMH HITECH CO.,LTD');
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
Insert into KHY.BBSVIEW (NUM,"bbs_id","author_id","writedate","content","hashtag","likecount","commentcount","user_like") values (1,108,'admin',to_date('2021/05/14-21:44:36','YYYY/MM/DD-HH24:MI:SS'),'글쓰기 테스트1 수정테스트1','해시태그1#해시태그2#해시태그3',1,2,0);
REM INSERTING into KHY.BBS_HASH_VIEW
SET DEFINE OFF;
Insert into KHY.BBS_HASH_VIEW ("id","user_id","writedate","content","hash_title") values (108,'admin',to_date('2021/05/14-21:44:36','YYYY/MM/DD-HH24:MI:SS'),'글쓰기 테스트1 수정테스트1','해시태그1#해시태그2#해시태그3');
REM INSERTING into KHY.IMAGEVIEW
SET DEFINE OFF;
Insert into KHY.IMAGEVIEW (ID,"image") values (108,'0');
REM INSERTING into KHY.VHASHTAG
SET DEFINE OFF;
Insert into KHY.VHASHTAG (ID,HASHTAG) values (108,'해시태그1#해시태그2#해시태그3');
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
    BEGIN  -- 모두삭제후 
    DELETE FROM bbs_hash WHERE bbs_id=v_bbs_id;
    DELETE FROM IMAGE WHERE bbs_id=v_bbs_id;
    END;

    BEGIN
        FOR i IN 1..v_hash_count LOOP
            INSERT INTO bbs_hash --다시 INSERT
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
