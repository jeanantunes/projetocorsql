--------------------------------------------------------
--  DDL for Table TBOD_ENDERECO
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_ENDERECO" 
   (	"CD_ENDERECO" NUMBER(10,0), 
	"LOGRADOURO" VARCHAR2(150 BYTE), 
	"CEP" VARCHAR2(15 BYTE), 
	"CIDADE" VARCHAR2(150 BYTE), 
	"COMPLEMENTO" VARCHAR2(100 BYTE), 
	"BAIRRO" VARCHAR2(150 BYTE), 
	"UF" VARCHAR2(2 BYTE), 
	"CD_TIPO_ENDERECO" NUMBER(10,0), 
	"NUMERO" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
