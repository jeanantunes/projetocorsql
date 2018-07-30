--------------------------------------------------------
--  Ref Constraints for Table TBOD_EMPRESA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_EMPRESA" ADD CONSTRAINT "FK_TBOD_EMPRESA_ENDERECO" FOREIGN KEY ("CD_ENDERECO")
	  REFERENCES "CORRET"."TBOD_ENDERECO" ("CD_ENDERECO") ENABLE;
