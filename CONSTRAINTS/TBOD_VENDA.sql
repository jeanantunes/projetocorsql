--------------------------------------------------------
--  Constraints for Table TBOD_VENDA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_VENDA" ADD CONSTRAINT "PK_TBOD_VENDA" PRIMARY KEY ("CD_VENDA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE;
  ALTER TABLE "CORRET"."TBOD_VENDA" MODIFY ("FATURA_VENCIMENTO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_VENDA" MODIFY ("DT_VENDA" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_VENDA" MODIFY ("CD_PLANO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_VENDA" MODIFY ("CD_VENDA" NOT NULL ENABLE);
