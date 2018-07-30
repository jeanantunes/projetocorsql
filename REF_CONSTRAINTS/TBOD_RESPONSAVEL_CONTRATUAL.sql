--------------------------------------------------------
--  Ref Constraints for Table TBOD_RESPONSAVEL_CONTRATUAL
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_RESPONSAVEL_CONTRATUAL" ADD CONSTRAINT "FK_TBOD_RESP_CONTR_ENDERECO" FOREIGN KEY ("CD_ENDERECO")
	  REFERENCES "CORRET"."TBOD_ENDERECO" ("CD_ENDERECO") ENABLE;
