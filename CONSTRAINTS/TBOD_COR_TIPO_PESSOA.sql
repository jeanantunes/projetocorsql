--------------------------------------------------------
--  Constraints for Table TBOD_COR_TIPO_PESSOA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_TIPO_PESSOA" MODIFY ("CD_TIPO_PESSOA" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COR_TIPO_PESSOA" ADD CONSTRAINT "XPKTIPO_PESSOA" PRIMARY KEY ("CD_TIPO_PESSOA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE NOVALIDATE;
