--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_TELEFONE
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_TELEFONE" ADD CONSTRAINT "R_12" FOREIGN KEY ("CD_TIPO_TELEFONE")
	  REFERENCES "CORRET"."TBOD_COR_TIPO_TELEFONE" ("CD_TIPO_TELEFONE") ON DELETE SET NULL ENABLE NOVALIDATE;
