--------------------------------------------------------
--  DDL for Table TBOD_COR_PROSPECT_PARC_BENEF
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" 
   (	"CD_PROSPECT_PARCEIRO" NUMBER(10,0), 
	"NUM_QUANTIDADE_VIDA" NUMBER(6,0), 
	"CD_BENEFICIO" NUMBER(3,0), 
	"TBOD_COR_BENEFICIO" RAW(255), 
	"TBOD_COR_PROSPECT_PARCEIRO" RAW(255)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
  GRANT DELETE ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "USUCORRET";
  GRANT DELETE ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "R_USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "R_USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "CD_PORTALDOCORRETOR";
  GRANT INSERT ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "CD_PORTALDOCORRETOR";
  GRANT DELETE ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "CD_PORTALDOCORRETOR";
  GRANT UPDATE ON "CORRET"."TBOD_COR_PROSPECT_PARC_BENEF" TO "CD_PORTALDOCORRETOR";
