--------------------------------------------------------
--  Constraints for Table TBOD_COR_ENDERECO_CORRETORA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_ENDERECO_CORRETORA" MODIFY ("CD_PARCEIRO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_ENDERECO_CORRETORA" MODIFY ("CD_ENDERECO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_ENDERECO_CORRETORA" ADD CONSTRAINT "XPKENDERECO_CORRETORA" PRIMARY KEY ("CD_ENDERECO", "CD_PARCEIRO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;
