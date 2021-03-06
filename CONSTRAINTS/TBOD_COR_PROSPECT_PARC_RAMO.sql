--------------------------------------------------------
--  Constraints for Table TBOD_COR_PROSPECT_PARC_RAMO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_PROSPECT_PARC_RAMO" MODIFY ("CD_PROSPECT_PARCEIRO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_PROSPECT_PARC_RAMO" MODIFY ("CD_RAMO_ATIVIDADE" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_PROSPECT_PARC_RAMO" ADD CONSTRAINT "XPKPROSPECT_PARCEIRO_X_RAMO_AT" PRIMARY KEY ("CD_PROSPECT_PARCEIRO", "CD_RAMO_ATIVIDADE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;
