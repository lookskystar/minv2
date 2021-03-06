--------------------------------------------------------
--  文件已创建 - 星期二-二月-02-2016   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ROLE_PRIVS
--------------------------------------------------------

  CREATE TABLE "TEST"."ROLE_PRIVS" 
   (	"ID" NUMBER, 
	"ROLE_NAME" VARCHAR2(225 BYTE), 
	"PY" VARCHAR2(225 BYTE), 
	"REMARK" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
 

   COMMENT ON COLUMN "TEST"."ROLE_PRIVS"."ID" IS '主键';
 
   COMMENT ON COLUMN "TEST"."ROLE_PRIVS"."ROLE_NAME" IS '角色名称';
 
   COMMENT ON COLUMN "TEST"."ROLE_PRIVS"."PY" IS '拼音';
 
   COMMENT ON COLUMN "TEST"."ROLE_PRIVS"."REMARK" IS '备注';
 
   COMMENT ON TABLE "TEST"."ROLE_PRIVS"  IS '角色表';
REM INSERTING into TEST.ROLE_PRIVS
SET DEFINE OFF;
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (39,'周云韬','dfa','您是否水电费水电费');
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (42,'验收员','ysy','我是验收员vfgf');
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (59,'中文','CVSd','1.当神已无能为力，那便是魔渡众生
　　3. 那是不同高度上的两片云---你在底下看上去它们重合了，事实上却永远不会相遇。
　　4. 纵然是七海连天，也会干涸枯竭
　　纵然是云荒万里，也会分崩离析
　　这世间的种种生死离别，来了又去
　　可是 所爱的人啊 只要我曾真的爱过你 那我就永远不会忘记
　　但 请你原谅 我还是要不动声色地继续走下去');
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (54,'测试','cs','测试嘘嘘dfzdzdzc');
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (43,'技术员','JSY','KHFKSKDHDF是的发送到');
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (55,'测试1','css','测试1xxvxcvsdf');
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (38,'工长','gz','我是可爱的工长');
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (40,'质检员',' zjy','我是可爱的质检员');
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (45,'科长','KZ','窗前明月光，疑是地上霜，举头望明月，低头思故乡');
Insert into TEST.ROLE_PRIVS (ID,ROLE_NAME,PY,REMARK) values (37,'交车工长','jchz','我是可爱的交车工长');
--------------------------------------------------------
--  DDL for Index PK_ROLEID
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."PK_ROLEID" ON "TEST"."ROLE_PRIVS" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SYS_C0012198
--------------------------------------------------------

  CREATE UNIQUE INDEX "TEST"."SYS_C0012198" ON "TEST"."ROLE_PRIVS" ("ROLE_NAME") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table ROLE_PRIVS
--------------------------------------------------------

  ALTER TABLE "TEST"."ROLE_PRIVS" ADD CONSTRAINT "PK_ROLEID" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
 
  ALTER TABLE "TEST"."ROLE_PRIVS" ADD UNIQUE ("ROLE_NAME")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;

