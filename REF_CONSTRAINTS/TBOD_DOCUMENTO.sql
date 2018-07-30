--------------------------------------------------------
--  Ref Constraints for Table TBOD_DOCUMENTO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_DOCUMENTO" ADD CONSTRAINT "FK_TBOD_DOC_TIPO_DOC" FOREIGN KEY ("CD_TIPO_DOCUMENTO")
	  REFERENCES "CORRET"."TBOD_TIPO_DOCUMENTO" ("CD_TIPO_DOCUMENTO") ENABLE;
