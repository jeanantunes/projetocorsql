--------------------------------------------------------
--  DDL for Table TBOD_LOG_EMAIL_BVPME
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_LOG_EMAIL_BVPME" 
   (	"ID" NUMBER, 
	"DT_ENVIO" DATE, 
	"EMAIL" VARCHAR2(100 BYTE), 
	"CD_EMPRESA" NUMBER(10,0), 
	"RAZAO_SOCIAL" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
