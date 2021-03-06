--------------------------------------------------------
--  Constraints for Table TBOD_COR_RAMO_ATIVIDADE
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_RAMO_ATIVIDADE" MODIFY ("DS_RAMO_ATIVIDADE" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_RAMO_ATIVIDADE" MODIFY ("CD_RAMO_ATIVIDADE" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_RAMO_ATIVIDADE" ADD CONSTRAINT "XPKRAMO_ATIVIDADE" PRIMARY KEY ("CD_RAMO_ATIVIDADE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;
