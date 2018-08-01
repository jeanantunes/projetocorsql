--------------------------------------------------------
--  Ref Constraints for Table TBOD_PLANO_VIDA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_PLANO_VIDA" ADD CONSTRAINT "FK_TBOD_PLANO_VIDA_VIDA" FOREIGN KEY ("CD_VIDA")
	  REFERENCES "CORRET"."TBOD_VIDA" ("CD_VIDA") ENABLE;
