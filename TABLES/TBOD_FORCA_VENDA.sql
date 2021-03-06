--------------------------------------------------------
--  DDL for Table TBOD_FORCA_VENDA
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_FORCA_VENDA" 
   (	"CD_FORCA_VENDA" NUMBER(10,0), 
	"NOME" VARCHAR2(255 BYTE), 
	"CELULAR" VARCHAR2(15 BYTE), 
	"EMAIL" VARCHAR2(80 BYTE), 
	"CD_CORRETORA" NUMBER(10,0), 
	"CD_STATUS_FORCA_VENDAS" NUMBER(10,0), 
	"CPF" VARCHAR2(13 BYTE), 
	"ATIVO" CHAR(1 BYTE), 
	"DATA_NASCIMENTO" DATE, 
	"CARGO" VARCHAR2(50 BYTE), 
	"DEPARTAMENTO" VARCHAR2(50 BYTE), 
	"CD_LOGIN" NUMBER(10,0), 
	"CD_DCSS_USUARIO" NUMBER(15,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
