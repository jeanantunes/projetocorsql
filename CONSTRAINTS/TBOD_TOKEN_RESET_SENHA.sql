--------------------------------------------------------
--  Constraints for Table TBOD_TOKEN_RESET_SENHA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_TOKEN_RESET_SENHA" ADD CONSTRAINT "TBOD_TOKEN_RESET_SENHA_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "CORRET_DADOS"  ENABLE;
  ALTER TABLE "CORRET"."TBOD_TOKEN_RESET_SENHA" MODIFY ("EMAIL_DESTINATARIO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_TOKEN_RESET_SENHA" MODIFY ("TOKEN" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_TOKEN_RESET_SENHA" MODIFY ("ID" NOT NULL ENABLE);
