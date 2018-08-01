--------------------------------------------------------
--  DDL for Table TBOD_RESPONSAVEL_CONTRATUAL
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_RESPONSAVEL_CONTRATUAL" 
   (	"CD_RESPONSAVEL_CONTRATUAL" NUMBER(10,0), 
	"NOME" VARCHAR2(250 BYTE), 
	"CPF" VARCHAR2(13 BYTE), 
	"DATA_NASCIMENTO" DATE, 
	"EMAIL" VARCHAR2(50 BYTE), 
	"CELULAR" VARCHAR2(15 BYTE), 
	"SEXO" CHAR(1 BYTE), 
	"CD_ENDERECO" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
