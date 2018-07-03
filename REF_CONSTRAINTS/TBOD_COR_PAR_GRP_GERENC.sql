--------------------------------------------------------
--  Ref Constraints for Table TBOD_COR_PAR_GRP_GERENC
--------------------------------------------------------

  ALTER TABLE "CORRET"."TBOD_COR_PAR_GRP_GERENC" ADD CONSTRAINT "R_53" FOREIGN KEY ("CD_PARCEIRO")
	  REFERENCES "CORRET"."TBOD_COR_CORRETORA" ("CD_PARCEIRO") ENABLE NOVALIDATE;
  ALTER TABLE "CORRET"."TBOD_COR_PAR_GRP_GERENC" ADD CONSTRAINT "R_54" FOREIGN KEY ("CD_GRUPO_GERENCIAL")
	  REFERENCES "CORRET"."TBOD_COR_GRUPO_GERENCIAL" ("CD_GRUPO_GERENCIAL") ENABLE NOVALIDATE;