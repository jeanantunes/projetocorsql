--------------------------------------------------------
--  Ref Constraints for Table TBOD_PLANO
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_PLANO" ADD CONSTRAINT "FK_TBOD_PLANO_TIPO" FOREIGN KEY ("CD_TIPO_PLANO")
	  REFERENCES "CORRET"."TBOD_TIPO_PLANO" ("CD_TIPO_PLANO") ENABLE;
