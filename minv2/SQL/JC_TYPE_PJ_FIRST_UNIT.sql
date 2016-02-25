--------------------------------------------------------
--  文件已创建 - 星期二-二月-02-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table JC_TYPE_PJ_FIRST_UNIT
--------------------------------------------------------

  CREATE TABLE "TEST"."JC_TYPE_PJ_FIRST_UNIT" 
   (	"ID" NUMBER, 
	"JC_TYPE_ID" NUMBER, 
	"PJ_FIRST_UNIT_ID" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "TEST"."JC_TYPE_PJ_FIRST_UNIT"."ID" IS '主键<序列自增>';
 
   COMMENT ON COLUMN "TEST"."JC_TYPE_PJ_FIRST_UNIT"."JC_TYPE_ID" IS 'DICT_JC_TYPE（机车型号表）-字段ID';
 
   COMMENT ON COLUMN "TEST"."JC_TYPE_PJ_FIRST_UNIT"."PJ_FIRST_UNIT_ID" IS 'DICT_PJ_FIRST_UNIT（大部件(专业)表）-字段ID';
 
   COMMENT ON TABLE "TEST"."JC_TYPE_PJ_FIRST_UNIT"  IS '机车型号-大部件（专业）中间表';
REM INSERTING into TEST.JC_TYPE_PJ_FIRST_UNIT
SET DEFINE OFF;
Insert into TEST.JC_TYPE_PJ_FIRST_UNIT (ID,JC_TYPE_ID,PJ_FIRST_UNIT_ID) values (44,1,21);
Insert into TEST.JC_TYPE_PJ_FIRST_UNIT (ID,JC_TYPE_ID,PJ_FIRST_UNIT_ID) values (11,1,6);
Insert into TEST.JC_TYPE_PJ_FIRST_UNIT (ID,JC_TYPE_ID,PJ_FIRST_UNIT_ID) values (12,1,5);
Insert into TEST.JC_TYPE_PJ_FIRST_UNIT (ID,JC_TYPE_ID,PJ_FIRST_UNIT_ID) values (13,3,5);
Insert into TEST.JC_TYPE_PJ_FIRST_UNIT (ID,JC_TYPE_ID,PJ_FIRST_UNIT_ID) values (14,2,5);
--------------------------------------------------------
--  DDL for Index SYS_C0012195
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C0012195" ON "TEST"."JC_TYPE_PJ_FIRST_UNIT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table JC_TYPE_PJ_FIRST_UNIT
--------------------------------------------------------

  ALTER TABLE "TEST"."JC_TYPE_PJ_FIRST_UNIT" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table JC_TYPE_PJ_FIRST_UNIT
--------------------------------------------------------

  ALTER TABLE "TEST"."JC_TYPE_PJ_FIRST_UNIT" ADD CONSTRAINT "JTPFUDJT_FOR" FOREIGN KEY ("JC_TYPE_ID")
	  REFERENCES "TEST"."DICT_JC_TYPE" ("ID") ENABLE;
 
  ALTER TABLE "TEST"."JC_TYPE_PJ_FIRST_UNIT" ADD CONSTRAINT "JTPFUDPFU_FOR" FOREIGN KEY ("PJ_FIRST_UNIT_ID")
	  REFERENCES "TEST"."DICT_PJ_FIRST_UNIT" ("ID") ENABLE;
