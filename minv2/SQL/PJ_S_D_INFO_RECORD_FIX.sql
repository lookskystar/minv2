--------------------------------------------------------
--  文件已创建 - 星期二-二月-02-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table PJ_S_D_INFO_RECORD_FIX
--------------------------------------------------------

  CREATE TABLE "TEST"."PJ_S_D_INFO_RECORD_FIX" 
   (	"ID" NUMBER, 
	"PJ_S_D_INFO_RECORD_ID" NUMBER, 
	"JC_PLAN_DATE_ID" NUMBER, 
	"PJ_FIX_ITEM_ID" NUMBER, 
	"PROTEAM_ID" NUMBER, 
	"FIX_CHECK_NODE" NUMBER, 
	"FIX_USERS_IDS" VARCHAR2(1000 BYTE), 
	"FIX_TIME" TIMESTAMP (6), 
	"FIX_CONDITION" VARCHAR2(1000 BYTE), 
	"FIX_ITEM_STATUS" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."ID" IS '主键<序列自增>';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."PJ_S_D_INFO_RECORD_ID" IS '配件仓库动态信息记录表，出库入库记录主表ID';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."JC_PLAN_DATE_ID" IS '机车检修日计划表ID（通过机车检修日计划，确认该配件是从那台机车下车的';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."PJ_FIX_ITEM_ID" IS '指定该条配件检修记录是那个检修项目的';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."PROTEAM_ID" IS '检修班组ID，指定由那个班组检修（该班组必须是该条记录关联的配件静态表指定的班组';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."FIX_CHECK_NODE" IS '检修卡控节点（ 0、新建；1、已派工；2 、 检修人签认； 3、工长验收；4、交车工长验收；5、技术员验收；6、质检员验收；7、验收员验收（完工））；顺序执行，当工长验收后，便不可修改该条记录了';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."FIX_USERS_IDS" IS '检修人ID字符串组合，可以表示一个或多个检修人，存储方式：1,2,4,7,6；逗号隔开的ID号不能重复。表示多个工人维修一个配件；该检修人ID必须是指定班组内的人员';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."FIX_TIME" IS '检修人签认时间（如果有多位检修人，只要其中一位检修人签认时间，表示该配件确认检修完';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."FIX_CONDITION" IS '检修情况（当这条记录有了后，检修情况才能修改，如果有两位检修工人，他们都可以修改检修情况';
 
   COMMENT ON COLUMN "TEST"."PJ_S_D_INFO_RECORD_FIX"."FIX_ITEM_STATUS" IS '检修记录项目状态（0、禁用；1、启用）';
 
   COMMENT ON TABLE "TEST"."PJ_S_D_INFO_RECORD_FIX"  IS '配件仓库动态信息记录表-子表-配件检修记录表，机车配件下车入班组库检修/(入库班组库即为检修状态)';
REM INSERTING into TEST.PJ_S_D_INFO_RECORD_FIX
SET DEFINE OFF;
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (201,521,null,9,null,2,null,null,null,1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (202,521,null,3,null,1,null,null,null,1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (203,521,null,8,null,2,null,to_timestamp('13-11月-15 05.40.08.525000000 下午','DD-MON-RR HH.MI.SS.FF AM'),null,1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (204,521,null,2,null,2,null,null,null,1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (205,521,null,1,null,2,null,to_timestamp('15-11月-15 11.01.30.304000000 上午','DD-MON-RR HH.MI.SS.FF AM'),null,1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (206,521,null,4,null,1,null,null,null,1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (181,501,null,2,null,2,',88',to_timestamp('11-11月-15 03.12.53.693000000 下午','DD-MON-RR HH.MI.SS.FF AM'),'良好',1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (182,501,null,8,null,2,',88',to_timestamp('11-11月-15 03.12.53.693000000 下午','DD-MON-RR HH.MI.SS.FF AM'),'良好',1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (183,501,null,9,null,2,',88,88,88',to_timestamp('11-11月-15 03.12.53.693000000 下午','DD-MON-RR HH.MI.SS.FF AM'),'良好',1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (184,501,null,1,null,2,',88',to_timestamp('11-11月-15 03.12.53.693000000 下午','DD-MON-RR HH.MI.SS.FF AM'),'良好',1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (185,501,null,3,null,2,',88,88,88',to_timestamp('11-11月-15 03.54.02.619000000 下午','DD-MON-RR HH.MI.SS.FF AM'),'121',1);
Insert into TEST.PJ_S_D_INFO_RECORD_FIX (ID,PJ_S_D_INFO_RECORD_ID,JC_PLAN_DATE_ID,PJ_FIX_ITEM_ID,PROTEAM_ID,FIX_CHECK_NODE,FIX_USERS_IDS,FIX_TIME,FIX_CONDITION,FIX_ITEM_STATUS) values (186,501,null,4,null,2,',88,88',to_timestamp('11-11月-15 03.40.37.042000000 下午','DD-MON-RR HH.MI.SS.FF AM'),'22',1);
--------------------------------------------------------
--  DDL for Index SYS_C0012202
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C0012202" ON "TEST"."PJ_S_D_INFO_RECORD_FIX" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table PJ_S_D_INFO_RECORD_FIX
--------------------------------------------------------

  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_FIX" ADD CONSTRAINT "CK_FIX_ITEM_STATUS" CHECK (FIX_ITEM_STATUS IN (0,1)) ENABLE;
 
  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_FIX" ADD CONSTRAINT "PSDIRF_CK_NODE" CHECK (FIX_CHECK_NODE in(0,1,2,3,4,5,6,7)) ENABLE;
 
  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_FIX" ADD PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PJ_S_D_INFO_RECORD_FIX
--------------------------------------------------------

  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_FIX" ADD CONSTRAINT "PSDIRFDP_FOR" FOREIGN KEY ("PROTEAM_ID")
	  REFERENCES "TEST"."DICT_PROTEAM" ("ID") ENABLE;
 
  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_FIX" ADD CONSTRAINT "PSDIRFPFI_FOR" FOREIGN KEY ("PJ_FIX_ITEM_ID")
	  REFERENCES "TEST"."PJ_FIX_ITEM" ("ID") ENABLE;
 
  ALTER TABLE "TEST"."PJ_S_D_INFO_RECORD_FIX" ADD CONSTRAINT "PSDIRFPSDIR_FOR" FOREIGN KEY ("PJ_S_D_INFO_RECORD_ID")
	  REFERENCES "TEST"."PJ_S_D_INFO_RECORD" ("ID") ON DELETE CASCADE ENABLE;
