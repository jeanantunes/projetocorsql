--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_CONTATO_CORRETORA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_CONTATO_CORRETORA" ADD CONSTRAINT "R_49" FOREIGN KEY ("CD_PARCEIRO")
	  REFERENCES "CORRET"."TBOD_COR_CORRETORA" ("CD_PARCEIRO") ON DELETE SET NULL ENABLE NOVALIDATE;
