--------------------------------------------------------
--  文件已创建 - 星期二-二月-02-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DICTIONARY_BASE
--------------------------------------------------------

  CREATE TABLE "TEST"."DICTIONARY_BASE" 
   (	"ID" NUMBER, 
	"CODE_TYPE" VARCHAR2(255 BYTE), 
	"TYPE_DESC" VARCHAR2(255 BYTE), 
	"KEY" VARCHAR2(255 BYTE), 
	"VALUE" VARCHAR2(255 BYTE), 
	"ISVALID" NUMBER(*,0), 
	"ORDERID" NUMBER(*,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "TEST"."DICTIONARY_BASE"."ID" IS '主键';
 
   COMMENT ON COLUMN "TEST"."DICTIONARY_BASE"."CODE_TYPE" IS '类型码';
 
   COMMENT ON COLUMN "TEST"."DICTIONARY_BASE"."TYPE_DESC" IS '类型码描述';
 
   COMMENT ON COLUMN "TEST"."DICTIONARY_BASE"."KEY" IS '数据键';
 
   COMMENT ON COLUMN "TEST"."DICTIONARY_BASE"."VALUE" IS '数据值';
 
   COMMENT ON COLUMN "TEST"."DICTIONARY_BASE"."ISVALID" IS '是否有效或可见：0否，1是';
 
   COMMENT ON COLUMN "TEST"."DICTIONARY_BASE"."ORDERID" IS '排序';
REM INSERTING into TEST.DICTIONARY_BASE
SET DEFINE OFF;
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (1,'SYS_TITLE','系统','SYS_TITLE','机务检修信息管理系统',1,1);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (2,'ROLE_FIELD','角色','ROLE_NAME_GZ ','工长',1,2);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (3,'ROLE_FIELD','角色','ROLE_NAME_GR','工人',1,3);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (4,'ROLE_FIELD','角色','ROLE_NAME_JSY','车间技术',1,4);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (5,'ROLE_FIELD','角色','ROLE_NAME_ZJY','车间质检',1,5);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (6,'ROLE_FIELD','角色','ROLE_NAME_JCGZ','交车工长',1,6);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (7,'ROLE_FIELD','角色','OLE_NAME_YSY','验收员',1,7);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (8,'ROLE_FIELD','角色','ROLE_NAME_ZR','主任',1,8);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (9,'ROLE_FIELD','角色','ROLE_NAME_DZ','段长',1,9);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (10,'SYS_PROTEAM','班组','PROTEAM_BX_BZ','0',1,10);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (11,'SYS_PROTEAM','班组','PROTEAM_XFX_BZ','1',1,11);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (12,'SYS_PROTEAM','班组','PROTEAM_ZX_BZ','2',1,12);
Insert into TEST.DICTIONARY_BASE (ID,CODE_TYPE,TYPE_DESC,KEY,VALUE,ISVALID,ORDERID) values (13,'SYS_PROTEAM','班组','PROTEAM_XFX_ZX_BZ','3',1,13);
--------------------------------------------------------
--  DDL for Index DICTIONARY_BASE_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."DICTIONARY_BASE_PK" ON "TEST"."DICTIONARY_BASE" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table DICTIONARY_BASE
--------------------------------------------------------

  ALTER TABLE "TEST"."DICTIONARY_BASE" ADD CONSTRAINT "DICTIONARY_BASE_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "TEST"."DICTIONARY_BASE" MODIFY ("ID" NOT NULL ENABLE);

