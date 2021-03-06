--------------------------------------------------------
--  文件已创建 - 星期二-二月-02-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table JC_INFORMATION
--------------------------------------------------------

  CREATE TABLE "TEST"."JC_INFORMATION" 
   (	"ID" NUMBER, 
	"JC_NUMBER" VARCHAR2(255 BYTE), 
	"JC_TYPE_ID" NUMBER, 
	"AREAID" VARCHAR2(255 BYTE), 
	"USE_AREAID" VARCHAR2(255 BYTE), 
	"JC_STATUS" NUMBER, 
	"JC_MADE_TIME" DATE DEFAULT SYSDATE, 
	"JC_ATTACH_TIME" DATE, 
	"JC_MAKE_UNIT" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into TEST.JC_INFORMATION
SET DEFINE OFF;
Insert into TEST.JC_INFORMATION (ID,JC_NUMBER,JC_TYPE_ID,AREAID,USE_AREAID,JC_STATUS,JC_MADE_TIME,JC_ATTACH_TIME,JC_MAKE_UNIT) values (1,'1001',1,'2018','2018',1,to_date('22-9月 -15','DD-MON-RR'),null,'测试');
Insert into TEST.JC_INFORMATION (ID,JC_NUMBER,JC_TYPE_ID,AREAID,USE_AREAID,JC_STATUS,JC_MADE_TIME,JC_ATTACH_TIME,JC_MAKE_UNIT) values (2,'1002',2,'2018','2018',1,to_date('22-9月 -15','DD-MON-RR'),null,'测试');
Insert into TEST.JC_INFORMATION (ID,JC_NUMBER,JC_TYPE_ID,AREAID,USE_AREAID,JC_STATUS,JC_MADE_TIME,JC_ATTACH_TIME,JC_MAKE_UNIT) values (3,'1003',3,'2018','2018',1,to_date('22-9月 -15','DD-MON-RR'),null,'测试');
Insert into TEST.JC_INFORMATION (ID,JC_NUMBER,JC_TYPE_ID,AREAID,USE_AREAID,JC_STATUS,JC_MADE_TIME,JC_ATTACH_TIME,JC_MAKE_UNIT) values (4,'1004',1,'2018','2018',1,to_date('22-9月 -15','DD-MON-RR'),null,'测试');
--------------------------------------------------------
--  DDL for Index SYS_C0012179
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C0012179" ON "TEST"."JC_INFORMATION" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012180
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C0012180" ON "TEST"."JC_INFORMATION" ("JC_NUMBER") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table JC_INFORMATION
--------------------------------------------------------

  ALTER TABLE "TEST"."JC_INFORMATION" MODIFY ("JC_NUMBER" NOT NULL ENABLE);
 
  ALTER TABLE "TEST"."JC_INFORMATION" MODIFY ("JC_STATUS" NOT NULL ENABLE);
 
  ALTER TABLE "TEST"."JC_INFORMATION" ADD CHECK (JC_STATUS IN (0,1)) ENABLE;
 
  ALTER TABLE "TEST"."JC_INFORMATION" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "TEST"."JC_INFORMATION" ADD UNIQUE ("JC_NUMBER")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JC_INFORMATION
--------------------------------------------------------

  ALTER TABLE "TEST"."JC_INFORMATION" ADD FOREIGN KEY ("JC_TYPE_ID")
	  REFERENCES "TEST"."DICT_JC_TYPE" ("ID") ENABLE;
 
  ALTER TABLE "TEST"."JC_INFORMATION" ADD FOREIGN KEY ("AREAID")
	  REFERENCES "TEST"."DICT_AREA" ("ID") ENABLE;
 
  ALTER TABLE "TEST"."JC_INFORMATION" ADD FOREIGN KEY ("USE_AREAID")
	  REFERENCES "TEST"."DICT_AREA" ("ID") ENABLE;
