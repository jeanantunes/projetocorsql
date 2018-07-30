--------------------------------------------------------
--  Constraints for Table TBOD_COR_FAIXA_FAT_ANUAL
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_FAIXA_FAT_ANUAL" MODIFY ("DS_FAIXA_FATURAMENTO_ANUAL" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_FAIXA_FAT_ANUAL" MODIFY ("CD_FAIXA_FATURAMENTO_ANUAL" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_FAIXA_FAT_ANUAL" ADD CONSTRAINT "XPKFAIXA_FATURAMENTO_ANUAL" PRIMARY KEY ("CD_FAIXA_FATURAMENTO_ANUAL")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;
