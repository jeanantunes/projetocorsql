--------------------------------------------------------
--  Constraints for Table TBOD_COBERTURA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COBERTURA" ADD CONSTRAINT "PK_TBOD_COBERTURA" PRIMARY KEY ("CD_COBERTURA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "CORRET_DADOS"  ENABLE;
  ALTER TABLE "CORRET"."TBOD_COBERTURA" MODIFY ("DESCRICAO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_COBERTURA" MODIFY ("CD_COBERTURA" NOT NULL ENABLE);