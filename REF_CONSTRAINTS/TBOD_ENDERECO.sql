--------------------------------------------------------
--  Ref Constraints for Table TBOD_ENDERECO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_ENDERECO" ADD CONSTRAINT "FK_TBOD_END_TIPO_END" FOREIGN KEY ("CD_TIPO_ENDERECO")
	  REFERENCES "CORRET"."TBOD_TIPO_ENDERECO" ("CD_TIPO_ENDERECO") ENABLE;
