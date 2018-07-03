--------------------------------------------------------
--  Constraints for Table TBOD_COR_TELEFONE
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_TELEFONE" MODIFY ("NR_TELEFONE" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_TELEFONE" MODIFY ("NR_DDD" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_TELEFONE" MODIFY ("CD_TELEFONE" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_TELEFONE" ADD CONSTRAINT "XPKTELEFONE" PRIMARY KEY ("CD_TELEFONE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;