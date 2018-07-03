--------------------------------------------------------
--  DDL for Table TBOD_BANCO_CONTA
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_BANCO_CONTA" 
   (	"CD_BANCO_CONTA" NUMBER(10,0), 
	"AGENCIA" VARCHAR2(10 BYTE), 
	"CONTA" VARCHAR2(10 BYTE), 
	"CODIGO_BANCO" NUMBER(10,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "CORRET_DADOS" ;