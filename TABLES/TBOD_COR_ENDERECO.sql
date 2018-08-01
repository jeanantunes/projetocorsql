--------------------------------------------------------
--  DDL for Table TBOD_COR_ENDERECO
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_COR_ENDERECO" 
   (	"CD_ENDERECO" NUMBER(10,0), 
	"DS_LOGRADOURO" VARCHAR2(200 BYTE), 
	"NR_LOGRADOURO" VARCHAR2(10 BYTE), 
	"CD_CEP" NUMBER(8,0), 
	"NM_BAIRRO" VARCHAR2(90 BYTE), 
	"NM_CIDADE" VARCHAR2(90 BYTE), 
	"DS_COMPLEMENTO" VARCHAR2(90 BYTE), 
	"SG_UF" CHAR(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
  GRANT DELETE ON "CORRET"."TBOD_COR_ENDERECO" TO "USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_ENDERECO" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_ENDERECO" TO "USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_ENDERECO" TO "USUCORRET";
  GRANT DELETE ON "CORRET"."TBOD_COR_ENDERECO" TO "R_USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_ENDERECO" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_ENDERECO" TO "R_USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_ENDERECO" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_ENDERECO" TO "CD_PORTALDOCORRETOR";
  GRANT INSERT ON "CORRET"."TBOD_COR_ENDERECO" TO "CD_PORTALDOCORRETOR";
  GRANT DELETE ON "CORRET"."TBOD_COR_ENDERECO" TO "CD_PORTALDOCORRETOR";
  GRANT UPDATE ON "CORRET"."TBOD_COR_ENDERECO" TO "CD_PORTALDOCORRETOR";
