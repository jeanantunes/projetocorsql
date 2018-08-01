--------------------------------------------------------
--  Constraints for Table TBOD_DOCUMENTO_ASSOCIADO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_DOCUMENTO_ASSOCIADO" ADD CONSTRAINT "PK_TBOD_DOCUMENTO_ASSOCIADO" PRIMARY KEY ("CD_DOCUMENTO_ASSOCIADO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "CORRET_DADOS"  ENABLE;
  ALTER TABLE "CORRET"."TBOD_DOCUMENTO_ASSOCIADO" MODIFY ("CD_DOCUMENTO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_DOCUMENTO_ASSOCIADO" MODIFY ("CD_ASSOCIADO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_DOCUMENTO_ASSOCIADO" MODIFY ("CD_ORIGEM_ASSOCIADO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_DOCUMENTO_ASSOCIADO" MODIFY ("CD_DOCUMENTO_ASSOCIADO" NOT NULL ENABLE);
