--------------------------------------------------------
--  DDL for Table TBOD_COR_REPRESENTANTE_LEGAL
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_COR_REPRESENTANTE_LEGAL" 
   (	"ID_REPRESENTANTE" NUMBER(10,0), 
	"COD_TIPO_PESSOA" CHAR(1 BYTE), 
	"COD_DEPARTAMENTO" VARCHAR2(2 BYTE), 
	"CARGO" VARCHAR2(100 BYTE), 
	"NOME_REPRESENTANTE" VARCHAR2(200 BYTE), 
	"CPF" VARCHAR2(14 BYTE), 
	"DATA_NASC" DATE, 
	"CELULAR" VARCHAR2(14 BYTE), 
	"EMAIL" VARCHAR2(250 BYTE), 
	"RAZAO" VARCHAR2(200 BYTE), 
	"CNAE" VARCHAR2(20 BYTE), 
	"OPTANTE_SIMPLES" CHAR(1 BYTE), 
	"DATA_ABERTURA" DATE, 
	"STATUS_CNPJ" CHAR(1 BYTE), 
	"ID" NUMBER(19,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "CORRET_DADOS" ;