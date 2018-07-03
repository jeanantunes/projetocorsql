--------------------------------------------------------
--  Ref Constraints for Table TBOD_VIDA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_VIDA" ADD CONSTRAINT "FK_TBOD_VIDA_ENDERECO" FOREIGN KEY ("CD_ENDERECO")
	  REFERENCES "CORRET"."TBOD_ENDERECO" ("CD_ENDERECO") ENABLE;
  ALTER TABLE "CORRET"."TBOD_VIDA" ADD CONSTRAINT "FK_TBOD_VIDA_VIDA" FOREIGN KEY ("CD_TITULAR")
	  REFERENCES "CORRET"."TBOD_VIDA" ("CD_VIDA") ENABLE;
