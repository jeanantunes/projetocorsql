--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_CONTATO_EQP_PROSPECT
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_CONTATO_EQP_PROSPECT" ADD CONSTRAINT "R_41" FOREIGN KEY ("CD_PROSPECT_PARCEIRO")
	  REFERENCES "CORRET"."TBOD_COR_PROSPECT_PARCEIRO" ("CD_PROSPECT_PARCEIRO") ON DELETE SET NULL ENABLE NOVALIDATE;
