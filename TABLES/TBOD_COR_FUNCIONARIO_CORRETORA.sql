--------------------------------------------------------
--  DDL for Table TBOD_COR_FUNCIONARIO_CORRETORA
--------------------------------------------------------

  CREATE TABLE "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" 
   (	"NM_FUNCIONARIO_CORRETORA" VARCHAR2(200 BYTE), 
	"NR_CPF" NUMBER(11,0), 
	"DT_CADASTRO" DATE, 
	"CD_PARCEIRO" NUMBER(10,0), 
	"CD_PERFIL_ACESSO" NUMBER(9,0), 
	"DS_EMAIL" VARCHAR2(100 BYTE), 
	"CD_SITUACAO_FUNCIONARIO_CORRET" NUMBER(2,0), 
	"DT_ULTIMA_ATUALIZACAO" DATE, 
	"CD_USUARIO_ULTIMA_ATUALIZACAO" VARCHAR2(20 BYTE), 
	"DT_EXCLUSAO" DATE, 
	"TYPE_CODE" CHAR(3 BYTE), 
	"USER_CODE" NUMBER, 
	"TBOD_COR_CORRETORA" RAW(255)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS" ;
  GRANT DELETE ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "USUCORRET";
  GRANT DELETE ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "R_USUCORRET";
  GRANT INSERT ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "R_USUCORRET";
  GRANT UPDATE ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "R_USUCORRET";
  GRANT SELECT ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "CD_PORTALDOCORRETOR";
  GRANT INSERT ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "CD_PORTALDOCORRETOR";
  GRANT DELETE ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "CD_PORTALDOCORRETOR";
  GRANT UPDATE ON "CORRET"."TBOD_COR_FUNCIONARIO_CORRETORA" TO "CD_PORTALDOCORRETOR";
