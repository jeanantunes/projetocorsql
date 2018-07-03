--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_PERF_ACESSO_CORRETORA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_PERF_ACESSO_CORRETORA" ADD CONSTRAINT "R_64" FOREIGN KEY ("CD_PARCEIRO")
	  REFERENCES "CORRET"."TBOD_COR_CORRETORA" ("CD_PARCEIRO") ON DELETE SET NULL ENABLE NOVALIDATE;
