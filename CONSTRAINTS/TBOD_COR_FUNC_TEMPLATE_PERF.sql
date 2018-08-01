--------------------------------------------------------
--  Constraints for Table TBOD_COR_FUNC_TEMPLATE_PERF
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_FUNC_TEMPLATE_PERF" MODIFY ("CD_FUNCIONALIDADE_CORRETORA" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_FUNC_TEMPLATE_PERF" MODIFY ("CD_TEMPLATE_PERFIL_ACESSO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_FUNC_TEMPLATE_PERF" ADD CONSTRAINT "XPKFUNCIONALIDADE_X_TEMPLATE_P" PRIMARY KEY ("CD_TEMPLATE_PERFIL_ACESSO", "CD_FUNCIONALIDADE_CORRETORA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;
