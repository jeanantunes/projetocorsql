--------------------------------------------------------
--  DDL for Table TBOD_VENDA_VIDA
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_VENDA_VIDA" 
   (	"CD_VENDA_VIDA" NUMBER(10,0), 
	"CD_VENDA" NUMBER(10,0), 
	"CD_VIDA" NUMBER(10,0), 
	"CD_PLANO" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
