--------------------------------------------------------
--  DDL for Table TBOD_COR_CTRL_FEC_INFORME
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_COR_CTRL_FEC_INFORME" 
   (	"NR_ANO" NUMBER(4,0), 
	"DT_INICIO" DATE, 
	"DT_TERMINO" DATE, 
	"CD_USUARIO" VARCHAR2(50 BYTE), 
	"DS_PROGRESSO" VARCHAR2(2048 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
  GRANT DELETE ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "USUCORRET";
  GRANT DELETE ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "R_USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "R_USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "CD_PORTALDOCORRETOR";
  GRANT INSERT ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "CD_PORTALDOCORRETOR";
  GRANT DELETE ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "CD_PORTALDOCORRETOR";
  GRANT UPDATE ON "CORRET"."TBOD_COR_CTRL_FEC_INFORME" TO "CD_PORTALDOCORRETOR";
