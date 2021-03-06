--------------------------------------------------------
--  DDL for Table TBOD_COR_TELEFONE
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_COR_TELEFONE" 
   (	"CD_TELEFONE" NUMBER(10,0), 
	"NR_DDD" NUMBER(2,0), 
	"NR_TELEFONE" NUMBER(10,0), 
	"CD_TIPO_TELEFONE" NUMBER(2,0), 
	"NR_RAMAL" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
  GRANT DELETE ON "CORRET"."TBOD_COR_TELEFONE" TO "USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_TELEFONE" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_TELEFONE" TO "USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_TELEFONE" TO "USUCORRET";
  GRANT DELETE ON "CORRET"."TBOD_COR_TELEFONE" TO "R_USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_TELEFONE" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_TELEFONE" TO "R_USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_TELEFONE" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_TELEFONE" TO "CD_PORTALDOCORRETOR";
  GRANT INSERT ON "CORRET"."TBOD_COR_TELEFONE" TO "CD_PORTALDOCORRETOR";
  GRANT DELETE ON "CORRET"."TBOD_COR_TELEFONE" TO "CD_PORTALDOCORRETOR";
  GRANT UPDATE ON "CORRET"."TBOD_COR_TELEFONE" TO "CD_PORTALDOCORRETOR";
