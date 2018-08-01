--------------------------------------------------------
--  Ref Constraints for Table TBOD_DOCUMENTO_ASSOCIADO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_DOCUMENTO_ASSOCIADO" ADD CONSTRAINT "FK_TBOD_DOC_ASSOCIADO_DOC" FOREIGN KEY ("CD_DOCUMENTO")
	  REFERENCES "CORRET"."TBOD_DOCUMENTO" ("CD_DOCUMENTO") ENABLE;
  ALTER TABLE "CORRET"."TBOD_DOCUMENTO_ASSOCIADO" ADD CONSTRAINT "FK_TBOD_DOC_ASSOCIADO_ORG" FOREIGN KEY ("CD_ORIGEM_ASSOCIADO")
	  REFERENCES "CORRET"."TBOD_ORIGEM_ASSOCIADO" ("CD_ORIGEM_ASSOCIADO") ENABLE;
  ALTER TABLE "CORRET"."TBOD_DOCUMENTO_ASSOCIADO" ADD CONSTRAINT "FK_TBOD_DOC_ASSOC_CORR" FOREIGN KEY ("CD_ASSOCIADO")
	  REFERENCES "CORRET"."TBOD_CORRETORA" ("CD_CORRETORA") ENABLE;
  ALTER TABLE "CORRET"."TBOD_DOCUMENTO_ASSOCIADO" ADD CONSTRAINT "FK_TBOD_DOC_ASSOC_VIDA" FOREIGN KEY ("CD_ASSOCIADO")
	  REFERENCES "CORRET"."TBOD_VIDA" ("CD_VIDA") ENABLE;
