--------------------------------------------------------
--  Constraints for Table TBOD_COR_GRAU_RELACIONAMENTO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_GRAU_RELACIONAMENTO" MODIFY ("DS_GRAU_RELACIONAMENTO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_GRAU_RELACIONAMENTO" MODIFY ("CD_GRAU_RELACIONAMENTO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_GRAU_RELACIONAMENTO" ADD CONSTRAINT "XPKGRAU_RELACIONAMENTO" PRIMARY KEY ("CD_GRAU_RELACIONAMENTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;
