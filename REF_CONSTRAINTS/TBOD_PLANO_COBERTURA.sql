--------------------------------------------------------
--  Ref Constraints for Table TBOD_PLANO_COBERTURA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_PLANO_COBERTURA" ADD CONSTRAINT "FK_TBOD_PLANO_COBERTURA_PLANO" FOREIGN KEY ("CD_PLANO")
	  REFERENCES "CORRET"."TBOD_PLANO" ("CD_PLANO") ENABLE;
  ALTER TABLE "CORRET"."TBOD_PLANO_COBERTURA" ADD CONSTRAINT "FK_TBOD_PLANO_COB_COBERTURA" FOREIGN KEY ("CD_COBERTURA")
	  REFERENCES "CORRET"."TBOD_COBERTURA" ("CD_COBERTURA") ENABLE;
