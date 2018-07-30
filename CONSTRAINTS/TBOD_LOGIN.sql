--------------------------------------------------------
--  Constraints for Table TBOD_LOGIN
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_LOGIN" ADD CONSTRAINT "PK_TBOD_LOGIN" PRIMARY KEY ("CD_LOGIN")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE;
  ALTER TABLE "CORRET"."TBOD_LOGIN" MODIFY ("SENHA" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_LOGIN" MODIFY ("CD_TIPO_LOGIN" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_LOGIN" MODIFY ("CD_LOGIN" NOT NULL ENABLE);
