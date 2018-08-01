--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_ORG_PAGADORA
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_ORG_PAGADORA" ADD CONSTRAINT "R_61" FOREIGN KEY ("CD_PARCEIRO")
	  REFERENCES "CORRET"."TBOD_COR_CORRETORA" ("CD_PARCEIRO") ENABLE NOVALIDATE;
