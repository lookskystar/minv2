--------------------------------------------------------
--  文件已创建 - 星期二-二月-02-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PJ_S_D_INFO_RECORD_SP
--------------------------------------------------------

  CREATE TABLE "TEST"."PJ_S_D_INFO_RECORD_SP" 
   (	"ID" NUMBER, 
	"PJ_S_D_INFO_RECORD_ID" NUMBER, 
	"STORE_USERS_ID" NUMBER, 
	"PROTEAM_USERS_ID" NUMBER, 
	"REMARK" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_SP"."ID" IS '主键<序列自增>';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_SP"."PJ_S_D_INFO_RECORD_ID" IS '动态配件出入库记录ID';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_SP"."STORE_USERS_ID" IS '仓库人员ID';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_SP"."PROTEAM_USERS_ID" IS '班组人员ID';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_SP"."REMARK" IS '备注';
 
   COMMENT ON TABLE "TEST"."PJ_S_D_INFO_RECORD_SP"  IS '配件仓库动态信息记录表-子表，配件移库[主仓库和班组仓库]';
REM INSERTING into TEST.PJ_S_D_INFO_RECORD_SP
SET DEFINE OFF;
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (218,348,87,84,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (221,355,87,84,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (220,353,84,84,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (224,364,87,84,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (225,365,87,84,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (238,418,null,70,'配件下车检修入库-记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (222,358,87,84,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (216,346,87,74,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (234,402,null,null,'配件下车检修入库-记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (217,347,87,84,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (236,412,null,null,'配件下车检修入库-记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (223,363,84,84,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (244,437,null,null,'配件下车检修入库-记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (242,431,null,70,'配件下车检修入库-记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (243,433,null,70,'配件下车检修入库-记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (219,352,84,84,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (226,366,84,74,'关于主仓库和班组仓库的子记录');
Insert into TEST.PJ_S_D_INFO_RECORD_SP (ID,PJ_S_D_INFO_RECORD_ID,STORE_USERS_ID,PROTEAM_USERS_ID,REMARK) values (240,426,null,70,'配件下车检修入库-记录');
--------------------------------------------------------
--  DDL for Index SYS_C0012196
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C0012196" ON "TEST"."PJ_S_D_INFO_RECORD_SP" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PJ_S_D_INFO_RECORD_SP
--------------------------------------------------------

  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_SP" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PJ_S_D_INFO_RECORD_SP
--------------------------------------------------------

  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_SP" ADD CONSTRAINT "PSDIRSPSDIRS_FOR" FOREIGN KEY ("PJ_S_D_INFO_RECORD_ID")
	  REFERENCES "TEST"."PJ_S_D_INFO_RECORD" ("ID") ENABLE;
 
  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_SP" ADD CONSTRAINT "PSDIRSUP_FOR_PROTEAM" FOREIGN KEY ("PROTEAM_USERS_ID")
	  REFERENCES "TEST"."USERS_PRIVS" ("ID") ENABLE;
 
  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_SP" ADD CONSTRAINT "PSDIRSUP_FOR_STORE" FOREIGN KEY ("STORE_USERS_ID")
	  REFERENCES "TEST"."USERS_PRIVS" ("ID") ENABLE;
