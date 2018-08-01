--------------------------------------------------------
--  Constraints for Table TBOD_TIPO_DOCUMENTO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_TIPO_DOCUMENTO" ADD CONSTRAINT "PK_TBOD_TIPO_DOCUMENTO" PRIMARY KEY ("CD_TIPO_DOCUMENTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "CORRET_DADOS"  ENABLE;
  ALTER TABLE "CORRET"."TBOD_TIPO_DOCUMENTO" MODIFY ("DESCRICAO" NOT NULL ENABLE);
  ALTER TABLE "CORRET"."TBOD_TIPO_DOCUMENTO" MODIFY ("CD_TIPO_DOCUMENTO" NOT NULL ENABLE);
