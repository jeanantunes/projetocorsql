--------------------------------------------------------
--  Constraints for Table TBOD_COR_SIT_PROSPECT_PARC
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_SIT_PROSPECT_PARC" MODIFY ("DS_SITUACAO_PROSPECT_PARCEIRO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_SIT_PROSPECT_PARC" MODIFY ("CD_SITUACAO_PROSPECT_PARCEIRO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_SIT_PROSPECT_PARC" ADD CONSTRAINT "XPKSITUACAO_PROSPECT_PARCEIRO" PRIMARY KEY ("CD_SITUACAO_PROSPECT_PARCEIRO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;
